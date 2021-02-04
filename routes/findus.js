const router = require('express').Router();
const findusController = require('../Controller/findus');

router.get('/', findusController.getFindusAll);
router.get('/:id', findusController.getFindus);
router.post('/', findusController.postOneFindus);
router.put('/:id', findusController.PutOneFindus);

module.exports = router;
