import { Grid, html } from "gridjs";
import "gridjs/dist/theme/mermaid.css";

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


export default function renderData(data, sqlQueries, resultPane) {

  const queries = sqlQueries.split(";").map((s) => { return s.trim(); })
  if (data.error) {
    resultPane.appendChild(renderSystemOutput(data));
    return false;
  }
  if (data.length > 1000) {
    resultPane.appendChild(renderSystemOutput("Fehler. Sie haben mehr als 1000 Datensätze selektiert."));
    return false;
  }
  if (!Array.isArray(data)) {
    resultPane.appendChild(renderSystemOutput(data));
    return false;
  }
  data.forEach((sqlResult, index) => {
    if (sqlResult.insertId === 0) {
      return true;
    }
    if (Array.isArray(sqlResult)) {
      if (sqlResult.length) {
        let tableData = [];
        const tableHeaders = Object.keys(sqlResult[0]);
        sqlResult.forEach((row) => {
          tableData.push(Object.values(row))
        })
        resultPane.appendChild(renderHtmlTable(tableHeaders, tableData));
      }
      else {
        resultPane.appendChild(renderSystemOutput("Keine Resultate gefunden"));
      }
      const element = document.createElement("pre");
      element.innerHTML = queries[index];
      //resultPane.appendChild(element);
    }
    else {
      resultPane.appendChild(renderSystemOutput(sqlResult));
    }
  })
}

function renderHtmlTable(tableHeaders, tableData) {
  const element = document.createElement("div");
  let formattedHeaders = []
  tableHeaders.forEach((header, index) => {

    formattedHeaders.push({
      name: header,
      formatter: (_, row) => {
        let val = row.cells[index].data
        if ((/\.(gif|jpe?g|tiff?|png|webp|bmp)$/i).test(val)) {
          return html(`<img class="productImage" src='${row.cells[index].data}'> </img>`);
        }
        else if (String(val).startsWith("http")) {
          return html(`<a target="blank" href='${row.cells[index].data}'>Link</a>`);
        }
        else if (header === "Detailseite") {
          return html(`<a href='${row.cells[index].data}'>Detailseite</a>`);
        }
        else {
          return val;
        }


      }
    })


  })

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