import "purecss/build/pure-min.css";
import "purecss/build/grids-responsive-min.css";
import "../css/style.scss";

import initCSV from "./csv.js";
import initImport from "./import.js";
import initLogin from "./login.js";
import initHomePage from "./home.js";
import initMainCat from "./maincat";
import initProdukt from "./produkt";
import { getSearchParameters } from "./helpers.js";

document.addEventListener(
  "DOMContentLoaded",
  () => {
    if (document.getElementById("login")) {
      initLogin(getSearchParameters());
    } else if (document.getElementById("page_csv")) {
      initCSV();
    } else if (document.getElementById("import")) {
      initImport();
    } else if (document.getElementById("homepage")) {
      initHomePage();
    } else if (document.getElementById("maincat")) {
      initMainCat(getSearchParameters());
    } else if (document.getElementById("produkt")) {
      initProdukt(getSearchParameters());
    } else {
      console.error("invalid page");
    }
  },
  false
);
