const logger = require('../../util/logger');

module.exports = {
  async getCurriculumVitae() {
    logger.info('dao.js - Entering getCurriculumVitae()');

    // Obtenemos el CV
    const cv = 'HOLA';

    return cv;
  },
};
