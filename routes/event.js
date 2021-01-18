const router = require('express').Router();
const eventController = require('../Controller/event');

router.get('/', eventController.getAllEventPhoto);
router.get('/:id', eventController.getOnePhotoEventById);
router.get('/:name', eventController.getOneEventPhotoByName);
router.post('/', eventController.postEvent);
router.post('/:id/photo/:id', eventController.postOneEventWithPhoto);
router.delete('/:id', eventController.deleteOneEvent);

module.exports = router;