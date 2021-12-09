let group = null;
export default function init() {
    group = document.getElementById("groupSelect")
  
  group.addEventListener("change", () => {
    getData();
  })

  group.addEventListener("change", () => {
    localStorage.setItem("group", group.value)
  })

  if (localStorage.getItem("group")) {
    group.value = localStorage.getItem("group")
  }
  getData();

}

function getData() {
  document.getElementById("result").innerHTML = "";
 
  const sql = "SELECT * FROM Hauptkategorien;"
  const data = { group: group.value, sql: sql, pw: "select" }
  group.disabled = true;
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
      group.disabled = false
      renderData(data);
    })
    .catch((res) => {
      group.disabled = false;
      console.error(res)
    })
}



function renderData(data) {
  const prettyJson = JSON.stringify(data, null, 2);
  if(data && data[1]) {
  data[1].forEach( (d)=> {
    console.log(d)
    const a = document.createElement('a');
    const linkText = document.createTextNode(d.Name);
    a.appendChild(linkText);
    a.title = d.Name;
    a.href = "/"+d.Name;
    a.innerHTML += "<br>";
    document.getElementById("result").appendChild(a);
  })
}
else {
  document.getElementById("result").innerHTML = "Keine Daten vorhanden";
}

  
}