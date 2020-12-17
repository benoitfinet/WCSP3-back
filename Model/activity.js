const mysql = require('../db');

const findActivityPhotoAll = async () => {
  const result = await mysql.query(
    'SELECT * FROM activity AS ac JOIN activity_photo AS ap ON ap.activity_id = ac.id JOIN photo AS ph ON ap.photo_id = ph.id');
  // const result = await mysql.query('SELECT * FROM activity AS ac JOIN activity_photo AS ap ON ap.activity_id = 1 JOIN photo AS ph ON ap.photo_id = ph.id');
  // const result = await mysql.query('SELECT * FROM activity AS ac JOIN activity_photo AS ap ON ap.activity_id = ac.id ');
  return result[0];
};

const findOneActivityPhoto = async (id) => {
  const result = await mysql.query(
    'SELECT * FROM photo AS ph JOIN activity_photo AS ap ON ap.activity_id = ph.id JOIN activity AS ac ON ap.activity_id = ac.id WHERE ac.id= ?', id);
  // const result = await mysql.query('SELECT * FROM activity JOIN photo WHERE id = ?', id);
  console.log(result[0]);
  return result[0];
};

module.exports = {
  findActivityPhotoAll,
  findOneActivityPhoto
};
