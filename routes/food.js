const router = require('express').Router();
const foodController = require('../Controller/food');

router.get('/', foodController.getfoodAll);
router.get('/:id', foodController.getfood);
router.post('/', foodController.CreateOneFood);
router.delete('/:id', foodController.DeleteOneFood);
router.put('/name/:id', foodController.PutOneFood);
router.get('/name/:name', foodController.getfoodByName);
module.exports = router;
