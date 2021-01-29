const router = require('express').Router();
const PicturesController = require('../Controller/pictures');

router.get('/', PicturesController.getPicturesAll);
router.get('/:id', PicturesController.getPictures);

module.exports = router;
