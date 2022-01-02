import renderData from './sql-renderer'

let submit, group, sqlTextarea, pw, label, resultPane, backToCatLink;
let searchParams = null;



export default function init(params) {
  searchParams = params;
  submit = document.getElementById("submit");
  group = document.getElementById("groupSelect")
  sqlTextarea = document.getElementById("sql");
  pw = document.getElementById("pw");
  label = document.getElementById("Produkt_name");
  resultPane = document.getElementById("result");
  backToCatLink = document.getElementById("backToCat");


  if (!searchParams || !searchParams.group || !searchParams.produktname || !searchParams.hauptkategorie_id) {
    console.error("missing search params")
    return false;
  }
  label.innerHTML = label.innerHTML + " " + decodeURIComponent(searchParams.produktname);
  backToCatLink.href = `maincat/?group=${searchParams.group}&hauptkategorie_id=${searchParams.hauptkategorie_id}&hauptkategorie_name=${searchParams.hauptkategorie_name}`;

  group.value = searchParams.group;
  group.disabled = true;
  submit.addEventListener("click", () => {
    onSqlSubmit()
  })


  pw.addEventListener("change", () => {
    localStorage.setItem("pw", pw.value)
  })

  if (localStorage.getItem("pw")) {
    pw.value = localStorage.getItem("pw")

  }

  sqlTextarea.addEventListener("change", () => {
    localStorage.setItem("sql_product", sqlTextarea.value)
  })

  if (localStorage.getItem("sql_product")) {
    sqlTextarea.value = localStorage.getItem("sql_product")

  }
  onSqlSubmit();
}

function onSqlSubmit() {
  
  let sql = sqlTextarea.value;
  if (!sql) {
    sql = sqlTextarea.placeholder;
  }
  sql = sql.replace("$produktname", '"' + decodeURI(searchParams.produktname) + '"')
  sql = sql.includes("LIMIT ") ? sql : sql.replace(";", " LIMIT 1000;")
  const data = { group: group.value, sql: sql, pw: pw.value }
  submit.disabled = true
  resultPane.innerHTML = "";
  fetch("/sql",
    {
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json'
      },
      method: "POST",
      body: JSON.stringify(data)
    })
    .then((res) => { return res.json(); })
    .then((data) => {
      submit.disabled = false;
      renderData(data, sql, resultPane)

    })
    .catch((res) => {
      submit.disabled = false;
      console.error(res)
    })
}






