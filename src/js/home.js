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

  // SELECT * FROM Hauptkategorien;
  const data = { group: group.value, query: "Hauptkategorien" }
  group.disabled = true;
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
  //console.log(data, " Kategorien, Kategorien, Kategorien,")
  if (data && data[1]) {
    data[1].forEach((d) => {
      const a = document.createElement('a');
      const linkText = document.createTextNode(d.Name);
      a.appendChild(linkText);
      a.title = d.Name;
      let id = d.ID ? d.ID : d.HauptkategorienID
      a.href = `maincat/?group=${group.value}&hauptkategorie_name=${d.Name}&hauptkategorie_id=${id}`;
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
    console.log(filters)
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