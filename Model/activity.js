const mysql = require('../db');

const findActivityPhotoAll = async () => {
  const result = await mysql.query('SELECT * FROM activity ac JOIN price p ON p.activity_id = ac.id JOIN activity_photo ap ON ap.activity_id = ac.id JOIN photo ph ON ap.photo_id = ph.id JOIN price prc ON prc.activity_id = ac.id');
  return result[0];
};

const findOneActivityPhotoByName = async (name) => {
  const result = await mysql.query(
    'SELECT * FROM activity ac JOIN price p ON p.activity_id = ac.id JOIN activity_photo ap ON ap.activity_id = ac.id JOIN photo ph ON ap.photo_id = ph.id JOIN price prc ON prc.activity_id = ac.id WHERE ac.name= ?', name);
  console.log(result[0]);
  return result[0];
};
const findOneActivityPhotoById = async (id) => {
  const result = await mysql.query(
    'SELECT * FROM activity ac JOIN price p ON p.activity_id = ac.id JOIN activity_photo ap ON ap.activity_id = ac.id JOIN photo ph ON ap.photo_id = ph.id JOIN price prc ON prc.activity_id = ac.id WHERE ac.id=?', id);
  return result[0];
};

const createOneActivity = async (bodyActivity, bodyPhoto, bodyPrice) => {
  const resultActivity = await mysql.query('INSERT INTO activity SET ?', bodyActivity);
  console.log('resultActivity MODEL', resultActivity);

  const resultPhoto = await mysql.query('INSERT INTO photo SET ?', bodyPhoto);
  console.log('resultPhoto MODEL', resultPhoto);

  bodyPrice.activity_id = resultActivity[0].insertId;
  await mysql.query('INSERT INTO price SET ?', bodyPrice);

  await mysql.query('INSERT INTO activity_photo SET ?', { activity_id: resultActivity[0].insertId, photo_id: resultPhoto[0].insertId });
  return {
    activityId: resultActivity[0].insertId,
    photo_id: resultPhoto[0].insertId,
    resultPrice_id: resultPhoto[0]
  };
};

module.exports = {
  findActivityPhotoAll,
  findOneActivityPhotoByName,
  findOneActivityPhotoById,
  createOneActivity
};
