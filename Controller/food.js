const { Allfood, findfood, createfood, deletefood, putfood, findfoodByName } = require('../Model/food');

const getfoodAll = async (req, res) => {
  try {
    const data = await Allfood();
    res.status(200).json(data);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const getfood = async (req, res) => {
  try {
    const data = await findfood(req.params.id);
    res.status(200).json(data);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const getfoodByName = async (req, res) => {
  try {
    const data = await findfoodByName(req.params.name);
    res.status(200).json(data);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};
const CreateOneFood = async (req, res) => {
  try {
    const data = await createfood(req.body);
    res.status(200).json(data);
  } catch (err) {
    console.error(err.message);
  }
};

const DeleteOneFood = async (req, res) => {
  try {
    const data = await deletefood(req.params.id);
    res.status(200).json(data);
  } catch (err) {
    console.error(err.message);
  }
};

const PutOneFood = async (req, res) => {
  try {
    await putfood(req.body, req.params.id);
    const result = await findfood(req.params.id);
    res.status(200).json(result);
  } catch (err) {
    console.error(err.message);
  }
};

module.exports = {
  getfoodAll,
  getfood,
  CreateOneFood,
  DeleteOneFood,
  PutOneFood,
  getfoodByName
};
