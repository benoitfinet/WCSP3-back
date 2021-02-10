const mysql = require('../db');

const findAllPanier = async () => {
  const result = await mysql.query('SELECT * FROM panier');
  return result[0];
};

const findPanier = async (id) => {
  const result = await mysql.query('SELECT * FROM panier WHERE id = ?', id);
  return result[0];
};

const createOnePanier = async (body) => {
  const result = await mysql.query('INSERT INTO panier SET ?', body);
  return findPanier(result[0].insertId);
};

const putPanier = async (body, id) => {
  const result = await mysql.query('UPDATE panier SET ? WHERE id = ?', [body, id]);
  return result[0];
};

module.exports = {
  putPanier,
  findAllPanier,
  findPanier,
  createOnePanier
};
