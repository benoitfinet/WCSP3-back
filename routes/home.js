const router = require('express').Router();
const homeController = require('../Controller/home');

router.get('/', homeController.getHomeAll);
router.get('/:id', homeController.getHome);
router.post('/', homeController.postOneHome);
router.put('/:id', homeController.PutOneHome);

module.exports = router;
