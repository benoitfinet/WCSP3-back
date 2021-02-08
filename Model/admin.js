const mysql = require('../db');
// const bcrypt = require('bcryptjs');

const createAdmin = async (body) => {
  const result = await mysql.query('INSERT INTO admin SET ?', body);
  return findAdmin(result[0].insertId);
};

const findAdmin = async (id) => {
  const result = await mysql.query('SELECT * FROM admin WHERE id = ?', id);
  return result[0];
};
const authentificate = async (email) => {
  // const admin = await mysql.query('SELECT password FROM admin WHERE email = ?', body.email);
  // const passwordIsValid = bcrypt.compareSync(body.passward, admin[0].passward);
  // return passwordIsValid;
  const result = await mysql.query('SELECT email FROM admin WHERE email = ?',email);
  return result[0];
};
module.exports = {
  findAdmin,
  createAdmin,
  authentificate
};
