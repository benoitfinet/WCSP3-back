const {
  findInfoAll,
  findOneInfoById,
  findOneInfoByName,
  createOneInfo,
  modifyOneInfo,
  deleteOneInfo
} = require('../Model/info');

const getInfoAll = async (req, res) => {
  try {
    console.log(res);
    const data = await findInfoAll();
    console.log(data);
    res.status(200).json(data);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Interval server error');
  }
};

const getOneInfoById = async (req, res) => {
  try {
    const data = await findOneInfoById(req.params.id);
    if (data.length > 0) {
      return res.status(200).json(data);
    }
    res.status(404).send('The info does not exist');
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Internal server error');
  }
};

const getOneInfoByName = async (req, res) => {
  try {
    const data = await findOneInfoByName(req.params.name);
    res.status(200).json(data);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Internal server error');
  }
};

const postOneInfo = async (req, res) => {
  try {
    const data = await createOneInfo(req.body);
    const newData = await findOneInfoById(data.id);
    res.status(200).json(newData);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Internal server error');
  }
};

const putOneInfo = async (req, res) => {
  try {
    const body = req.body;
    const id = req.params.id;
    await modifyOneInfo(body, id);
    const newData = await findOneInfoById(id);
    res.status(200).json(newData);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Internal server error');
  }
};

const deletedOneInfo = async (req, res) => {
  try {
    await deleteOneInfo(req.params.id);
    res.status(200).send('Info deleted');
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Internal server error');
  }
};

module.exports = {
  getInfoAll,
  getOneInfoById,
  getOneInfoByName,
  postOneInfo,
  putOneInfo,
  deletedOneInfo
};
