const mysql = require('../db');

const findAllEvent = async () => {
  const result = await mysql.query('SELECT * FROM event');
  return result[0];
};

const findEvent = async (id) => {
  const result = await mysql.query('SELECT * FROM event WHERE id = ?', id);
  return result[0];
};

const createOneEvent = async (body) => {
  const result = await mysql.query('INSERT INTO event SET ?', body);
  return findEvent(result[0].insertId);
};

const putEvent = async (body, id) => {
  const result = await mysql.query('UPDATE event SET ? WHERE id = ?', [body, id]);
  return result[0];
};

module.exports = {
  putEvent,
  findAllEvent,
  findEvent,
  createOneEvent
};
