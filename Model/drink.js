const mysql = require('../db');

const findAllDrink = async () => {
  const result = await mysql.query('SELECT * FROM drink');
  return result[0];
};

const findDrink = async (id) => {
  const result = await mysql.query('SELECT * FROM drink WHERE id = ?', id);
  return result[0];
};

const findDrinkByName = async (name) => {
  console.log(name);
  const result = await mysql.query('SELECT * FROM drink WHERE name = ?', name);
  return result[0];
};

const createDrink = async (body) => {
  const result = await mysql.query('INSERT INTO drink SET ?', body);
  return findDrink(result[0].insertId);
};

const deleteDrink = async (id) => {
  const result = await mysql.query('DELETE FROM drink WHERE id = ?', id);
  return result[0];
};

const putDrink = async (body, id) => {
  const result = await mysql.query('UPDATE drink SET ? WHERE id = ?', [body, id]);
  return result[0];
};

module.exports = {
  findAllDrink,
  findDrink,
  createDrink,
  deleteDrink,
  putDrink,
  findDrinkByName
};
