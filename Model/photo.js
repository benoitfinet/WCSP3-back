const mysql = require('../db');

// const activityId = require('../Model/activity');

const findAllPhoto = async () => {
  const result = await mysql.query('SELECT * FROM photo');
  return result[0];
};

const findPhoto = async (id) => {
  const result = await mysql.query('SELECT * FROM photo WHERE id = ?', id);
  return result[0];
};

const createOnePhoto = async (body) => {
  const result = await mysql.query('INSERT INTO photo SET ?', body);
  await mysql.query('INSERT INTO activity_photo SET photo_id=?', result[0].insertId);
  return findPhoto(result[0].insertId);
};

// cont createOneOnePhotoById = async (body) => {
//   const resultTwo = await mysql.query('INSERT INTO photo SET ?', body);
// }

module.exports = {
  findAllPhoto,
  findPhoto,
  createOnePhoto
};
