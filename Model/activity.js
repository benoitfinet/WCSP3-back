const mysql = require('../db');

const findActivityPhotoAll = async () => {
  const result = await mysql.query('SELECT * FROM activity AS ac JOIN activity_photo AS ap ON ap.activity_id = ac.id JOIN photo AS ph ON ap.photo_id = ph.id');
  return result[0];
};

const findOneActivityPhotoByName = async (name) => {
  const result = await mysql.query(
  'SELECT * FROM photo AS ph JOIN activity_photo AS ap ON ap.activity_id = ph.id JOIN activity AS ac ON ap.activity_id = ac.id WHERE ac.name= ?', name);
  return result[0];
};
const findOneActivityPhotoById = async (id) => {
  const result = await mysql.query(
  'SELECT * FROM photo AS ph JOIN activity_photo AS ap ON ap.activity_id = ph.id JOIN activity AS ac ON ap.activity_id = ac.id WHERE ac.id= ?', id);
  return result[0];
};

// const createOneActivity = async () = {
//   const result = await mysql.query(
//     'INSERT INTO activity SET '
//   );
// }

module.exports = {
  findActivityPhotoAll,
  findOneActivityPhotoByName,
  findOneActivityPhotoById
};
