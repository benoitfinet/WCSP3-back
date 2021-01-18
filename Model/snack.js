const mysql = require('../db');

const findAllSnack = async () => {
  const result = await mysql.query('SELECT * FROM snack');
  return result[0];
};

const findSnack = async (id) => {
  const result = await mysql.query('SELECT * FROM snack WHERE id = ?', id);
  return result[0];
};

const createSnack = async (body) => {
  const result = await mysql.query('INSERT INTO snack SET ?', body);
  return findSnack(result[0].insertId);
};

const deleteSnack = async (id) => {
  const result = await mysql.query('DELETE FROM snack WHERE id = ?', id);
  return result[0];
};

const putSnack = async (body, id) => {
  const result = await mysql.query('UPDATE snack SET ? WHERE id = ?', [body, id]);
  return result[0];
};

module.exports = {
  findAllSnack,
  findSnack,
  createSnack,
  deleteSnack,
  putSnack
};
