require('dotenv').config();
const logger = require('../util/logger');
const { Sequelize } = require('sequelize');

module.exports = {
  async connect(host, database, username, password) {
    logger.info('database.js - Entering getCurriculumVitae()');

    const sequelize = new Sequelize(database, username, password, {
      host: host,
      dialect: 'mysql',
    });

    try {
      await sequelize.authenticate();
      logger.info('database.js - Established connection');
    } catch (error) {
      logger.error('database.js - Unable to connect to the database:', error);
    }
  },
};
