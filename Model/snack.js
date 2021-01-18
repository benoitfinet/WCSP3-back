const { CreateOne } = require('../Controller/photo');
const mysql = require('../db');

const findAllSnack = async () => {
  const result = await mysql.query('SELECT * FROM snack');
  return result[0];
};

const findSnack = async (id) => {
  const result = await mysql.query('SELECT * FROM snack WHERE id = ?', id);
  return result[0];
};

const createPhoto = async (body) => {
  const result = mysql.query('INSERT INTO snack SET ?', body);
  return findSnack(result[0]);
};

module.exports = {
  findAllSnack,
  findSnack,
  createPhoto
};
