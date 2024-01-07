const model = require('./model');
const logger = require('../../util/logger');

module.exports = {
  async getCurriculumVitae(req, res) {
    logger.info('controller.js - Entering getCurriculumVitae()');
    var result = await model.getCurriculumVitae();

    return res.send(result);
  },
};
