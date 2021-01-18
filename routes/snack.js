const router = require('express').Router();
const snackController = require('../Controller/snack');

router.get('/', snackController.getSnackAll);
router.get('/:id', snackController.getSnack);
router.post('/', snackController.CreateOne);
router.delete('/:id', snackController.DeleteOne);
router.put('/:id', snackController.PutOne);

module.exports = router;
