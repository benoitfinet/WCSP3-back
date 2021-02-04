const router = require('express').Router();
const tarifsController = require('../Controller/tarifs');

router.get('/', tarifsController.getTarifsAll);
router.get('/:id', tarifsController.getTarifs);
router.post('/', tarifsController.postOneTarifs);
router.put('/:id', tarifsController.PutOneTarifs);

module.exports = router;
