import { getRace, getClass, getAlignment } from "./controllers";

export const routes = (app) => {
    app.route('/races/:raceName')
        .get((req, res) => {
           getRace(req, res);
        });

    app.route('/classes/:className')
        .get((req, res) => {
            getClass(req, res);
        });

    app.route('/alignment')
        .get((req, res) => {
            getAlignment(req, res);
        });
};