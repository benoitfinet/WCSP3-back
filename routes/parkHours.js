const router = require('express').Router();
const parkHoursController = require('../Controller/parkHours');

router.get('/', parkHoursController.getAllHours);
router.get('/:id', parkHoursController.getHour);
router.post('/', parkHoursController.CreateOneHour);
router.delete('/:id', parkHoursController.DeleteOneHour);
router.put('/:id', parkHoursController.PutOne);

module.exports = router;
