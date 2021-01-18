const { findAllSnack, findSnack, createSnack, deleteSnack, putSnack } = require('../Model/snack');

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
    const data = await createSnack(req.body);
    res.status(200).json(data);
  } catch (err) {
    console.error(err.message);
  }
};

const DeleteOne = async (req, res) => {
  try {
    const data = await deleteSnack(req.params.id);
    res.status(200).json(data);
  } catch (err) {
    console.error(err.message);
  }
};

const PutOne = async (req, res) => {
  try {
    await putSnack(req.body, req.params.id);
    const result = await findSnack(req.params.id);
    res.status(200).json(result);
  } catch (err) {
    console.error(err.message);
  }
};

module.exports = {
  getSnackAll,
  getSnack,
  CreateOne,
  DeleteOne,
  PutOne
};
