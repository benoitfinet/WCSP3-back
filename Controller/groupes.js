const {
  findAllGroupes,
  findGroupes,
  createOneGroupes,
  putGroupes
} = require('../Model/groupes');

const getGroupesAll = async (req, res) => {
  try {
    const data = await findAllGroupes();
    res.status(200).json(data);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const getGroupes = async (req, res) => {
  try {
    const data = await findGroupes(req.params.id);
    res.status(200).json(data[0]);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const postOneGroupes = async (req, res) => {
  try {
    const data = await createOneGroupes(req.body);
    res.status(200).json(data[0]);
  } catch (err) {
    console.error(err.message);
  }
};

const PutOneGroupes = async (req, res) => {
  try {
    await putGroupes(req.body, req.params.id);
    const result = await findGroupes(req.params.id);
    res.status(200).json(result);
  } catch (err) {
    console.error(err.message);
  }
};

module.exports = {
  getGroupesAll,
  getGroupes,
  postOneGroupes,
  PutOneGroupes
};
