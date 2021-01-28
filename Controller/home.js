const {
  findAllHome,
  findHome,
  createOneHome,
  putHome
} = require('../Model/home');

const getHomeAll = async (req, res) => {
  try {
    const data = await findAllHome();
    res.status(200).json(data);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const getHome = async (req, res) => {
  try {
    const data = await findHome(req.params.id);
    res.status(200).json(data[0]);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const postOneHome = async (req, res) => {
  try {
    const data = await createOneHome(req.body);
    res.status(200).json(data[0]);
  } catch (err) {
    console.error(err.message);
  }
};

const PutOneHome = async (req, res) => {
  try {
    await putHome(req.body, req.params.id);
    const result = await findHome(req.params.id);
    res.status(200).json(result);
  } catch (err) {
    console.error(err.message);
  }
};

module.exports = {
  getHomeAll,
  getHome,
  postOneHome,
  PutOneHome
};
