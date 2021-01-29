const { findPictures, findAllPictures } = require('../Model/pictures');

const getPicturesAll = async (req, res) => {
  try {
    const data = await findAllPictures();
    res.status(200).json(data);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const getPictures = async (req, res) => {
  try {
    const data = await findPictures(req.params.id);
    res.status(200).json(data[0]);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

module.exports = {
  getPicturesAll,
  getPictures
};
