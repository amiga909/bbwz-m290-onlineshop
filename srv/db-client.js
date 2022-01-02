const mysql = require("mysql");
const parseDbUrl = require("parse-database-url");
const dbConfig = require("./groups.json");
if (process.env.APP_ENV !== "prod") {
  require("dotenv").config();
}
const setAutoIncrement = "SET @@auto_increment_increment=1;"

const QUERIES = {
  "Hauptkategorien": "SELECT * FROM Hauptkategorien; SELECT * FROM Kategorien;"
}

const execQuery = (group, sql = "", pw = "", queryTpe = "") => {
  const parameters = [];
  //console.log("execQuery", "group", group, "sql", sql, "pw", pw, "queryTpe", queryTpe)
  return new Promise((resolve, reject) => {
    const config = dbConfig[group]
    if (!config) {
      reject("db config missing for " + group);
    }

    const parsedConfig = parseDbUrl(dbConfig[group].con);
    parsedConfig.multipleStatements = true;
    // logik: wenn querytyoe, dann kein passwort 
    if (queryTpe && QUERIES[queryTpe]) {
      sql = QUERIES[queryTpe];
    }

    else {
      const isValid = pw === parsedConfig.password || pw === process.env.MASTER_PW;
      if (!isValid) {
        reject("invalid password")
      }
    }



    const connection = mysql.createConnection(parsedConfig);
    connection.connect();
    connection.on("error", (err) => {
      console.error("db error", err);
      console.error("db error code", err.code);
      try {
        connection.end();
      }
      catch (e) {
        reject(e);
      }
      connection.connect();
    });

    connection.query(setAutoIncrement + sql, [parameters], (err, result) => {
      if (err) {
        try {
          connection.end();
        }
        catch (e) {
          reject(e);
        }
        if (err.sql) {
          err.sql = err.sql.replace(setAutoIncrement, "");
        }
        reject(err);
      }
      connection.end();
      resolve(result);
    });
  });
};

const getGroupData = (pw = "") => {
  let result = null;
  const groups = Object.keys(dbConfig);
  groups.forEach( (g)=> {
    if(dbConfig[g].con.includes(":" + pw + "@")) {
      result = {group: g, con: dbConfig[g].con, name: dbConfig[g].name, class: dbConfig[g].class };
    }
  })
  return result;
};

module.exports = {
  execQuery,
  getGroupData
};


