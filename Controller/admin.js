require('dotenv').config();
const { findAdmin, createAdmin, authentificate } = require('../Model/admin');
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');

const postAdmin = async (req, res) => {
  try {
    const body = {
      ...req.body,
      password: bcrypt.hashSync(req.body.password, 10)
    };

    console.log('body', body);
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

const signIn = async (req, res) => {
  try {
    const data = await authentificate(req.body);
    if (data.passwordIsValid) {
      const token = jwt.sign(
        { id: data.id },
        process.env.SECRET,
        { expiresIn: '24h' }
      );
      res.header('Access-Control-Expose-Headers', 'x-access-token');
      res.set('X-access-token', token);
      res.status(200).json({ auth: true });
    }
  } catch (err) {
    console.error(err);
    res.status(500).send('Internal server error');
  }
};
module.exports = {
  getAdmin,
  postAdmin,
  signIn
};
