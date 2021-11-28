let mysql = require("mysql");

if (process.env.APP_ENV !== "prod") {
  require("dotenv").config();
}
const DB_CONN = process.env.CLEARDB_DATABASE_URL;
const con = mysql.createConnection(DB_CONN);

con.connect((err) => {
  if (err) {
    throw err;
  }
  console.log("Connected!");
  let sql1 = `
  DROP TABLE IF EXISTS highscores;
  `;
  let sql2 = ` CREATE TABLE highscores (
    ID int NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL, 
    ip VARCHAR(255) NOT NULL, 
    score INT NOT NULL,level VARCHAR(255) NOT NULL, 
    data TEXT,
    ts TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
  );
  `;

  let sql3 = `
  DROP TABLE IF EXISTS scores;
  `;
  let sql4 = `
  CREATE TABLE scores (
    ID int NOT NULL AUTO_INCREMENT,
    ip VARCHAR(255) NOT NULL, 
    score INT NOT NULL,level VARCHAR(255) NOT NULL, 
    data TEXT,
    ts TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
  ); 
  `;
  let sql5 = `
  INSERT INTO scores (ip, score, data) VALUES("::1",2, "{}" );
  `;
  let sql6 = `
  INSERT INTO highscores (name, ip, score, data) VALUES("test", "::1",2, "{}" );
  `;
  con.query(sql1, function (err, result) {
    if (err) {
      throw err;
    }
    //console.log("Result: " + JSON.stringify(result));
    con.query(sql2, (err, result) => {
      if (err) {
        throw err;
      }
      //console.log("Result: " + JSON.stringify(result));
      con.query(sql3, (err, result) => {
        if (err) {
          throw err;
        }
        //  console.log("Result: " + JSON.stringify(result));
        con.query(sql4, (err, result) => {
          if (err) {
            throw err;
          }
          con.query(sql5, (err, result) => {
            if (err) {
              throw err;
            }
            con.query(sql6, (err, result) => {
              if (err) {
                throw err;
              }
              console.log("Result: " + JSON.stringify(result));
              con.destroy();
            });
          });
        });
      });
    });
  });
});
