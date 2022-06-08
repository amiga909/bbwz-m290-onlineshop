import renderData from "./sql-renderer";

let resultPane;
const METRICS_SQL = `SELECT table_name AS Tabelle, create_time as Erstellungsdatum
FROM information_schema.tables
WHERE table_schema !="information_schema";`;

export default function init() {
  const submit = document.getElementById("submit");
  const group = document.getElementById("groupSelect");
  const sqlTextarea = document.getElementById("sql");
  const pw = document.getElementById("pw");
  resultPane = document.getElementById("result");
  if (localStorage.getItem("group")) {
    group.value = localStorage.getItem("group");
  }
  if (localStorage.getItem("pw")) {
    pw.value = localStorage.getItem("pw");
  }
  sqlTextarea.addEventListener("change", () => {
    localStorage.setItem("importSql", sqlTextarea.value);
  });

  if (localStorage.getItem("importSql")) {
    sqlTextarea.value = localStorage.getItem("importSql");
  }
  const metricsSql = { group: group.value, sql: METRICS_SQL, pw: pw.value };

  submit.addEventListener("click", () => {
    resultPane.innerHTML = "";
    const customSql = {
      group: group.value,
      sql: sqlTextarea.value,
      pw: pw.value,
    };
    const results = [];
    resultPane.classList.add("loader");
    fetchSql(customSql).then((customResult) => {
      fetchSql(metricsSql).then((metricsResult) => {
        resultPane.classList.remove("loader");
        renderData(customResult, customSql.sql, resultPane, {
          nohtml: true,
          title: "",
        });
        renderData(metricsResult, metricsSql.sql, resultPane, {
          nohtml: true,
          title: "Tabellen Übersicht",
        });
      });
    });
  });
  submit.disabled = true;
  fetchSql(metricsSql).then((metricsResult) => {
    renderData(metricsResult, metricsSql.sql, resultPane, {
      nohtml: true,
      title: "Tabellen Übersicht",
    });
  });
}

function fetchSql(payload) {
  submit.disabled = true;
  return fetch("/sql", {
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json",
    },
    method: "POST",
    body: JSON.stringify(payload),
  })
    .then((res) => {
      return res.json();
    })
    .then((data) => {
      submit.disabled = false;
      return data;
    })
    .catch((res) => {
      submit.disabled = false;
      console.error(res);
    });
}
