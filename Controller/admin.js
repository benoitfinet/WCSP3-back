const { findAdmin, createAdmin, authentificate } = require('../Model/admin');
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');

const postAdmin = async (req, res) => {
  try {
    console.log('req: ', req.body)
    const body = {
      ...req.body,
      password: bcrypt.hashSync(req.body.password, 10)
    };

    console.log('body', body)
    const data = await createAdmin(body);
    res.status(200).json(data[0]);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Internal server error');
  }
};

const getAdmin = async (req, res) => {
  try {
    const data = await findAdmin(req.params.id);
    res.status(200).json(data[0]);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const postAuthentificate = async (req, res) => {
  const data = await authentificate()
}
module.exports = {
  getAdmin,
  postAdmin
};
