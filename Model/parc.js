const mysql = require('../db');

const findAllParc = async () => {
  const result = await mysql.query('SELECT * FROM parc');
  return result[0];
};

const findParc = async (id) => {
  const result = await mysql.query('SELECT * FROM parc WHERE id = ?', id);
  return result[0];
};

const createOneParc = async (body) => {
  const result = await mysql.query('INSERT INTO parc SET ?', body);
  return findParc(result[0].insertId);
};

const putParc = async (body, id) => {
  const result = await mysql.query('UPDATE parc SET ? WHERE id = ?', [body, id]);
  return result[0];
};

module.exports = {
  putParc,
  findAllParc,
  findParc,
  createOneParc
};
