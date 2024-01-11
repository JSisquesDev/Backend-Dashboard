const dao = require('./dao');
const logger = require('../../util/logger');

//const { CurriculumVitae } = require('../../entities/CurriculumVitae');

module.exports = {
  async getCurriculumVitae(language) {
    logger.info('model.js - Entering getCurriculumVitae()');

    const personalData = await dao.getPersonalData(language);

    if (!personalData) {
      return null;
    }

    const socialMedia = await dao.getSocialMedia();

    if (!socialMedia) {
      return null;
    }

    const studies = await dao.getStudies(language);

    if (!studies) {
      return null;
    }

    /*
    const experience = await dao.getStudies(language);

    if (!experience) {
      return null;
    }
    */

    const languages = await dao.getLanguages();

    if (!languages) {
      return null;
    }

    const projects = await dao.getProjects(language);

    if (!projects) {
      return null;
    }

    const programs = await dao.getPrograms();

    if (!programs) {
      return null;
    }

    const idioms = await dao.getIdioms(language);

    if (!idioms) {
      return null;
    }

    const awards = await dao.getAwards(language);

    if (!awards) {
      return null;
    }

    const others = await dao.getOthers(language);

    if (!others) {
      return null;
    }

    const aboutMe = await dao.getAboutMe(language);

    if (!aboutMe) {
      return null;
    }

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
