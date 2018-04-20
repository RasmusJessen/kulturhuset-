var ar;

module.exports = function(app) {
    app.get('/admin', function(req, res) { 
        let sql = `SELECT * FROM arrangementer`;
        db.query(sql, [], function (req, arrangementer) {
        res.render('pages/admin', {
            arrangementer: arrangementer
        });
    })
	});

	app.post('/admin', function (req, res) {
		var post = req.body;
		var name = post.name;
		var bdaytime = post.bdaytime;
		var price = post.price;
		var info = post.info;
	
		if (name != "" && bdaytime != "" && price != "" && info != "") {
			
			var sql = `
			     INSERT INTO arrangementer (pris, info, titel, dato) VALUES (?, ?, ?, ?)
				`;
	
			db.query(sql, [name, bdaytime, price, info], function (err, message) {
				if (err) {
					console.log ("signup error: " + err);
				}
				else {
					message = "Succesfully! Your account has been created.";
					res.render('pages/signup', {
						message: message,
					});
				}
	
			});
		}
	})
	
}