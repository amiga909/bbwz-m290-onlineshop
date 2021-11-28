import "purecss/build/pure-min.css";
import "purecss/build/grids-responsive-min.css";
import { uniq, csvToArray } from "./helpers.js";
// https://www.db-fiddle.com/f/tJCTtC5VTJ3q1L2s2uMEQw/0
const SQL1 = "INSERT INTO Hauptkategorien (Name) VALUES";
const SQL2 = "INSERT INTO Kategorien (Name, Wert) VALUES";
const SQL3 = "INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES";
const SQL4 = "INSERT INTO Produkte (Produktname, Preis, Link) VALUES";

const MAINCAT_NAME = "Hauptkategorie";
const ATTRIBUTES = [
  "Produktname",
  "Preis",
  "Preis (CHF)",
  MAINCAT_NAME,
  "Link",
];
let sqlDom = null;
let HEADERS = null;
let SETS = [];
let CATEGORY_TUPELS = [];

function init() {
  const csv = document.getElementById("csv");
  const result = document.getElementById("result");

  sqlDom = {
    mainCats: document.getElementById("mainCats"),
    cats: document.getElementById("cats"),
    prodCats: document.getElementById("prodCats"),
    prods: document.getElementById("prods"),
  };

  csv.addEventListener("change", (e) => {
    const text = csv.value;
    HEADERS = null;
    SETS = [];
    CATEGORY_TUPELS = [];
    parse(csvToArray(text));
    render();
  });
}

function parse(data) {
  HEADERS = data[0].map((h) => {
    return h.trim();
  });

  data.forEach((d, index) => {
    if (index === 0) {
      return true;
    }
    let row = {};
    HEADERS.forEach((h, index1) => {
      row[h] = d[index1].trim();
    });
    SETS.push(row);
  });
}

function renderMainCats() {
  let sql = "";
  let mainCats = SETS.map((s) => {
    return s[MAINCAT_NAME];
  });
  mainCats = uniq(mainCats);

  mainCats.forEach((m) => {
    if (m) {
      m = m.trim();
      sql += `${SQL1} ("${m}");<br> `;
    }
  });
  sqlDom.mainCats.innerHTML = sql;
}

function renderCats() {
  let sql = "";
  let cats = HEADERS.filter((s) => {
    return !ATTRIBUTES.includes(s);
  });
  cats.forEach((catName) => {
    let catValues = SETS.map((s) => {
      return s[catName];
    });
    catValues = uniq(catValues);
    catValues.forEach((m) => {
      m = m.trim();
      if (catName && m) {
        CATEGORY_TUPELS.push({ cat: catName, value: m });
        sql += `${SQL2} ("${catName}", "${m}");<br> `;
      }
    });
  });

  sqlDom.cats.innerHTML = sql;
}
function renderProducts() {
  let sql = "";
  SETS.forEach((row) => {
    let name = row["Produktname"] ? row["Produktname"] : "";
    let price = row["Preis"] ? row["Preis"] : "";
    price = row["Preis (CHF)"] ? row["Preis (CHF)"] : "";
    let link = row["Link"] ? row["Link"] : "";

    sql += `${SQL4} ("${name}", "${Number(price)}", "${link}");<br> `;
  });
  sqlDom.prods.innerHTML = sql;
}

function renderProductCats() {
  let sql = "";
  const cats = HEADERS.filter((s) => {
    return !ATTRIBUTES.includes(s);
  });

  SETS.forEach((row) => {
    // console.log(row)
    let rowIndex = 0;
    for (const [key, value] of Object.entries(row)) {
      rowIndex = rowIndex + 1;
      if (!ATTRIBUTES.includes(key)) {
        CATEGORY_TUPELS.forEach((tupel, index) => {
          if (tupel.cat === key && tupel.value === value) {
            console.log(`${key}: ${value}`);
            console.log("index", index + 1);
            sql += `${SQL3} (${rowIndex}, ${index + 1});<br> `;
          }
        });
      }
    }
  });
  sqlDom.prodCats.innerHTML = sql;
}

function render() {
  renderMainCats();
  renderCats();
  renderProducts();
  renderProductCats();
}

document.addEventListener(
  "DOMContentLoaded",
  () => {
    init();
  },
  false
);
