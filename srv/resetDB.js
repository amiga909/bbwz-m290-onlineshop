let mysql = require("mysql");
const fs = require("fs");
const path = require("path");
const parseDbUrl = require("parse-database-url");

if (process.env.APP_ENV !== "prod") {
  require("dotenv").config();
}
const sql = fs.readFileSync(path.resolve(__dirname, "sql1.sql"), "utf8");

const dbConfig = parseDbUrl(process.env.CLEARDB_DATABASE_URL);
dbConfig.multipleStatements = true;
const DB_CONN = process.env.CLEARDB_DATABASE_URL;
const connection = mysql.createConnection(dbConfig);
connection.connect();

connection.query(sql, [[]], (err, result) => {
  if (err) {
    connection.end();
    throw err;
  }

  connection.end();
});
