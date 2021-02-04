const mysql = require('../db');

const findAllFindus = async () => {
  const result = await mysql.query('SELECT * FROM findus');
  return result[0];
};

const findFindus = async (id) => {
  const result = await mysql.query('SELECT * FROM findus WHERE id = ?', id);
  return result[0];
};

const createOneFindus = async (body) => {
  const result = await mysql.query('INSERT INTO findus SET ?', body);
  return findFindus(result[0].insertId);
};

const putFindus = async (body, id) => {
  const result = await mysql.query('UPDATE findus SET ? WHERE id = ?', [body, id]);
  return result[0];
};

module.exports = {
  putFindus,
  findAllFindus,
  findFindus,
  createOneFindus
};
