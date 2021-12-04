import "purecss/build/pure-min.css";
import "purecss/build/grids-responsive-min.css";
import "../css/style.scss";

import initCSV from './csv.js';


document.addEventListener(
  "DOMContentLoaded",
  () => {
    if (document.getElementById("page_csv")) {
      initCSV();
    }
    else if (document.getElementById("sql_import")) {

    }
    else {
      // index
    }
  },
  false
);