// Require and create the Express framework
let express = require("express");
const fs = require("fs");
const cookieParser = require('cookie-parser')
const bodyParser = require("body-parser");
const csrf = require('csurf')
const DBClient = require("./srv/db-client");
let app = express();
const csrfProtection = csrf({ cookie: true })
const parseForm = bodyParser.urlencoded({ extended: false })

app.use(bodyParser.urlencoded({ extended: true }));
app.use(cookieParser());

// Determine port to listen on
let port = process.env.PORT || process.env.VCAP_APP_PORT || 3099;

// Enable reverse proxy support in Express. This causes the
// the "X-Forwarded-Proto" header field to be trusted so its
// value can be used to determine the protocol. See
// http://expressjs.com/api#app-settings for more details.
app.enable("trust proxy");

// Add a handler to inspect the req.secure flag (see
// http://expressjs.com/api#req.secure). This allows us
// to know whether the request was via http or https.
app.use((req, res, next) => {
  if (req.secure === false && app.get("env") !== "development") {
    res.redirect("https://" + req.headers.host + req.url);
  } else {
    next();
  }
});
app.use(function (req, res, next) {
  if (req.path.substr(-1) == '/' && req.path.length > 1) {
    let query = req.url.slice(req.path.length)
    res.redirect(301, req.path.slice(0, -1) + query)
  } else {
    next()
  }
})

//app.use(bodyParser.urlencoded({ extended: false }));
//app.use(bodyParser.json());


app.get("/pwabuilder-sw.js", (request, response) => {
  response.sendFile("./pwabuilder-sw.js", { root: __dirname });
});

/*
app.get("/sw.js.map", (request, response) => {
  response.sendFile("public/sw.js.map", { root: __dirname });
});*/

 

app.get("/", (request, response) => {
  const header = fs.readFileSync(__dirname + "/public/header_index.html", "utf8");
  const html = fs.readFileSync(__dirname + "/public/index_no_header.html", "utf8");
  
  response.end(header + html);
});

app.get("/index.html", (request, response) => {
  const header = fs.readFileSync(__dirname + "/public/header_index.html", "utf8");
  const html = fs.readFileSync(__dirname + "/public/index_no_header.html", "utf8");
  response.end(header + html);
});

app.use(express.static(__dirname + "/public"));

app.get("/.well-known/assetlinks.json", (request, response) => {
  response.sendFile(".well-known/assetlinks.json", { root: __dirname });
});


app.get("/tricktionary", (request, response) => {
  const header = fs.readFileSync(__dirname + "/public/header_tricktionary.html", "utf8");
  const html = fs.readFileSync(__dirname + "/public/index_no_header.html", "utf8");
  response.end(header + html);
});
 
app.get("/about", (request, response) => {
  const header = fs.readFileSync(__dirname + "/public/header_about.html", "utf8");
  const html = fs.readFileSync(__dirname + "/public/index_no_header.html", "utf8");
  response.end(header + html);
});
 

app.get("/sitemap.xml", (request, response) => {
  response.sendFile("./sitemap.xml", { root: __dirname });
});

app.get("/robots.txt", (request, response) => {
  response.sendFile("./robots.txt", { root: __dirname });
});

app.get("/google3c4c2c0afdd9521d.html", (request, response) => {
  response.sendFile("./google3c4c2c0afdd9521d.html", { root: __dirname });
});

app.get("/getScores", csrfProtection, (request, response) => {
  DBClient.execQuery("getScores").then((res) => {
    response.setHeader("Content-Type", "application/json");
    const data = { scores: res, csrfToken: request.csrfToken() }
    response.end(JSON.stringify(data));
  });
});

app.get("/getHighScores", csrfProtection, (request, response) => {
  DBClient.execQuery("getHighScores").then((res) => {
    response.setHeader("Content-Type", "application/json");
    const data = { scores: res, csrfToken: request.csrfToken() }
    response.end(JSON.stringify(data));
  });
});

/*
app.get("/getRank",    (request, response) => {
  DBClient.execQuery("getRank",{
    score: 2, 
  }).then((res) => {
    response.setHeader("Content-Type", "application/json");
     
    response.end(JSON.stringify(res[0]));
  });
});*/


app.put("/saveScore", parseForm, csrfProtection, (request, response) => {
  //code to perform particular action.
  //To access POST variable use req.body()methods.
  const ip = request.headers["x-forwarded-for"] || request.socket.remoteAddress;
  // console.log("request.body", request.body)
  data = request.body;
  DBClient.execQuery("saveScore", {
    ip: ip,
    score: data.score,
    data: { tricks: data.tricks, config: data.config },
  }).then((res) => {
    response.setHeader("Content-Type", "application/json");
    response.end(JSON.stringify(res));
  });
});

app.put("/saveHighScore", parseForm, csrfProtection, (request, response) => {
  const ip = request.headers["x-forwarded-for"] || request.socket.remoteAddress;
  data = request.body;
  //console.log("request.body", request.body)
  if (data && data.name && data.score) {
    DBClient.execQuery("saveHighScore", {
      ip: ip,
      name: data.name,
      score: data.score,
      data: { tricks: data.tricks, config: data.config },
    }).then((res) => {
      DBClient.execQuery("getRank", {
        score: data.score,
      }).then((res) => {
        response.setHeader("Content-Type", "application/json");
        response.end(JSON.stringify(res[0]));
      });
    });
  }
  else {
    response.end("no data");
  }
});

// Start listening on the port
const server = app.listen(port, () => {
  console.log(
    "Listening on port %d",
    server.address().port,
    "ENV:",
    app.get("env")
  );
});
