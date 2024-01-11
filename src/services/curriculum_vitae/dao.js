const PersonalData = require('../../database/models/PersonalData');
const logger = require('../../util/logger');
const db = require('../../settings/database');
const Studies = require('../../database/models/Studies');
const Experience = require('../../database/models/Experience');
const Language = require('../../database/models/Language');
const Project = require('../../database/models/Project');
const Program = require('../../database/models/Program');
const Idiom = require('../../database/models/Idiom');
const Award = require('../../database/models/Award');
const Other = require('../../database/models/Other');
const AboutMe = require('../../database/models/AboutMe');
const SocialMedia = require('../../database/models/SocialMedia');

module.exports = {
  async getPersonalData(language) {
    logger.info('dao.js - Entering getPersonalData()');

    try {
      return await PersonalData(db).findAll({ where: { language: language } });
    } catch (error) {
      logger.error('dao.js - Error retrieving personal data');
      logger.error('dao.js - ' + error);
      return null;
    }
  },
  async getStudies(language) {
    logger.info('dao.js - Entering getStudies()');

    try {
      return await Studies(db).findAll({ where: { language: language } });
    } catch (error) {
      logger.error('dao.js - Error retrieving studies data');
      logger.error('dao.js - ' + error);
      return null;
    }
  },

  async getExperience(language) {
    logger.info('dao.js - Entering getExperience()');

    try {
      return await Experience(db).findAll({ where: { language: language } });
    } catch (error) {
      logger.error('dao.js - Error retrieving experience data');
      logger.error('dao.js - ' + error);
      return null;
    }
  },

  async getLanguages() {
    logger.info('dao.js - Entering getLanguages()');

    try {
      return await Language(db).findAll();
    } catch (error) {
      logger.error('dao.js - Error retrieving languages data');
      logger.error('dao.js - ' + error);
      return null;
    }
  },

  async getProjects(language) {
    logger.info('dao.js - Entering getProjects()');

    try {
      return await Project(db).findAll({ where: { language: language } });
    } catch (error) {
      logger.error('dao.js - Error retrieving projects data');
      logger.error('dao.js - ' + error);
      return null;
    }
  },

  async getSocialMedia() {
    logger.info('dao.js - Entering getSocialMedia()');

    try {
      return await SocialMedia(db).findAll();
    } catch (error) {
      logger.error('dao.js - Error retrieving social media data');
      logger.error('dao.js - ' + error);
      return null;
    }
  },

  async getPrograms() {
    logger.info('dao.js - Entering getPrograms()');

    try {
      return await Program(db).findAll();
    } catch (error) {
      logger.error('dao.js - Error retrieving programs data');
      logger.error('dao.js - ' + error);
      return null;
    }
  },
  async getIdioms(language) {
    logger.info('dao.js - Entering getIdioms()');

    try {
      return await Idiom(db).findAll({ where: { language: language } });
    } catch (error) {
      logger.error('dao.js - Error retrieving idioms data');
      logger.error('dao.js - ' + error);
      return null;
    }
  },
  async getAwards(language) {
    logger.info('dao.js - Entering getAwards()');

    try {
      return await Award(db).findAll({ where: { language: language } });
    } catch (error) {
      logger.error('dao.js - Error retrieving awards data');
      logger.error('dao.js - ' + error);
      return null;
    }
  },
  async getOthers(language) {
    logger.info('dao.js - Entering getOthers()');

    try {
      return await Other(db).findAll({ where: { language: language } });
    } catch (error) {
      logger.error('dao.js - Error retrieving others data');
      logger.error('dao.js - ' + error);
      return null;
    }
  },
  async getAboutMe(language) {
    logger.info('dao.js - Entering getAboutMe()');

    try {
      return await AboutMe(db).findAll({ where: { language: language } });
    } catch (error) {
      logger.error('dao.js - Error retrieving about me data');
      logger.error('dao.js - ' + error);
      return null;
    }
  },
};
