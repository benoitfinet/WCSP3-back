const mysql = require('../db');

const findAllGroupes = async () => {
  const result = await mysql.query('SELECT * FROM groupes');
  return result[0];
};

const findGroupes = async (id) => {
  const result = await mysql.query('SELECT * FROM groupes WHERE id = ?', id);
  return result[0];
};

const createOneGroupes = async (body) => {
  const result = await mysql.query('INSERT INTO groupes SET ?', body);
  return findGroupes(result[0].insertId);
};

const putGroupes = async (body, id) => {
  const result = await mysql.query('UPDATE groupes SET ? WHERE id = ?', [body, id]);
  return result[0];
};

module.exports = {
  putGroupes,
  findAllGroupes,
  findGroupes,
  createOneGroupes
};
