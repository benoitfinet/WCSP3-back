const router = require('express').Router();
const panierController = require('../Controller/panier');

router.get('/', panierController.getPanierAll);
router.get('/:id', panierController.getPanier);
router.post('/', panierController.postOnePanier);
router.put('/:id', panierController.PutOnePanier);

module.exports = router;
