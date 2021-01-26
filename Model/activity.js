const mysql = require('../db');

const findActivityPhotoAll = async () => {
  const result = await mysql.query('SELECT * FROM activity ac JOIN price p ON p.activity_id = ac.id JOIN activity_photo ap ON ap.activity_id = ac.id JOIN photo ph ON ap.photo_id = ph.id JOIN price prc ON prc.activity_id = ac.id');
  return result[0];
};

const findOneActivityPhotoByName = async (name) => {
  const result = await mysql.query(
    'SELECT * FROM activity ac JOIN price p ON p.activity_id = ac.id JOIN activity_photo ap ON ap.activity_id = ac.id JOIN photo ph ON ap.photo_id = ph.id JOIN price prc ON prc.activity_id = ac.id WHERE ac.name= ?', name);
  return result[0];
};
const findOneActivityPhotoById = async (id) => {
  const result = await mysql.query(
    'SELECT * FROM activity ac JOIN price p ON p.activity_id = ac.id JOIN activity_photo ap ON ap.activity_id = ac.id JOIN photo ph ON ap.photo_id = ph.id JOIN price prc ON prc.activity_id = ac.id WHERE ac.id=?', id);
  return result[0];
};

const createOneActivityPhoto = async (bodyActivity, bodyPhoto, bodyPrice) => {
  const resultActivity = await mysql.query('INSERT INTO activity SET ?', bodyActivity);

  bodyPrice.activity_id = resultActivity[0].insertId;
  await mysql.query('INSERT INTO price SET ?', bodyPrice);

  const resultPhoto = await mysql.query('INSERT INTO photo SET ?', bodyPhoto);

  await mysql.query('INSERT INTO activity_photo SET ?', { activity_id: resultActivity[0].insertId, photo_id: resultPhoto[0].insertId });
  return {
    activityId: resultActivity[0].insertId,
    photo_id: resultPhoto[0].insertId,
    resultPrice_id: resultPhoto[0]
  };
};

const modifyOneActivityPhotoById = async (id, bodyActivity, bodyPrice, bodyPhoto) => {
  await mysql.query('UPDATE activity SET ? WHERE id = ?', [bodyActivity, id]);

  bodyPrice.activity_id = id;
  await mysql.query('UPDATE price SET ? WHERE activity_id = ?', [bodyPrice, bodyPrice.activity_id]);

  const body = {
    'ph.title': bodyPhoto.title,
    'ph.Location': bodyPhoto.location
  };
  await mysql.query('UPDATE photo ph JOIN activity_photo ap ON ap.photo_id = ph.id SET ? WHERE ap.activity_id = ?', [body, id]);
};

const deleteOneActivityPhoto = async (idActivity) => {
  await mysql.query('DELETE FROM activity WHERE id = ?', idActivity);
};

module.exports = {
  findActivityPhotoAll,
  findOneActivityPhotoByName,
  findOneActivityPhotoById,
  createOneActivityPhoto,
  modifyOneActivityPhotoById,
  deleteOneActivityPhoto
};
