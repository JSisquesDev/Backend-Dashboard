const dao = require('./dao');
const logger = require('../../util/logger');

module.exports = {
  async getCurriculumVitae(language) {
    logger.info('model.js - Entering getCurriculumVitae()');

    // Obtenemos el CV
    const cv = await dao.getCurriculumVitae(language);

    return cv;
  },
};
