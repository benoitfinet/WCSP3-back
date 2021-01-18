const { findAllSnack, findSnack, createPhoto } = require('../Model/snack');

const getSnackAll = async (req, res) => {
  try {
    const data = await findAllSnack();
    res.status(200).json(data);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const getSnack = async (req, res) => {
  try {
    const data = await findSnack(req.params.id);
    res.status(200).json(data);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};
const CreateOne = async (req, res) => {
  try {
    const data = await createPhoto(req.body);
    console.log(data);
    res.status(200).json(data);
  } catch (err) {
    console.error(err.message);
  }
};

module.exports = {
  getSnackAll,
  getSnack,
  CreateOne
};
