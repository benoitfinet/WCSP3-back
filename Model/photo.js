const mysql = require('../db');

const findAllPhoto = async () => {
  const result = await mysql.query('SELECT * FROM photo');
  return result[0];
};

const findPhoto = async (id) => {
  const result = await mysql.query('SELECT * FROM photo WHERE id = ?', id);
  return result[0];
};

const postPhoto = async (body) => {
  const result = await mysql.query('INSERT INTO photo SET ?', body)
  return findPhoto(result[0].insertId);
}

module.exports = {
  findAllPhoto,
  findPhoto,
  postPhoto
};
