const mysql = require('../db');

const Allfood = async () => {
  const result = await mysql.query('SELECT * FROM food');
  return result[0];
};

const findfood = async (id) => {
  const result = await mysql.query('SELECT * FROM food WHERE id = ?', id);
  return result[0];
};
const findfoodByName = async (name) => {
  const result = await mysql.query('SELECT * FROM food WHERE name = ?', name);
  console.log(result);
  return result[0];
};

const createfood = async (body) => {
  const result = await mysql.query('INSERT INTO food SET ?', body);
  return findfood(result[0].insertId);
};

const deletefood = async (id) => {
  const result = await mysql.query('DELETE FROM food WHERE id = ?', id);
  return result[0];
};

const putfood = async (body, id) => {
  const result = await mysql.query('UPDATE food SET ? WHERE id = ?', [body, id]);
  return result[0];
};

module.exports = {
  Allfood,
  findfood,
  createfood,
  deletefood,
  putfood,
  findfoodByName
};
