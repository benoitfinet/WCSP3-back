const {
  findAllInfo,
  findInfo,
  createOneInfo,
  putInfo
} = require('../Model/info');

const getInfoAll = async (req, res) => {
  try {
    const data = await findAllInfo();
    res.status(200).json(data);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const getInfo = async (req, res) => {
  try {
    const data = await findInfo(req.params.id);
    res.status(200).json(data[0]);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const postOneInfo = async (req, res) => {
  try {
    const data = await createOneInfo(req.body);
    res.status(200).json(data[0]);
  } catch (err) {
    console.error(err.message);
  }
};

const PutOneinfo = async (req, res) => {
  try {
    await putInfo(req.body, req.params.id);
    const result = await findInfo(req.params.id);
    res.status(200).json(result);
  } catch (err) {
    console.error(err.message);
  }
};

module.exports = {
  getInfoAll,
  getInfo,
  postOneInfo,
  PutOneinfo
};
