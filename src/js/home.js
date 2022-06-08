import renderData from "./sql-renderer";
let groupValue = null;
let resultPane;
export default function init() {
  groupValue = document.body.getAttribute("data-group");
  let className = document.body.getAttribute("data-class") || "";
  let shopName = document.body.getAttribute("data-name") || "";
  //let dbName = document.body.getAttribute("data-dbname") || "";
  let html = `Online-Shop "${shopName}" (Gruppe: ${groupValue.replace(
    /[^0-9]/g,
    ""
  )}, Klasse: ${className})`;
  resultPane = document.getElementById("result");
  if (groupValue === "teacher") {
    html = `Online-Shop Inline-Skates (Gruppe: Teacher)`;
  }
  if (groupValue === "m291aL" || groupValue === "m291b") {
    html = groupValue;
  }

  document.getElementById("header").innerHTML = html;
  getData(document.body.getAttribute("data-group"));
  localStorage.setItem("group", groupValue);
}

function getData() {
  resultPane.classList.add("loader");
  document.getElementById("result").innerHTML = "";
  const METRICS_SQL = `SELECT table_name
FROM information_schema.tables
WHERE table_schema !="information_schema";`;
  const data = {
    group: groupValue,
    sql: METRICS_SQL,
    pw: localStorage.getItem("pw"),
  };

  fetch("/sql", {
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json",
    },
    method: "POST",
    body: JSON.stringify(data),
  })
    .then((res) => {
      return res.json();
    })
    .then((result) => {
      if (result[1]) {
        const tablesCount = result[1].length;
        if (tablesCount < 1) {
          resultPane.classList.remove("loader");
          resultPane.innerHTML = "Keine Tabellen vorhanden.";
        }
        result[1].forEach((res, index) => {
          data.sql = `SELECT * FROM ${res.table_name}`;

          fetch("/sql", {
            headers: {
              Accept: "application/json",
              "Content-Type": "application/json",
            },
            method: "POST",
            body: JSON.stringify(data),
          })
            .then((res) => {
              return res.json();
            })
            .then((result) => {
              renderData(result, data.sql, resultPane, {
                nohtml: true,
                title: "Tabelle " + res.table_name,
              });
              if (index === tablesCount - 1) {
                resultPane.classList.remove("loader");
              }
            });
        });
      }
    })
    .catch((res) => {
      console.error(res);
    });
}
