const model = require('./model');
const logger = require('../../util/logger');
const reqDetective = require('../../util/requestDetective');

module.exports = {
  async getCurriculumVitae(req, res) {
    logger.info('controller.js - Entering getCurriculumVitae()');

    const requestData = reqDetective.analize(req);

    logger.debug('controller.js - Request data: ' + JSON.stringify(requestData));

    let language = req.params.LANGUAGE;

    if (!language) {
      language = process.env.DEFAULT_LANGUAGE;
    }

    logger.debug('controller.js - Selected language: ' + language);

    var result = await model.getCurriculumVitae(language);

    if (!result) {
      logger.error('controller.js - CV not obtained: ');
      return res.status(400).send('');
    }

    logger.debug('controller.js - Response: ' + JSON.stringify(result));

    return res.status(200).send(result);
  },
};
