const {
  findActivityPhotoAll,
  findOneActivityPhoto
} = require('../Model/activity');

const getActivityPhotoAll = async (req, res) => {
  try {
    const data = await findActivityPhotoAll();
    res.status(200).json(data);
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
