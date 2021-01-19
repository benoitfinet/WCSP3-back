const router = require('express').Router();
const DrinkController = require('../Controller/drink');

router.get('/', DrinkController.getDrinkAll);
router.get('/:id', DrinkController.getDrink);
router.post('/', DrinkController.CreateOne);
router.delete('/:id', DrinkController.DeleteOne);
router.put('/:id', DrinkController.PutOne);

module.exports = router;
