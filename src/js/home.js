import renderData from "./sql-renderer";
let groupValue = null;
let resultPane;
export default function init() {
  groupValue = document.body.getAttribute("data-group");
  let className = document.body.getAttribute("data-class") || "";
  let shopName = document.body.getAttribute("data-name") || "";
  let dbName = document.body.getAttribute("data-dbname") || "";
  let html = `Online-Shop "${shopName}" (Gruppe: ${groupValue.replace(
    /[^0-9]/g,
    ""
  )}, Klasse: ${className})`;
  resultPane = document.getElementById("result");
  document.getElementById("dbname").innerHTML = dbName;
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
        result[1].map((res) => {
          console.log("res", res.table_name);
          data.sql = `SELECT * FROM ${res.table_name}`;
          console.log(" data.sql", data.sql);
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
            });
        });
      }
      console.log(result);
    })
    .catch((res) => {
      console.error(res);
    });
}

/*
function renderData(data) {
  //console.log("render data", data)
  //console.log(data, " Kategorien, Kategorien, Kategorien,")
  if (data && data[1]) {
    data[1].forEach((d) => {
      const a = document.createElement('a');
      const linkText = document.createTextNode(d.Name);
      a.appendChild(linkText);
      a.title = d.Name;
      let id = d.ID ? d.ID : d.HauptkategorienID
      id = id ? id : d.HauptkategorieID;
      a.href = `maincat/?group=${groupValue}&hauptkategorie_name=${d.Name}&hauptkategorie_id=${id}`;
      a.innerHTML += "<br>";
      document.getElementById("result").appendChild(a);
    })
  }
  else {
    document.getElementById("result").innerHTML = "Zuletzt verwendete Query:<br> "+ localStorage.getItem("importSql");
  }

  if (data && data[2]) {
    
    const filters = {};
    data[2].forEach((d) => {
      filters[d.Name] = [];
    })
    data[2].forEach((d) => {
      filters[d.Name].push(d.Wert);
    })
    //console.log(filters)
    for (let category in filters) {
      const label = document.createElement("label");
      label.innerHTML = category
      label.htmlFor = category;
      const select = document.createElement("select");
      select.name = category;
      select.id = category;

      filters[category].forEach((val) => {
        const option = document.createElement("option");
        option.value = val;
        option.text = val;
        select.appendChild(option);
      })
      // document.getElementById("result").appendChild(label).appendChild(select)
    }
 
  }


}*/
