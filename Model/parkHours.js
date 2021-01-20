const mysql = require('../db');

const findAllHours = async () => {
  const result = await mysql.query('SELECT * FROM park_hours');
  return result[0];
};

const findHour = async (id) => {
  const result = await mysql.query('SELECT * FROM park_hours WHERE id = ?', id);
  return result[0];
};

const createHour = async (body) => {
  const result = await mysql.query('INSERT INTO parc_hours SET ?', body);
  console.log(result);
  return findHour(result[0].insertId);
};
const deleteHour = async (id) => {
  const result = await mysql.query('DELETE FROM park_hours WHERE id = ?', id);
  return result[0];
};

const putHour = async (body, id) => {
  const result = await mysql.query('UPDATE park_hours SET ? WHERE id = ?', [body, id]);
  return result[0];
};

module.exports = {
  findAllHours,
  findHour,
  createHour,
  deleteHour,
  putHour
};
