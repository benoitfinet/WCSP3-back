const router = require('express').Router();
const horairesController = require('../Controller/horaires');

router.get('/', horairesController.getHorairesAll);
router.get('/:id', horairesController.getHoraires);
router.post('/', horairesController.postOneHoraires);
router.put('/:id', horairesController.PutOneHoraires);

module.exports = router;
