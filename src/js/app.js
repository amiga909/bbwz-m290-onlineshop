import "purecss/build/pure-min.css";
import "purecss/build/grids-responsive-min.css";
import "../css/style.scss";

import initCSV from './csv.js';
import initCustomPage from './custom.js';
import initHomePage from './home.js';

document.addEventListener(
  "DOMContentLoaded",
  () => {
    if (document.getElementById("page_csv")) {
      initCSV();
    }
    else if (document.getElementById("groups")) {
      initCustomPage();
    }
    else if (document.getElementById("homepage")) {
      
      initHomePage();
    }
    else {
      // index
    }
  },
  false
);