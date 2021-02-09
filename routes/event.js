const router = require('express').Router();
const eventController = require('../Controller/event');

router.get('/', eventController.getEventAll);
router.get('/:id', eventController.getEvent);
router.post('/', eventController.postOneEvent);
router.put('/:id', eventController.PutOneEvent);

module.exports = router;
