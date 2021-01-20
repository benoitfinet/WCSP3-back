const router = require('express').Router();
const activityController = require('../Controller/activity');

router.get('/', activityController.getActivityPhotoAll);
router.get('/name/:name', activityController.getOneActivityPhoto);
router.get('/id/:id', activityController.getOneActivityPhotoById);
router.post('/', activityController.postOneActivity);
router.put('/id/:id', activityController.putOneActivityPhotoById);

module.exports = router;
