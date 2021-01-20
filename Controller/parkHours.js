const { findAllHours, findHour, createHour, deleteHour, putHour } = require('../Model/parkHours');

const getAllHours = async (req, res) => {
  try {
    const data = await findAllHours();
    res.status(200).json(data);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const getHour = async (req, res) => {
  try {
    const data = await findHour(req.params.id);
    res.status(200).json(data);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};
const CreateOneHour = async (req, res) => {
  try {
    const data = await createHour(req.body);
    console.log(data);
    res.status(200).json(data);
  } catch (err) {
    console.error(err.message);
  }
};

const DeleteOneHour = async (req, res) => {
  try {
    const data = await deleteHour(req.params.id);
    res.status(200).json(data);
  } catch (err) {
    console.error(err.message);
  }
};

const PutOne = async (req, res) => {
  try {
    await putHour(req.body, req.params.id);
    const result = await findHour(req.params.id);
    res.status(200).json(result);
  } catch (err) {
    console.error(err.message);
  }
};

module.exports = {
  getAllHours,
  getHour,
  CreateOneHour,
  DeleteOneHour,
  PutOne
};
