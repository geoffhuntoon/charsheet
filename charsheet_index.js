import express from 'express';
import { routes } from './nodesrc/routes'
import bodyParser from 'body-parser';

const app = express();
const PORT = 3000;

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

routes(app);

app.use('/node_modules', express.static('node_modules'));
app.use('/public', express.static('public'));
app.use('/includes', express.static('includes'));

app.get('/', () => {
    console.log(`Running on ${PORT}`);
});

app.listen(PORT, () => {
    console.log(`Running on port ${PORT}`);
});