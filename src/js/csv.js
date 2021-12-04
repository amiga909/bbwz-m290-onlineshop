
import { uniq, csvToArray } from "./helpers.js";

// https://www.db-fiddle.com/f/hqB88D35VLwXB1nGHUySoG/1
// https://www.db-fiddle.com/f/5G1MN95MogMu1XRVZUckFa/0
// https://www.db-fiddle.com/f/ac9zBqYGmTtg6nZG7aHkD3/0


const SQL1 = "INSERT INTO Hauptkategorien (Name) VALUES";
const SQL2 = "INSERT INTO Kategorien (Name, Wert) VALUES";
const SQL3 = "INSERT INTO Produkte_Kategorien (ProduktID, KategorieID) VALUES";
const SQL4 =
  "INSERT INTO Produkte (Produktname, Preis, Link, HauptkategorieID) VALUES";

const MAINCAT_NAME = "Hauptkategorie";
const ATTRIBUTES = [
  "Produktname",
  "Preis",
  MAINCAT_NAME,
  "Link",
];
let sqlDom = null;
let HEADERS = null;
let SETS = [];
let CATEGORY_TUPELS = [];
let MAIN_CATS = [];
let PRODUCT_COUNT = 0;



export default function init() {
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
    MAIN_CATS = [];
    PRODUCT_COUNT = 0;


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

      if (d[index1]) {
        row[h] = d[index1].trim().replace('"', "").replace("'", "");
      }
      else {
        console.error("parse headers:", d, d[index1])
      }
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
      if (catName && m) {
        m = m.trim();
        CATEGORY_TUPELS.push({ cat: catName, value: m });
        sql += `${SQL2} ("${catName}", "${m}");\n`;
      }
      else {
        console.error("renderCats", catName, m)
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
    let mainCatId = MAIN_CATS.indexOf(mainCat) + 1;

    if (name && price && mainCatId) {
      PRODUCT_COUNT = PRODUCT_COUNT + 1;
      price = price.replace(/[^0-9.]/g, '');
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
  validate();
}

function validate() {
  let msgs = [];

  if (!HEADERS.join(",").includes("Produktname,")) {
    msgs.push(`- Die erste Zeile im CSV müssen die Spalten der Tabelle sein.`)
  }

  if (HEADERS[0] !== ATTRIBUTES[0]) {
    msgs.push(`- Die erste Spalte muss ${ATTRIBUTES[0]} heissen.`)
  }
  if (HEADERS[1] !== ATTRIBUTES[1]) {
    msgs.push(`- Die zweite Spalte muss ${ATTRIBUTES[1]} heissen.`)
  }
  if (HEADERS[2] !== ATTRIBUTES[2]) {
    msgs.push(`- Die dritte Spalte muss ${ATTRIBUTES[2]} heissen.`)
  }
  if (PRODUCT_COUNT < 30) {
    msgs.push(`- Die Tabelle Produkte hat weniger als 30 Zeilen (${PRODUCT_COUNT}).`)
  }
  if (new Set(HEADERS).size !== HEADERS.length) {
    msgs.push(`- Jeder Spaltenname darf nur einmal vorkommen.`)
  }
  if (msgs.length) {
    let html = "Es sind Fehler aufgetreten: </br>" + msgs.join("</br>");
    document.getElementById("errorMsg").innerHTML = html;
  }
  else {
    document.getElementById("errorMsg").innerHTML = "";
  }

}




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


/*


 SELECT Produkte.Produktname, Produkte.Preis, Hauptkategorien.Name FROM Produkte, Hauptkategorien
  WHERE  Produkte.HauptkategorieID = Hauptkategorien.ID
ORDER BY Hauptkategorien.Name ASC;


SELECT
  Produkte.ID,
    Produkte.Produktname,
    Produkte.Preis,
    GROUP_CONCAT(DISTINCT Kategorien.Wert ORDER BY Kategorien.Name ASC SEPARATOR ', ' ) AS "Beschreibung"
FROM Produkte, Kategorien, Produkte_Kategorien, Hauptkategorien
WHERE Produkte.ID = Produkte_Kategorien.ProduktID AND
    Kategorien.ID = Produkte_Kategorien.KategorieID
GROUP BY Produkte.ID;

*/