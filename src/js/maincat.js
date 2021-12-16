import { Grid, html } from "gridjs";
import "gridjs/dist/theme/mermaid.css";


let submit, group, sqlTextarea, pw, label, resultPane;
let searchParams = null;
let grid = null;
const TABLE_STYLE = {
  table: {
    border: '3px solid #ccc'
  },
  th: {
    'background-color': 'rgba(0, 0, 0, 0.1)',
    color: '#000',
    'border-bottom': '3px solid #ccc',
    'text-align': 'center'
  },
  td: {
    'text-align': 'center'
  },

};


export default function init(params) {
  searchParams = params;
  submit = document.getElementById("submit");
  group = document.getElementById("groupSelect")
  sqlTextarea = document.getElementById("sql");
  pw = document.getElementById("pw");
  label = document.getElementById("Hauptkategorie_name");
  resultPane = document.getElementById("result");

  if (!searchParams || !searchParams.group || !searchParams.hauptkategorie_id) {
    console.error("missing search params")
    return false;
  }
  if (searchParams.hauptkategorie_name) {
    label.innerHTML = label.innerHTML + " " + decodeURIComponent(searchParams.hauptkategorie_name);
  }
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
    localStorage.setItem("sql_maincat", sqlTextarea.value)
  })

  if (localStorage.getItem("sql_maincat")) {
    sqlTextarea.value = localStorage.getItem("sql_maincat")

  }
  onSqlSubmit();
}

function onSqlSubmit() {
  document.getElementById("result").innerHTML = "";

  let sql = sqlTextarea.value;
  if (!sql) {
    sql = sqlTextarea.placeholder;
  }
  sql = sql.replace("$hauptkategorie_id", searchParams.hauptkategorie_id)
  sql = sql.includes("LIMIT ") ? sql : sql.replace(";", " LIMIT 1000;")
  const data = { group: group.value, sql: sql, pw: pw.value }
  submit.disabled = true
  // https://bbwz-m290-onlineshop.herokuapp.com/sql
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
      submit.disabled = false
      renderData(data, sql);
    })
    .catch((res) => {
      submit.disabled = false;
      console.error(res)
    })
}

function renderHtmlTable(tableHeaders, tableData) {
  const element = document.createElement("div");
  let formattedHeaders = []
  let produktnameIndex = 0;
  tableHeaders.forEach((header, index) => {
    if (header.toLowerCase() === "produktname") {
      produktnameIndex = index;
    }

    if (header.toLowerCase() === "link") {
      formattedHeaders.push({
        name: header,
        formatter: (_, row) => html(`<a href='${row.cells[index].data}' target="blank">Externer Link</a>`)
      })
    }

    else {
      formattedHeaders.push(header)
    }
  })
  const detailPage = {
    name: 'Detailseite',
    formatter: (_, row) => html(`<a href='/produkt?hauptkategorie_id=${searchParams.hauptkategorie_id}&hauptkategorie_name=${searchParams.hauptkategorie_name}&group=${group.value}&produktname=${row.cells[produktnameIndex].data}'>Detailseite</a>`)
  }
  formattedHeaders.push(detailPage)

  const config = {
    columns: formattedHeaders,
    data: tableData,
    // sort:true,
    style: TABLE_STYLE,
    /*search: {
      enabled: true
    }*/
  };

  new Grid(config).render(element);
  return element;
}

function renderSystemOutput(data) {
  const prettyJson = JSON.stringify(data, null, 2);
  const element = document.createElement("pre");
  element.innerHTML = prettyJson;
  return element;
}


function renderData(data, sqlQueries) {
  const queries = sqlQueries.split(";").map((s) => { return s.trim(); })

  if (data.error) {
    resultPane.appendChild(renderSystemOutput(data));
    return false;
  }

  if (data.length > 1000) {
    resultPane.appendChild(renderSystemOutput("Fehler. Sie haben mehr als 1000 Datensätze selektiert."));
  }
  data.forEach((sqlResult, index) => {

    if (Array.isArray(sqlResult) && sqlResult.length) {
      let tableData = [];
      const tableHeaders = Object.keys(sqlResult[0]);
      sqlResult.forEach((row) => {
        tableData.push(Object.values(row))
      })


      resultPane.appendChild(renderHtmlTable(tableHeaders, tableData));
      /*
            const element = document.createElement("pre");
            element.innerHTML = queries[index];
            resultPane.appendChild(element);*/

    }
    else {
      console.log(renderSystemOutput(sqlResult));
      //resultPane.appendChild(renderSystemOutput(sqlResult));
    }
  })





}
