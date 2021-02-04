const {
  findAllFindus,
  findFindus,
  createOneFindus,
  putFindus
} = require('../Model/findus');

const getFindusAll = async (req, res) => {
  try {
    const data = await findAllFindus();
    res.status(200).json(data);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const getFindus = async (req, res) => {
  try {
    const data = await findFindus(req.params.id);
    res.status(200).json(data[0]);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const postOneFindus = async (req, res) => {
  try {
    const data = await createOneFindus(req.body);
    res.status(200).json(data[0]);
  } catch (err) {
    console.error(err.message);
  }
};

const PutOneFindus = async (req, res) => {
  try {
    await putFindus(req.body, req.params.id);
    const result = await findFindus(req.params.id);
    res.status(200).json(result);
  } catch (err) {
    console.error(err.message);
  }
};

module.exports = {
  getFindusAll,
  getFindus,
  postOneFindus,
  PutOneFindus
};
