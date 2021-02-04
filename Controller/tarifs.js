const {
  findAllTarifs,
  findTarifs,
  createOneTarifs,
  putTarifs
} = require('../Model/tarifs');

const getTarifsAll = async (req, res) => {
  try {
    const data = await findAllTarifs();
    res.status(200).json(data);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const getTarifs = async (req, res) => {
  try {
    const data = await findTarifs(req.params.id);
    res.status(200).json(data[0]);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const postOneTarifs = async (req, res) => {
  try {
    const data = await createOneTarifs(req.body);
    res.status(200).json(data[0]);
  } catch (err) {
    console.error(err.message);
  }
};

const PutOneTarifs = async (req, res) => {
  try {
    await putTarifs(req.body, req.params.id);
    const result = await findTarifs(req.params.id);
    res.status(200).json(result);
  } catch (err) {
    console.error(err.message);
  }
};

module.exports = {
  getTarifsAll,
  getTarifs,
  postOneTarifs,
  PutOneTarifs
};
