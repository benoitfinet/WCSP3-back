const mysql = require('../db');

const findAllHome = async () => {
  const result = await mysql.query('SELECT * FROM home');
  return result[0];
};

const findHome = async (id) => {
  const result = await mysql.query('SELECT * FROM home WHERE id = ?', id);
  return result[0];
};

const createOneHome = async (body) => {
  const result = await mysql.query('INSERT INTO home SET ?', body);
  return findHome(result[0].insertId);
};

const putHome = async (body, id) => {
  const result = await mysql.query('UPDATE home SET ? WHERE id = ?', [body, id]);
  return result[0];
};

module.exports = {
  putHome,
  findAllHome,
  findHome,
  createOneHome
};
