const {
  findAllPhoto,
  findPhoto,
  postPhoto
} = require('../Model/photo');

const getPhotoAll = async (req, res) => {
  try {
    const data = await findAllPhoto();
    res.status(200).json(data);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const getPhoto = async (req, res) => {
  try {
    const data = await findPhoto(req.params.id);
    res.status(200).json(data);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const getPostedPhoto = async (req, res) => {
  try {
    const data = await postPhoto(req.body);
    res.status(200).json(data);
  } catch (err) {
    console.error(err.message);
    res.status(404).send('Photo not found');
  }
};

module.exports = {
  getPhotoAll,
  getPhoto,
  getPostedPhoto
};
