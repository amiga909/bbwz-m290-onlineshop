import "purecss/build/pure-min.css";
import "purecss/build/grids-responsive-min.css";

import initCSV from './csv.js';


document.addEventListener(
  "DOMContentLoaded",
  () => {
    if (document.getElementById("page_csv")) {
      initCSV();
    }
  },
  false
);