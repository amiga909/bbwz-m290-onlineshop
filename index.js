// Require and create the Express framework
let express = require("express");
const fs = require("fs");
const cookieParser = require("cookie-parser");
const bodyParser = require("body-parser");
const csrf = require("csurf");
const DBClient = require("./srv/db-client");
let app = express();
const csrfProtection = csrf({ cookie: true });
const parseForm = bodyParser.urlencoded({ extended: false });

app.use(bodyParser.urlencoded({ extended: true }));
app.use(cookieParser());
const port = process.env.PORT || process.env.VCAP_APP_PORT || 3099;

app.enable("trust proxy");

app.use((req, res, next) => {
  if (req.secure === false && app.get("env") !== "development") {
    res.redirect("https://" + req.headers.host + req.url);
  } else {
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

//app.use(bodyParser.urlencoded({ extended: false }));
//app.use(bodyParser.json());

/*
app.get("/sw.js.map", (request, response) => {
  response.sendFile("public/sw.js.map", { root: __dirname });
});*/

app.get("/", (request, response) => {
  const html = fs.readFileSync(__dirname + "/public/index.html", "utf8");

  response.end(html);
});

app.get("/index.html", (request, response) => {
  const html = fs.readFileSync(__dirname + "/public/index.html", "utf8");

  response.end(html);
});

app.use(express.static(__dirname + "/public"));


app.get("/csv", (request, response) => {
  const html = fs.readFileSync(__dirname + "/public/csv.html", "utf8");
  response.end(html);
});


app.get("/hauptseite", (request, response) => {
  // connect to DB 

  const html = fs.readFileSync(__dirname + "/public/csv.html", "utf8");
  response.end(html);
});






app.get("/robots.txt", (request, response) => {
  response.sendFile("./robots.txt", { root: __dirname });
});



 
app.get("/getScores", csrfProtection, (request, response) => {
  DBClient.execQuery("getScores").then((res) => {
    response.setHeader("Content-Type", "application/json");
    const data = { scores: res, csrfToken: request.csrfToken() }
    response.end(JSON.stringify(data));
  });
});

 


const server = app.listen(port, () => {
  console.log(
    "Listening on port %d",
    server.address().port,
    "ENV:",
    app.get("env")
  );
});
