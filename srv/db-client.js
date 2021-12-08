let mysql = require("mysql");

if (process.env.APP_ENV !== "prod") {
  require("dotenv").config();
}
const DB_CONN = process.env.CLEARDB_DATABASE_URL;
let con = mysql.createPool(DB_CONN);

const QUERIES = {
  // WHERE ip != "::1"
  getScores: `SELECT * from hauptkategorien;`,
  saveScore: `INSERT INTO scores SET ?;`,
  getHighScores: `SELECT * from highscores ORDER BY score DESC, ts DESC  LIMIT 10;`,
  saveHighScore: `INSERT INTO highscores SET ?;`,
  getRank: `SELECT score, FIND_IN_SET( score, (    
    SELECT GROUP_CONCAT( score
    ORDER BY score DESC ) 
    FROM highscores )
    ) AS rank
    FROM highscores
    WHERE score = _SCORE_ `,
};
const connect = async function () {
  if (con.state === "disconnected") {
    con.connect();
  }
};

con.on("error", (err) => {
  console.error("db error", err);
  console.error("db error code", err.code);
  throw err;
});

const execQuery = (query = "", params = null) => {
  let parameters = [];
  return new Promise((resolve, reject) => {
    connect().then(() => {
      let result = null;
      let sql = QUERIES[query];
      if (query === "saveScore") {
        parameters = {
          ip: params.ip,
          score: params.score,
          data: JSON.stringify(params.data),
        };
      } else if (query === "saveHighScore") {
        parameters = {
          name: params.name,
          ip: params.ip,
          score: params.score,
          data: JSON.stringify(params.data),
        };
      } else if (query === "getRank") {
        sql = sql.replace("_SCORE_", Number(params.score));
      }

      //console.log("sql", sql);
      con.query(sql, [parameters], (err, result) => {
        if (err) {
          throw err;
          //reject();
        }
        // console.log("query res", sql, result)
        resolve(result);
      });
    });
  });
};

module.exports = {
  execQuery,
};

 
