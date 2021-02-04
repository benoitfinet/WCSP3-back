const router = require('express').Router();
const groupesController = require('../Controller/groupes');

router.get('/', groupesController.getGroupesAll);
router.get('/:id', groupesController.getGroupes);
router.post('/', groupesController.postOneGroupes);
router.put('/:id', groupesController.PutOneGroupes);

module.exports = router;
