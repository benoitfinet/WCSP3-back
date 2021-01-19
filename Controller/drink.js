const { findAllDrink, findDrink, createDrink, deleteDrink, putDrink } = require('../Model/drink');

const getDrinkAll = async (req, res) => {
  try {
    const data = await findAllDrink();
    res.status(200).json(data);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const getDrink = async (req, res) => {
  try {
    const data = await findDrink(req.params.id);
    res.status(200).json(data);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};
const CreateOne = async (req, res) => {
  try {
    const data = await createDrink(req.body);
    res.status(200).json(data);
  } catch (err) {
    console.error(err.message);
  }
};

const DeleteOne = async (req, res) => {
  try {
    const data = await deleteDrink(req.params.id);
    res.status(200).json(data);
  } catch (err) {
    console.error(err.message);
  }
};

const PutOne = async (req, res) => {
  try {
    await putDrink(req.body, req.params.id);
    const result = await findDrink(req.params.id);
    res.status(200).json(result);
  } catch (err) {
    console.error(err.message);
  }
};

module.exports = {
  getDrinkAll,
  getDrink,
  CreateOne,
  DeleteOne,
  PutOne
};
