let mysql = require("mysql");
const fs = require('fs')
const path = require('path')

if (process.env.APP_ENV !== "prod") {
  require("dotenv").config();
}
const sql = fs.readFileSync(path.resolve(__dirname, 'sql1.sql'), 'utf8');

const DB_CONN = process.env.CLEARDB_DATABASE_URL;
const connection = mysql.createConnection({
  host: 'eu-cdbr-west-01.cleardb.com',
  user: 'beff578ce34624',
  password: 'a0e7c751',
  database: 'heroku_f590b77cf0d1850',
  debug: false,
  multipleStatements: true
});
connection.connect();

connection.query(sql, [[]], (err, result) => {
  if (err) {
    connection.end();
    throw err;
    //reject();
  }
  // console.log("query res", sql, result)
  console.log(result);
  connection.end();
});
