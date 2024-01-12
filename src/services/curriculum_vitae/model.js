const dao = require('./dao');
const logger = require('../../util/logger');

//const { CurriculumVitae } = require('../../entities/CurriculumVitae');

module.exports = {
  async getCurriculumVitae(language) {
    logger.info('model.js - Entering getCurriculumVitae()');

    const personalData = await dao.getPersonalData(language);

    if (!personalData) {
      logger.error('model.js - Personal data not founded');
      return null;
    }

    logger.debug('model.js - Personal data: ' + JSON.stringify(personalData));

    const socialMedia = await dao.getSocialMedia();

    if (!socialMedia) {
      logger.error('model.js - Studies not founded');
      return null;
    }

    const studies = await dao.getStudies(language);

    if (!studies) {
      logger.error('model.js - Studies not founded');
      return null;
    }

    logger.debug('model.js - Studies: ' + JSON.stringify(studies));

    /*
    const experience = await dao.getStudies(language);

    if (!experience) {
      logger.error('model.js - Studies not founded');
      return null;
    }
    */

    const languages = await dao.getLanguages();

    if (!languages) {
      logger.error('model.js - Languages not founded');
      return null;
    }

    logger.debug('model.js - Languages: ' + JSON.stringify(languages));

    const projects = await dao.getProjects(language);

    if (!projects) {
      logger.error('model.js - Projects not founded');
      return null;
    }

    logger.debug('model.js - Projects: ' + JSON.stringify(projects));

    const programs = await dao.getPrograms();

    if (!programs) {
      logger.error('model.js - Programs not founded');
      return null;
    }

    logger.debug('model.js - Programs: ' + JSON.stringify(programs));

    const idioms = await dao.getIdioms(language);

    if (!idioms) {
      logger.error('model.js - Idioms not founded');
      return null;
    }

    logger.debug('model.js - Idioms: ' + JSON.stringify(idioms));

    const awards = await dao.getAwards(language);

    if (!awards) {
      logger.error('model.js - Awards not founded');
      return null;
    }

    logger.debug('model.js - Awards: ' + JSON.stringify(awards));

    const others = await dao.getOthers(language);

    if (!others) {
      logger.error('model.js - Others not founded');
      return null;
    }

    logger.debug('model.js - Others: ' + JSON.stringify(others));

    const aboutMe = await dao.getAboutMe(language);

    if (!aboutMe) {
      logger.error('model.js - About me not founded');
      return null;
    }

    logger.debug('model.js - About me: ' + JSON.stringify(aboutMe));

    const cv = {
      personalData: personalData,
      socialMedia: socialMedia,
      studies: studies,
      //experience: experience,
      languages: languages,
      projects: projects,
      programs: programs,
      idioms: idioms,
      awards: awards,
      others: others,
      aboutMe: aboutMe,
    };

    //const cu = new CurriculumVitae(personalData);
    return cv;
  },
};
