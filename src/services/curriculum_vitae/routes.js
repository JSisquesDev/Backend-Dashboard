const express = require('express');
const controller = require('./controller');

const router = express.Router();

router.get('/cv', controller.getCurriculumVitae);

module.exports = router;
