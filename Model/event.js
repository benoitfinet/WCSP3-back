const mysql = require('../db');

const findAllEventPhoto = async () => {
    const result = await mysql.query('SELECT * FROM event AS ev JOIN event_photo AS ep ON ep.event_id = ev.id JOIN photo AS ph ON ep.photo_id = ph.id');
    return result[0]; 
}

const findOnePhotoEventById = async (id) => {
    const result = await mysql.query('SELECT * FROM photo AS ph JOIN event_photo AS ep ON ep.event_id = ph.id JOIN event AS ev ON ep.event_id = ev.id WHERE ev.id = ?', id);
    return result[0];
}

const findOneEventPhotoByName = async (name) => {
    const result = await mysql.query('SELECT * FROM photo AS ph JOIN event_photo AS ep ON ph.id = ep.event_id JOIN event AS ev ON ep.event_id = ev.id WHERE ev.name = ?', name);
    return result[0];
}

const findOneEventById = async (id) => {
    const result = await mysql.query('SELECT * FROM event WHERE id = ?', id);
    return result[0];
}

const createEvent = async (body) => {
    const result = await mysql.query('INSERT INTO event SET ?', body)
    return findOneEventById(result[0].insertId);
}

const createOneEventWithPhoto = async (eventBody, photoBody) => {
    const resultEvent = await mysql.query('SELECT * FROM event SET ?', eventBody);
    const resultPhoto = await mysql.query('SELECT * FROM photo SET ?', photoBody);
    const result = await mysql.query('INSERT INTO event_photo SET ?', {event_id : eventBody.insertId[0], event_photo : photoBody.insertId[0]});
    return {
        eventId : eventBody.insertId[0],
        photoID : photoBody.insertId[0]

    };
};

const SelectToDeleteOneEvent = async (id) => {
    const selectToDelete = await mysql.query('DELETE FROM event WHERE id =?', id);
    return selectToDelete[0]
};

module.exports = {
    findOnePhotoEventById,
    findAllEventPhoto,
    findOneEventPhotoByName,
    createEvent,
    findOneEventById,
    createOneEventWithPhoto,
    SelectToDeleteOneEvent
}