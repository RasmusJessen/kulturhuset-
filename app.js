var express = require('express');
var app = express();
const path       = require('path');
const session    = require('express-session');
const bodyParser = require("body-parser");
const morgan = require("morgan");

require("./config/db_config");

let port = 3500;
// set the view engine to ejs
app.set('port', port);
app.set('views', __dirname + '/views');
app.set('view engine', 'ejs');
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(express.static(path.join(__dirname, 'public')));
app.use(morgan("dev"));
app.use(session({
	secret: 'keyboard cat',
	resave: false,
	saveUninitialized: true,
	cookie: { maxAge: 5 * 60 * 1000 } // 5 minutter
}));

// use res.render to load up an ejs view file

require('./routes/router')(app);

app.listen(port);
console.log(`${port} is the magic port http://localhost:3500/home`);