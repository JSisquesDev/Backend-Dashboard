const dao = require('./dao');
const logger = require('../../util/logger');

module.exports = {
  async getCurriculumVitae() {
    logger.info('model.js - Entering getCurriculumVitae()');

    // Obtenemos el CV
    const cv = await dao.getCurriculumVitae();

    return cv;
  },
};
