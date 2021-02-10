const {
  findCalandarAll,
  findOneCalandarById,
  findOneCalandarByName,
  createOneCalandar,
  modifyOneCalandar,
  deleteOneCalandar
} = require('../Model/calandar');

const getCalandarAll = async (req, res) => {
  try {
    const data = await findCalandarAll();
    res.status(200).json(data);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Internal server error');
  }
};

const getOneCalandarById = async (req, res) => {
  try {
    const data = await findOneCalandarById(req.params.id);
    if (data.length) {
      return res.status(200).json(data);
    }
    res.status(404).send('The calandar does not exist');
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Internal server error');
  }
};
const getOneCalandarByName = async (req, res) => {
  try {
    const data = await findOneCalandarByName(req.params.name);
    if (data.length) {
      return res.status(200).json(data);
    }
    res.status(404).send('The calandar does not exist');
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Internal server error');
  }
};

const posteOneCalandar = async (req, res) => {
  try {
    const data = await createOneCalandar(req.body);
    const newsData = await findOneCalandarById(data);
    res.status(200).json(newsData);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Internal server error');
  }
};

const putOneCalandar = async (req, res) => {
  try {
    const id = req.params.id;
    const body = req.body;
    await modifyOneCalandar(id, body);
    const data = await findOneCalandarById(id);
    res.status(200).json(data);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Internal server error');
  }
};

const deletedOneCalandar = async (req, res) => {
  try {
    await deleteOneCalandar(req.params.id);
    res.status(200).send('Calandar deleted');
  } catch (err) {
    console.error(err.message);
    res.status(200).send('Internal server error');
  }
};

module.exports = {
  getCalandarAll,
  getOneCalandarById,
  getOneCalandarByName,
  posteOneCalandar,
  putOneCalandar,
  deletedOneCalandar
};
