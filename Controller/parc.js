const {
  findAllParc,
  findParc,
  createOneParc,
  putParc
} = require('../Model/parc');

const getParcAll = async (req, res) => {
  try {
    const data = await findAllParc();
    res.status(200).json(data);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const getParc = async (req, res) => {
  try {
    const data = await findParc(req.params.id);
    res.status(200).json(data[0]);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const postOneParc = async (req, res) => {
  try {
    const data = await createOneParc(req.body);
    res.status(200).json(data[0]);
  } catch (err) {
    console.error(err.message);
  }
};

const PutOneParc = async (req, res) => {
  try {
    await putParc(req.body, req.params.id);
    const result = await findParc(req.params.id);
    res.status(200).json(result);
  } catch (err) {
    console.error(err.message);
  }
};

module.exports = {
  getParcAll,
  getParc,
  postOneParc,
  PutOneParc
};
