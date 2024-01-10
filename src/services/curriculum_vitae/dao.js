const PersonalData = require('../../database/models/PersonalData');
const logger = require('../../util/logger');
const db = require('../../settings/database');
const Studies = require('../../database/models/Studies');

module.exports = {
  async getCurriculumVitae(language) {
    logger.info('dao.js - Entering getCurriculumVitae()');

    //await db.connect();
    try {
      const personalData = await PersonalData(db).findAll({ where: { language: language } });
      const studies = await Studies(db).findAll({ where: { language: language } });

      console.log(personalData);
      console.log(studies);

      return studies;
    } catch (error) {
      logger.error('dao.js - Error');
      logger.error('dao.js - ' + error);
      return null;
    }
  },
};
