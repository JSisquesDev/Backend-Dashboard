const model = require('./model');
const logger = require('../../util/logger');

module.exports = {
  async getCurriculumVitae(req, res) {
    logger.info('controller.js - Entering getCurriculumVitae()');

    let language = req.params.LANGUAGE;

    if (!language) {
      language = process.env.DEFAULT_LANGUAGE;
    }

    var result = await model.getCurriculumVitae(language);

    if (!result) {
      return res.send('');
    }

    return res.send(result);
  },
};
