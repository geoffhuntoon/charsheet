import mysql from 'mysql';


export const getRace = (req, res) => {
    const db_conn = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: 'root',
        database: 'dd35'
    });

    db_conn.connect(function (err) {
        if (err) res.send(err);
        let name = req.params["raceName"];
        db_conn.query(`SELECT * FROM races WHERE name = '${name}'`,
            function (err, result) {
                if (err) res.send(err);
                db_conn.query(`SELECT * FROM race_feats WHERE race_name = '${name}'`,
                    function (inner_err, inner_result) {
                        if (inner_err) res.send(inner_err);
                        res.json([result, inner_result]);
                    });
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
        let name = req.params["className"];
        db_conn.query(`SELECT * FROM classes WHERE name = '${name}'`,
            function (err, result) {
                if (err) res.send(err);
                db_conn.query(`SELECT * FROM class_stats WHERE class_name = '${name}'`,
                    function (stat_err, stat_result) {
                        if (stat_err) res.send(stat_err);
                        db_conn.query(`SELECT * FROM class_features WHERE class_name = '${name}'`,
                            function (feat_err, feat_result) {
                                if (feat_err) res.send(feat_err);
                                let query = '';
                                if (name === 'Bard') query = 'SELECT * FROM bardic_knowledge';
                                else if (name === 'Monk') query = 'SELECT * FROM monk_additional_stats';
                                else if (name === 'Ranger') query = 'SELECT * FROM ranger_favored_enemies';

                                if (query !== '') {
                                    db_conn.query(query, function (extra_err, extra_result) {
                                        if (extra_err) res.send(extra_err);
                                        res.json([result, stat_result, feat_result, extra_result]);
                                    });
                                }
                                else {
                                    res.json([result, stat_result, feat_result]);
                                }
                            });
                    });
            });
    });
};