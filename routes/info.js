const router = require('express').Router();
const infoController = require('../controller/info');

router.get('/', infoController.getInfoAll);
router.get('/:id', infoController.getOneInfoById);
router.get('/name/:name', infoController.getOneInfoByName);
router.post('/', infoController.postOneInfo);
router.put('/:id', infoController.putOneInfo);
router.delete('/:id', infoController.deletedOneInfo);

module.exports = router;
