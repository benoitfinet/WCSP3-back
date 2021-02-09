const mysql = require('../db');
const bcrypt = require('bcryptjs');

const createAdmin = async (body) => {
  const result = await mysql.query('INSERT INTO admin SET ?', body);
  return findAdmin(result[0].insertId);
};

const findAdmin = async (id) => {
  const result = await mysql.query('SELECT * FROM admin WHERE id = ?', id);
  console.log('MODAL result: ', result[0]);
  return result[0];
};
const authentificate = async (body) => {
  console.log('');
  const admin = await mysql.query('SELECT password, id FROM admin WHERE email = ?', body.email);
  console.log(admin[0][0].password);
  const passwordIsValid = bcrypt.compareSync(body.password, admin[0][0].password);
  return { passwordIsValid, id: admin.id };
  // const result = await mysql.query('SELECT password:, id FROM admin WHERE email = ?', email);
  // return result[0];
};
module.exports = {
  findAdmin,
  createAdmin,
  authentificate
};
