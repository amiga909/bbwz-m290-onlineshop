let groupValue = null;

export default function init() {
  groupValue = document.body.getAttribute("data-group");
  let className = document.body.getAttribute("data-class") || "";
  let shopName = document.body.getAttribute("data-name") || "";
  let html = `Online-Shop "${shopName}" (Gruppe: ${groupValue.replace(/[^0-9]/g, '')}, Klasse: ${className})`
  if (groupValue === "teacher") {
    html = `Online-Shop Inline-Skates (Gruppe: Teacher)`
  }
  document.getElementById("header").innerHTML = html
  getData(document.body.getAttribute("data-group"));
  localStorage.setItem("group", groupValue)
}

function getData() {
  document.getElementById("result").innerHTML = "";
  const data = { group: groupValue, query: "Hauptkategorien" }
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

      renderData(data);
    })
    .catch((res) => {

      console.error(res)
    })
}



function renderData(data) {
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
    document.getElementById("result").innerHTML = "Keine Daten vorhanden";
  }

  if (data && data[2]) {
    const values = ["dog", "cat", "parrot", "rabbit"];

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

    /*
    const labels = []; // all unique keys 
    const values =
 
    for (const val of values)
    {
        var option = document.createElement("option");
        option.value = val;
        option.text = val.charAt(0).toUpperCase() + val.slice(1);
        select.appendChild(option);
    }
 
    var label = document.createElement("label");
    label.innerHTML = "Choose your pets: "
    label.htmlFor = "pets";
 
    document.getElementById("container").appendChild(label).appendChild(select);
    */
  }


}