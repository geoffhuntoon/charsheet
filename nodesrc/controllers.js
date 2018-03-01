import mysql from 'mysql';


export const getRace = (req, res) => {
    const db_conn = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: 'root',
        database: 'dd35'
    });

    db_conn.connect(function(err) {
        if (err) res.send(err);
        db_conn.query(`SELECT * FROM races WHERE name = '${req.params["raceName"]}' LIMIT 1`,
            function(err, result) {
                if (err) res.send(err);
                res.json(result);
            });
    });
};

export const getClass = (req, res) => {
    const db_conn = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: 'root',
        database: 'dd35'
    });

    db_conn.connect(function (err) {
        if (err) res.send(err);
        db_conn.query(`SELECT * FROM classes WHERE name = '${req.params["className"]}' LIMIT 1`,
            function (err, result) {
                if (err) res.send(err);
                res.json(result);
            });
    });
};