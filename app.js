require('dotenv').config();

const logger = require('./src/util/logger.js');
//const database = require('./src/settings/database.js');
//const database = require('./src/database/models/index.js');

const express = require('express');
const app = express();
const port = process.env.PORT;

// Constantes BBDD
const dbHost = process.env.DATABASE_URL;
const db = process.env.DATABASE;
const dbPort = process.env.db_PORT;
const dbUsername = process.env.DATABASE_USERNAME;
const dbPassword = process.env.DATABASE_PASSWORD;

// Conectamos la BBDD
//database.connect(dbHost, db, dbUsername, dbPassword);

// Rutas
app.use(require('./src/services/curriculum_vitae/routes.js'));

app.listen(port, () => {
  logger.info(`Server initialized, runnig at port ${port}`);
});
