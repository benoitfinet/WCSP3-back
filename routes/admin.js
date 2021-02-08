const router = require('express').Router();
const adminController = require('../Controller/admin');

router.get('/', adminController.getAdmin);
router.post('/', adminController.postAdmin);

module.exports = router;
