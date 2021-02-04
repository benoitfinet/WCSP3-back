const router = require('express').Router();
const activityController = require('../Controller/activity');

router.get('/', activityController.getActivityAll);
router.get('/:id', activityController.getActivity);
router.post('/', activityController.postOneActivity);
router.put('/:id', activityController.PutOneActivity);

module.exports = router;
