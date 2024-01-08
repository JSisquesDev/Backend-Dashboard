const { default: PersonalData } = require('../../entities/database/personalData');
const logger = require('../../util/logger');

const sqlz = require('sequelize');
const Sequelize = sqlz.Sequelize;

module.exports = {
  async getCurriculumVitae() {
    logger.info('dao.js - Entering getCurriculumVitae()');

    // Obtenemos el CV
    const cv = await PersonalData.findAll();

    return cv;
  },
};
