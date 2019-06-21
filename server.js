const express = require('express');
const app = express()
const env = require('./config')
// const port = process.env.PORT || 3000
const bodyParser = require('body-parser')
const routes = require('./routes/routes')
const cors = require('cors');

const configCors = {
    origin: ['http://192.168.100.28', 'http://192.168.100.15', 'http://192.168.100.56'],
    method: ['GET', 'POST', 'PUT', 'DELETE']
}
app.use(cors(configCors))


app.use(
    bodyParser.urlencoded({
        extended: true
    })
)
app.use(bodyParser.json());
routes(app);

app.listen(env.PORT);
console.log(`hello word ${env.PORT}`);