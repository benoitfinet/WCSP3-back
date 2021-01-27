const {
  findAllPhoto,
  findPhoto,
  createOnePhoto
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
    res.status(200).json(data[0]);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const postOnePhoto = async (req, res) => {
  try {
    const data = await createOnePhoto(req.body);
    res.status(200).json(data);
  } catch (err) {
    console.error(err.message);
  }
};

module.exports = {
  getPhotoAll,
  getPhoto,
  postOnePhoto
};
