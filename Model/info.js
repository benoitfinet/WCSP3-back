const mysql = require('../db');

const findInfoAll = async () => {
  const result = await mysql.query('SELECT * FROM info');
  return result[0];
};

const findOneInfoById = async (id) => {
  const result = await mysql.query('SELECT * FROM info WHERE id = ?', id);
  return result[0];
};

const findOneInfoByName = async (name) => {
  const result = await mysql.query('SELECT * FROM info WHERE title = ?', name);
  return result[0];
};

const createOneInfo = async (body) => {
  const result = await mysql.query('INSERT INTO info SET ? ', body);
  return result[0].insertId;
};

const modifyOneInfo = async (body, id) => {
  const result = await mysql.query('UPDATE info SET ? WHERE id = ?', [body, id]);
  return result[0];
};

const deleteOneInfo = async (id) => {
  await mysql.query('DELETE FROM info WHERE id = ?', id);
};

module.exports = {
  findInfoAll,
  findOneInfoById,
  findOneInfoByName,
  createOneInfo,
  modifyOneInfo,
  deleteOneInfo
};
