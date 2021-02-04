const {
  findAllHoraires,
  findHoraires,
  createOneHoraires,
  putHoraires
} = require('../Model/horaires');

const getHorairesAll = async (req, res) => {
  try {
    const data = await findAllHoraires();
    res.status(200).json(data);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const getHoraires = async (req, res) => {
  try {
    const data = await findHoraires(req.params.id);
    res.status(200).json(data[0]);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const postOneHoraires = async (req, res) => {
  try {
    const data = await createOneHoraires(req.body);
    res.status(200).json(data[0]);
  } catch (err) {
    console.error(err.message);
  }
};

const PutOneHoraires = async (req, res) => {
  try {
    await putHoraires(req.body, req.params.id);
    const result = await findHoraires(req.params.id);
    res.status(200).json(result);
  } catch (err) {
    console.error(err.message);
  }
};

module.exports = {
  getHorairesAll,
  getHoraires,
  postOneHoraires,
  PutOneHoraires
};
