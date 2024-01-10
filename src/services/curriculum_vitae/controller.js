const model = require('./model');
const logger = require('../../util/logger');

module.exports = {
  async getCurriculumVitae(req, res) {
    logger.info('controller.js - Entering getCurriculumVitae()');

    const language = req.params.LANGUAGE;

    var result = await model.getCurriculumVitae(language);

    return res.send(result);
  },
};
