const {
  findAllPhoto,
  findPhoto
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

module.exports = {
  getPhotoAll,
  getPhoto
};
