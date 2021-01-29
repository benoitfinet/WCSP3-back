const router = require('express').Router();
const infoController = require('../Controller/info');

router.get('/', infoController.getInfoAll);
router.get('/:id', infoController.getInfo);
router.post('/', infoController.postOneInfo);
router.put('/:id', infoController.PutOneinfo);

module.exports = router;
