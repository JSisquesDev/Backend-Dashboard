const PersonalData = require('../../database/models/PersonalData');
const logger = require('../../util/logger');
const db = require('../../settings/database');

module.exports = {
  async getCurriculumVitae() {
    logger.info('dao.js - Entering getCurriculumVitae()');

    //await db.connect();
    try {
      return await PersonalData(db).findAll();
    } catch (error) {
      logger.error('dao.js - Error');
      logger.error('dao.js - ' + error);
      return null;
    }
  },
};
