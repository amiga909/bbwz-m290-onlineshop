const mysql = require("mysql");
const parseDbUrl = require("parse-database-url");
const dbConfig = require("./groups.json");
if (process.env.APP_ENV !== "prod") {
  require("dotenv").config();
}

const setAutoIncrement = "SET @@auto_increment_increment=1;"


const execQuery = (group, sql, pw) => {
  const parameters = [];

  return new Promise((resolve, reject) => {
    const config = dbConfig[group]
    if (!config) {
      reject("db config missing for " + group);
    }

    const parsedConfig = parseDbUrl(dbConfig[group].con);
    parsedConfig.multipleStatements = true;
    const isValid = pw === parsedConfig.password; 
    console.log("parsedConfig",parsedConfig, pw)
    if(!isValid) {
      console.log("parsedConfig",parsedConfig)
      reject("invalid password")
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
        reject(err);
      }
      resolve(result);
    });

  });
};

module.exports = {
  execQuery,
};


