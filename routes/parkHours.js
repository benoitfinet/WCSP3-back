const router = require('express').Router();
const parkHoursController = require('../Controller/parkHours');

router.get('/', parkHoursController.getAllHours);
router.get('/:id', parkHoursController.getHour);
router.post('/', parkHoursController.CreateOne);
router.delete('/:id', parkHoursController.DeleteOne);
router.put('/:id', parkHoursController.PutOne);

module.exports = router;
