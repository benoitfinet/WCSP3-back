const mysql = require('../db');

const findCalandarAll = async () => {
  const result = await mysql.query('SELECT * FROM calandar');
  return result[0];
};

const findOneCalandarById = async (id) => {
  const result = await mysql.query('SELECT * FROM calandar WHERE id = ?', id);
  return result[0];
};

const findOneCalandarByName = async (name) => {
  const result = await mysql.query('SELECT * FROM calandar WHERE name = ?', name);
  return result[0];
};

const createOneCalandar = async (body) => {
  const result = await mysql.query('INSERT INTO calandar SET ?', body);
  return result[0].insertId;
};

const modifyOneCalandar = async (id, body) => {
  const result = await mysql.query('UPDATE calandar SET ? WHERE id = ?', [body, id]);
  return result[0];
};

const deleteOneCalandar = async (id) => {
  const result = await mysql.query('DELETE FROM calandar WHERE id = ?', id);
  return result[0];
};

module.exports = {
  findCalandarAll,
  findOneCalandarById,
  findOneCalandarByName,
  createOneCalandar,
  modifyOneCalandar,
  deleteOneCalandar
};
