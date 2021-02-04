const mysql = require('../db');

const findAllActivity = async () => {
  const result = await mysql.query('SELECT * FROM activity');
  return result[0];
};

const findActivity = async (id) => {
  const result = await mysql.query('SELECT * FROM activity WHERE id = ?', id);
  return result[0];
};

const createOneActivity = async (body) => {
  const result = await mysql.query('INSERT INTO activity SET ?', body);
  return findActivity(result[0].insertId);
};

const putActivity = async (body, id) => {
  const result = await mysql.query('UPDATE activity SET ? WHERE id = ?', [body, id]);
  return result[0];
};

module.exports = {
  putActivity,
  findAllActivity,
  findActivity,
  createOneActivity
};
