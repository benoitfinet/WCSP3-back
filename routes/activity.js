const router = require('express').Router();
const activityController = require('../Controller/activity');

router.get('/', activityController.getActivityPhotoAll);
router.get('/:id', activityController.getOneActivityPhoto);

module.exports = router;
