const router = require('express').Router();
const photoController = require('../Controller/photo');

router.get('/', photoController.getPhotoAll);
router.get('/:id', photoController.getPhoto);
router.post('/', photoController.getPostedPhoto);
router.delete('/:id', photoController.handleDelete);

module.exports = router;
