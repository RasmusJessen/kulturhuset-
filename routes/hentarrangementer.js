module.exports = function (app) {
    const joinEvents = `
    SELECT arrangementer.id, arrangementer.pris, arrangementer.dato, arrangementer.titel, arrangementer.filnavn, arrangementer.info, arrangementer.tid, arrangementer.varighed, kategori.navn
      AS kategori
      FROM arrangementer
        INNER JOIN kategori
          ON arrangementer.fk_kategori = kategori.id
    `;
    app.get('/events', function (req, res) {
        db.query(joinEvents + ` ORDER BY dato`, function (err, data) {
            if (err) console.log(err);
            res.send(data);
        })
    });
}