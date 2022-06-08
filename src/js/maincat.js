import renderData from "./sql-renderer";

let submit, group, sqlTextarea, pw, label, resultPane;
let searchParams = null;

export default function init(params) {
  searchParams = params;
  submit = document.getElementById("submit");
  group = document.getElementById("groupSelect");
  sqlTextarea = document.getElementById("sql");
  pw = document.getElementById("pw");
  label = document.getElementById("Hauptkategorie_name");
  resultPane = document.getElementById("result");

  if (!searchParams || !searchParams.group || !searchParams.hauptkategorie_id) {
    console.error("missing search params");
    return false;
  }
  if (searchParams.hauptkategorie_name) {
    label.innerHTML =
      label.innerHTML +
      " " +
      decodeURIComponent(searchParams.hauptkategorie_name);
  }
  group.value = searchParams.group;
  group.disabled = true;
  submit.addEventListener("click", () => {
    onSqlSubmit();
  });

  pw.addEventListener("change", () => {
    localStorage.setItem("pw", pw.value);
  });

  if (localStorage.getItem("pw")) {
    pw.value = localStorage.getItem("pw");
  }

  sqlTextarea.addEventListener("change", () => {
    localStorage.setItem("sql_maincat", sqlTextarea.value);
  });

  if (localStorage.getItem("sql_maincat")) {
    sqlTextarea.value = localStorage.getItem("sql_maincat");
  }
  onSqlSubmit();
}

function onSqlSubmit() {
  let sql = sqlTextarea.value;
  if (!sql) {
    sql = sqlTextarea.placeholder;
  }
  sql = sql.replace("$hauptkategorie_id", searchParams.hauptkategorie_id);
  //sql = sql.includes("LIMIT ") ? sql : sql.replace(";", " LIMIT 1000;")
  const data = { group: group.value, sql: sql, pw: pw.value };
  submit.disabled = true;
  resultPane.innerHTML = "";

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
    .then((data) => {
      if (data[1] && data[1].length) {
        data[1].forEach((row) => {
          let queryString = "";
          for (const param in searchParams) {
            queryString += `${param}=${searchParams[param]}&`;
          }

          const productName = row["Produktname"]
            ? row["Produktname"]
            : row["produktname"];
          row[
            "Detailseite"
          ] = `/produkt?produktname=${productName}&${queryString}`;
        });
      }
      submit.disabled = false;
      renderData(data, sql, resultPane);
    })
    .catch((res) => {
      submit.disabled = false;
      console.error(res);
    });
}
