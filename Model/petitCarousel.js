const mysql = require('../db');

const findAllPetitCarousel = async () => {
  const result = await mysql.query('SELECT * FROM petitCarousel');
  return result[0];
};

const findPetitCarousel = async (id) => {
  const result = await mysql.query('SELECT * FROM petitCarousel WHERE id = ?', id);
  return result[0];
};

const createOnePetitCarousel = async (body) => {
  const result = await mysql.query('INSERT INTO petitCarousel SET ?', body);
  return findPetitCarousel(result[0].insertId);
};

const putPetitCarousel = async (body, id) => {
  const result = await mysql.query('UPDATE petitCarousel SET ? WHERE id = ?', [body, id]);
  return result[0];
};

module.exports = {
  putPetitCarousel,
  findAllPetitCarousel,
  findPetitCarousel,
  createOnePetitCarousel
};
