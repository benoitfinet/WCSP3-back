const mysql = require('../db');

const findAllTarifs = async () => {
  const result = await mysql.query('SELECT * FROM tarifs');
  return result[0];
};

const findTarifs = async (id) => {
  const result = await mysql.query('SELECT * FROM tarifs WHERE id = ?', id);
  return result[0];
};

const createOneTarifs = async (body) => {
  const result = await mysql.query('INSERT INTO tarifs SET ?', body);
  return findTarifs(result[0].insertId);
};

const putTarifs = async (body, id) => {
  const result = await mysql.query('UPDATE tarifs SET ? WHERE id = ?', [body, id]);
  return result[0];
};

module.exports = {
  putTarifs,
  findAllTarifs,
  findTarifs,
  createOneTarifs
};
