const mysql = require('../db');

const findAllHoraires = async () => {
  const result = await mysql.query('SELECT * FROM horaires');
  return result[0];
};

const findHoraires = async (id) => {
  const result = await mysql.query('SELECT * FROM horaires WHERE id = ?', id);
  return result[0];
};

const createOneHoraires = async (body) => {
  const result = await mysql.query('INSERT INTO horaires SET ?', body);
  return findHoraires(result[0].insertId);
};

const putHoraires = async (body, id) => {
  const result = await mysql.query('UPDATE horaires SET ? WHERE id = ?', [body, id]);
  return result[0];
};

module.exports = {
  putHoraires,
  findAllHoraires,
  findHoraires,
  createOneHoraires
};
