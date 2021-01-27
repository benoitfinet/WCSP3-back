const router = require('express').Router();
const calandarController = require('../Controller/calandar');

router.get('/', calandarController.getCalandarAll);
router.get('/:id', calandarController.getOneCalandarById);
router.get('/name/:name', calandarController.getOneCalandarByName);
router.post('/', calandarController.posteOneCalandar);
router.put('/:id', calandarController.putOneCalandar);
router.delete('/:id', calandarController.deletedOneCalandar);

module.exports = router;
