import "purecss/build/pure-min.css";
import "purecss/build/grids-responsive-min.css";
import { uniq, csvToArray } from "./helpers.js";

// https://www.db-fiddle.com/f/hqB88D35VLwXB1nGHUySoG/1

const SQL1 = "INSERT INTO Hauptkategorien (Name) VALUES";
const SQL2 = "INSERT INTO Kategorien (Name, Wert) VALUES";
const SQL3 = "INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES";
const SQL4 =
  "INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES";

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
let MAIN_CATS = [];

function init() {
  const csv = document.getElementById("csv");
  const result = document.getElementById("result");
  const submit = document.getElementById("submit");

  sqlDom = {
    mainCats: document.getElementById("mainCats"),
  };

  submit.addEventListener("click", (e) => {
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
      row[h] = d[index1].trim().replace('"', "").replace("'", "");
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
      sql += `${SQL1} ("${m}");\n`;
      MAIN_CATS.push(m);
    }
  });
  return sql;
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
        sql += `${SQL2} ("${catName}", "${m}");\n`;
      }
    });
  });

  return sql;
}
function renderProducts() {
  let sql = "";
  SETS.forEach((row) => {
    let name = row["Produktname"] ? row["Produktname"] : "";
    let price = row["Preis"] ? row["Preis"] : "";
    if (!price) {
      price = row["Preis (CHF)"] ? row["Preis (CHF)"] : "";
    }
    let link = row["Link"] ? row["Link"] : "";
    let mainCat = row["Hauptkategorie"] ? row["Hauptkategorie"] : "";
    let mainCatId = -1;
    MAIN_CATS.forEach((mc, idx) => {
      if (mainCat === mc) {
        mainCatId = idx + 1;
      }
    });
    if (name && price) {
      price = price.replace(/[a-z]/gi, "");
      price = price.trim();
      sql += `${SQL4} ("${name}", "${Number(
        price
      )}", "${link}", ${mainCatId});\n`;
    }
  });
  return sql;
}

function renderProductCats() {
  let sql = "";
  const cats = HEADERS.filter((s) => {
    return !ATTRIBUTES.includes(s);
  });
  let rowIndex = 0;
  SETS.forEach((row) => {
    rowIndex = rowIndex + 1;
    for (const [key, value] of Object.entries(row)) {
      if (!ATTRIBUTES.includes(key)) {
        CATEGORY_TUPELS.forEach((tupel, index) => {
          if (tupel.cat === key && tupel.value === value) {
            //console.log(`${key}: ${value}`);
            //console.log("index", index + 1);
            sql += `${SQL3} (${rowIndex}, ${index + 1});\n`;
          }
        });
      }
    }
  });
  return sql;
}

function render() {
  let textarea = `
-- Hauptkategorien \n
${renderMainCats()}
-- Kategorien \n
${renderCats()}
-- Produkte \n
${renderProducts()}
-- Produktkategorien \n
${renderProductCats()}
  `;

  sqlDom.mainCats.innerHTML = textarea;
}

document.addEventListener(
  "DOMContentLoaded",
  () => {
    init();
  },
  false
);


/* 
CREATE TABLE Hauptkategorien (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,  
  Name VARCHAR(255) NOT NULL
);

CREATE TABLE Produkte (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  Produktname VARCHAR(512) NOT NULL,
  Preis DECIMAL(20) NOT NULL,
  Link VARCHAR(1024),
  HauptkategorieID INTEGER NOT NULL,
  FOREIGN KEY (HauptkategorieID) REFERENCES Hauptkategorien(ID),
);

CREATE TABLE Kategorien (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,  
  Name VARCHAR(255) NOT NULL,
  Wert VARCHAR(255) NOT NULL 
);

CREATE TABLE Produkte_Kategorien (
  ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  ProduktID INTEGER NOT NULL, 
  KategorieID INTEGER NOT NULL,
  FOREIGN KEY (ProduktID) REFERENCES Produkte(ID),
  FOREIGN KEY (KategorieID) REFERENCES Kategorien(ID)
);
 */