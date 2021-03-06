const mysql = require('../db');

const findAllInfo = async () => {
  const result = await mysql.query('SELECT * FROM info');
  return result[0];
};

const findInfo = async (id) => {
  const result = await mysql.query('SELECT * FROM info WHERE id = ?', id);
  return result[0];
};

const createOneInfo = async (body) => {
  const result = await mysql.query('INSERT INTO info SET ?', body);
  return findInfo(result[0].insertId);
};

const putInfo = async (body, id) => {

  const result = await mysql.query('UPDATE info SET ? WHERE id = ?', [body, id]);
  return result[0];
};

module.exports = {
  putInfo,
  findAllInfo,
  findInfo,
  createOneInfo
};
