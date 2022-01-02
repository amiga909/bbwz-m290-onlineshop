const express = require("express");
const fs = require("fs");
const bodyParser = require("body-parser");
const cors = require('cors')

const DBClient = require("./srv/db-client");
const app = express();
app.use(bodyParser.json());

const port = process.env.PORT || process.env.VCAP_APP_PORT || 3099;

app.enable("trust proxy");

app.use((req, res, next) => {
  if (req.secure === false && app.get("env") !== "development") {
    res.redirect("https://" + req.headers.host + req.url);
  } else {
    res.header("Access-Control-Allow-Credentials", true);
    res.header('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE,OPTIONS');
    res.header("Access-Control-Allow-Headers", 'Origin,X-Requested-With,Content-Type,Accept,content-type,application/json');

    next();
  }
});
app.use((req, res, next) => {
  if (req.path.substr(-1) == "/" && req.path.length > 1) {
    let query = req.url.slice(req.path.length);
    res.redirect(301, req.path.slice(0, -1) + query);
  } else {
    next();
  }
});

// allow local development with files only
app.use(cors())

// serve assets
app.use(express.static(__dirname + "/public"));

app.get("/", (request, response) => {
  const html = fs.readFileSync(__dirname + "/public/src/index.html", "utf8");

  response.end(html);
});

app.get("/index.html", (request, response) => {
  const html = fs.readFileSync(__dirname + "/public/src/index.html", "utf8");
  response.end(html);
});

app.use(express.static(__dirname + "/public"));


// routes: 

// 

// params: edit=true, pw=""


// gruppe/edit/ 
//  gruppe/edit/homepage 
// gruppe/edit/haupt-kat 
// gruppe/edit/detail
app.get("/home", (request, response) => {
  const data = request.query;

  const pw = data.pw ? data.pw : "";
  let html = "";
  const group = DBClient.getGroupData(pw);
  console.log(group)
  if (group && group.group) {
    html = fs.readFileSync(__dirname + "/public/src/home.html", "utf8");
    html = html.replace(/_GRUPPE_/g, group.group);
    html = html.replace(/_NAME_/g, group.name);
    response.end(html);
  }
  else {
    response.redirect('/login');
  }
  


});

app.get("/login", (request, response) => {
  const html = fs.readFileSync(__dirname + "/public/src/index_invalid_login.html", "utf8");
  response.end(html);
});

app.get("/csv", (request, response) => {
  const html = fs.readFileSync(__dirname + "/public/src/csv.html", "utf8");
  response.end(html);
});
app.get("/import", (request, response) => {
  const html = fs.readFileSync(__dirname + "/public/src/import.html", "utf8");
  response.end(html);
});
app.get("/maincat", (request, response) => {
  const html = fs.readFileSync(__dirname + "/public/src/maincat.html", "utf8");
  response.end(html);
});

app.get("/produkt", (request, response) => {
  const html = fs.readFileSync(__dirname + "/public/src/produkt.html", "utf8");
  response.end(html);
});



app.post("/sql", (request, response) => {
  const data = request.body;
  //console.log("/sql data", request.body)

  if (data.group) {
    const pw = data.pw ? data.pw : "";
    const query = data.query ? data.query : "";
    const customSql = data.sql ? data.sql : "";

    DBClient.execQuery(data.group, customSql, pw, query).then((res) => {
      response.setHeader("Content-Type", "application/json");
      response.end(JSON.stringify(res));
    }).catch((err) => {
      response.json({ error: err })

    });
  }
  else {
    response.json({ error: "invalid params" })
  }
});


app.get("/robots.txt", (request, response) => {
  //response.sendFile("./robots.txt", { root: __dirname });
});



const server = app.listen(port, () => {
  console.log(
    "Listening on port %d",
    server.address().port,
    "ENV:",
    app.get("env")
  );
});
