module.exports = (app) => {
    require("./home")(app);
    require("./arrar")(app);
    require("./kontakt")(app);
    require("./teater")(app);
    require("./biograf")(app);
    require("./fordrag")(app);
    require("./bestil")(app);
    require("./koncert")(app);
    require("./login")(app);
    require("./admin")(app);
    require("./hentarrangementer")(app);
}