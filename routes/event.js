const router = require('express').Router();
const eventController = require('../Controller/event');

router.get('/', eventController.getAllEventPhoto);
router.get('/:id', eventController.getOnePhotoEventById);
router.get('/name/:name', eventController.getOneEventPhotoByName);
router.post('/', eventController.postOneEventWithPhoto);
router.delete('/:id', eventController.deleteOneEvent);
router.put('/:id', eventController.putOneActivityPhoto);

module.exports = router;
