require('dotenv').config();
const logger = require('../util/logger');
const { Sequelize } = require('sequelize');

/*
module.exports = {
  async connect() {
    logger.info('database.js - Entering getCurriculumVitae()');

    // Constantes BBDD
    const dbHost = process.env.DATABASE_URL;
    const dbName = process.env.DATABASE;
    const dbPort = process.env.db_PORT;
    const dbUsername = process.env.DATABASE_USERNAME;
    const dbPassword = process.env.DATABASE_PASSWORD;
    const dbDialect = process.env.DATABASE_DIALECT;

    const sequelize = new Sequelize(dbName, dbUsername, dbPassword, {
      host: dbHost,
      dialect: dbDialect,
    });

    try {
      await sequelize.authenticate();
      logger.info('database.js - Established connection');
    } catch (error) {
      logger.error('database.js - Unable to connect to the database:', error);
    }
  },
};

*/

// Constantes BBDD
const dbHost = process.env.DATABASE_URL;
const dbName = process.env.DATABASE;
const dbPort = process.env.db_PORT;
const dbUsername = process.env.DATABASE_USERNAME;
const dbPassword = process.env.DATABASE_PASSWORD;
const dbDialect = process.env.DATABASE_DIALECT;

const db = new Sequelize(dbName, dbUsername, dbPassword, {
  host: dbHost,
  dialect: dbDialect,
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000,
  },
});

module.exports = db;
