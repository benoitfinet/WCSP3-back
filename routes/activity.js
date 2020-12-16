const router = require('express').Router();
const activityController = require('../Controller/activity');

router.get('/', activityController.getActivityPhotoAll);

module.exports = router;

// const router = require('express').Router();
// const photoController = require('../Controller/activity');

// router.get('/', photoController.getPhotoAll);
// router.get('/:id', photoController.getPhoto);

// module.exports = router;
