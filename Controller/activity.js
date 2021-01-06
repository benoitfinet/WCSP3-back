const {
  findActivityPhotoAll,
  findOneActivityPhoto
} = require('../Model/activity');

const getActivityPhotoAll = async (req, res) => {
  try {
    // let sql = 'SELECT * FROM activity AS ac JOIN activity_photo AS ap ON ap.activity_id = ac.id JOIN photo AS ph ON ap.photo_id = ph.id';
    // const sqlValues = [];

    // if(req.query.name) {

    // }
    console.log(req.query.name);
    const data = await findActivityPhotoAll(req.query.name);
    res.status(200).json(data);
    console.log('data', data);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const getOneActivityPhoto = async (req, res) => {
  try {
    const data = await findOneActivityPhoto(req.params.id);
    res.status(200).json(data);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Internal server error');
  }
};

module.exports = {
  getActivityPhotoAll,
  getOneActivityPhoto
};
