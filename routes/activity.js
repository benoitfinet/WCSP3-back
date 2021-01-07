const router = require('express').Router();
const activityController = require('../Controller/activity');

router.get('/', activityController.getActivityPhotoAll);
router.get('/name/:name', activityController.getOneActivityPhoto);
router.get('/id/:id', activityController.getOneActivityPhotoById);

module.exports = router;
