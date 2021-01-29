const mysql = require('../db');

const findAllPictures = async () => {
  const result = await mysql.query('SELECT * FROM XX_SAMPLE');
  return result[0];
};

const findPictures = async (id) => {
  const result = await mysql.query('SELECT * FROM XX_SAMPLE WHERE id = ?', id);
  return result[0];
};

module.exports = {
  findAllPictures,
  findPictures
};
