const router = require('express').Router();
const photoController = require('../Controller/photo');

router.get('/', photoController.getPhotoAll);
router.get('/:id', photoController.getPhoto);
router.post('/', photoController.postOnePhoto);

module.exports = router;
