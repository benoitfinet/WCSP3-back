const router = require('express').Router();
const petitCarouselController = require('../Controller/petitCarousel');

router.get('/', petitCarouselController.getPetitCarouselAll);
router.get('/:id', petitCarouselController.getPetitCarousel);
router.post('/', petitCarouselController.postOnePetitCarousel);
router.put('/:id', petitCarouselController.PutOnePetitCarousel);

module.exports = router;
