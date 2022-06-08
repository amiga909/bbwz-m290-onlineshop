import { Grid, html } from "gridjs";
import "gridjs/dist/theme/mermaid.css";

const TABLE_STYLE = {
  table: {
    border: "3px solid #ccc",
  },
  th: {
    "background-color": "rgba(0, 0, 0, 0.1)",
    color: "#000",
    "border-bottom": "3px solid #ccc",
    "text-align": "left",
  },
  td: {
    "text-align": "left",
  },
};

export default function renderData(
  data,
  sqlQueries,
  resultPane,
  options = { nohtml: false, title: "" }
) {
  const queries = sqlQueries.split(";").map((s) => {
    return s.trim();
  });
  if (data.error) {
    resultPane.appendChild(renderSystemOutput(data));
    return false;
  }
  if (data.length > 1000) {
    resultPane.appendChild(
      renderSystemOutput(
        "Fehler. Sie haben mehr als 1000 Datensätze selektiert."
      )
    );
    return false;
  }
  if (!Array.isArray(data)) {
    resultPane.appendChild(renderSystemOutput(data));
    return false;
  }
  if (options.title) {
    const element = document.createElement("h3");
    element.innerHTML = options.title;
    resultPane.appendChild(element);
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
          tableData.push(Object.values(row));
        });
        resultPane.appendChild(
          renderHtmlTable(tableHeaders, tableData, options.nohtml)
        );
      } else {
        resultPane.appendChild(renderSystemOutput("Keine Resultate gefunden"));
      }
      const element = document.createElement("pre");
      element.innerHTML = queries[index];
    } else {
      resultPane.appendChild(renderSystemOutput(sqlResult));
    }
  });
}

function renderHtmlTable(tableHeaders, tableData, nohtml = false) {
  const element = document.createElement("div");
  let formattedHeaders = [];
  tableHeaders.forEach((header, index) => {
    formattedHeaders.push({
      name: header,
      formatter: (_, row) => {
        let val = String(row.cells[index].data);
        val = val.replace(/\r?\n|\r/, "");
        if (/\.(gif|jpe?g|tiff?|png|webp|bmp)$/i.test(val)) {
          return html(
            `<img class="productImage" src='${row.cells[index].data}'> </img>`
          );
        } else if (val.startsWith("http")) {
          return html(
            `<a target="_blank" href='${row.cells[index].data}'>Externer Link</a>`
          );
        } else if (header === "Detailseite") {
          return html(`<a href='${row.cells[index].data}'>Detailseite</a>`);
        } else {
          return val;
        }
      },
    });
  });

  const config = {
    columns: nohtml ? tableHeaders : formattedHeaders,
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
