const router = require('express').Router();
const adminController = require('../Controller/admin');

router.get('/:id', adminController.getAdmin);
router.post('/auth', adminController.signIn);
router.post('/', adminController.postAdmin);

module.exports = router;
