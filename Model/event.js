const mysql = require('../db');

const findAllEventPhoto = async () => {
  const result = await mysql.query('SELECT * FROM event AS ev JOIN event_photo AS ep ON ep.event_id = ev.id JOIN photo AS ph ON ep.photo_id = ph.id');
  return result[0];
};

const findOnePhotoEventById = async (id) => {
  const result = await mysql.query('SELECT * FROM event AS ev JOIN event_photo AS ep ON ep.event_id = ev.id JOIN photo AS ph ON ep.photo_id = ph.id WHERE ev.id = ?', id);
  return result[0];
};

const findOneEventPhotoByName = async (name) => {
  const result = await mysql.query('SELECT * FROM event AS ev JOIN event_photo AS ep ON ep.event_id = ev.id JOIN photo AS ph ON ep.photo_id = ph.id WHERE ev.name = ?', name);
  return result[0];
};

const createOneEventWithPhoto = async (eventBody, photoBody) => {
  const resultEvent = await mysql.query('INSERT INTO event SET ?', eventBody);

  const resultPhoto = await mysql.query('INSERT INTO photo SET ?', photoBody);

  await mysql.query('INSERT INTO event_photo SET ?', { event_id: resultEvent[0].insertId, photo_id: resultPhoto[0].insertId });
  return {
    event_id: resultEvent[0].insertId,
    photo_id: resultPhoto[0].insertId
  };
};

const modifyOneActivityPhoto = async (id, eventBody, photoBody) => {
  await mysql.query('UPDATE event SET ? WHERE id = ?', [eventBody, id]);

  const body = {
    'ph.title': photoBody.title,
    'ph.location': photoBody.location
  };

  await mysql.query('UPDATE photo ph JOIN event_photo ep ON ep.photo_id = ph.id SET ?  WHERE ep.event_id = ?', [body, id]);
};

const SelectToDeleteOneEvent = async (id) => {
  await mysql.query('DELETE FROM event WHERE id =?', id);
};

module.exports = {
  findOnePhotoEventById,
  findAllEventPhoto,
  findOneEventPhotoByName,
  createOneEventWithPhoto,
  SelectToDeleteOneEvent,
  modifyOneActivityPhoto
};
