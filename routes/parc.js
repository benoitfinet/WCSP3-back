const router = require('express').Router();
const parcController = require('../Controller/parc');

router.get('/', parcController.getParcAll);
router.get('/:id', parcController.getParc);
router.post('/', parcController.postOneParc);
router.put('/:id', parcController.PutOneParc);

module.exports = router;
