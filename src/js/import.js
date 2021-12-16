export default function init() {

  const submit = document.getElementById("submit");
  const group = document.getElementById("groupSelect")
  const sqlTextarea = document.getElementById("sql");
  const pw = document.getElementById("pw");



  submit.addEventListener("click", () => {
    document.getElementById("result").innerHTML = "";

    let sql = sqlTextarea.value;
    if (!sql) {
      sql = sqlTextarea.placeholder;
    }
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
        renderData(data);
      })
      .catch((res) => {
        submit.disabled = false;
        console.error(res)
      })
  })

  group.addEventListener("change", () => {
    localStorage.setItem("group", group.value)
  })
  pw.addEventListener("change", () => {
    localStorage.setItem("pw", pw.value)
  })
  if (localStorage.getItem("group")) {
    group.value = localStorage.getItem("group")
  }
  if (localStorage.getItem("pw")) {
    pw.value = localStorage.getItem("pw")

  }
}



function renderData(data) {
  // move first to last 
  if (data && data[1]) {
    data.push(data.shift());
  }
  const prettyJson = JSON.stringify(data, null, 2);

  document.getElementById("result").innerHTML = prettyJson;
}