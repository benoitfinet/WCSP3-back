const {
  findAllActivity,
  findActivity,
  createOneActivity,
  putActivity
} = require('../Model/activity');

const getActivityAll = async (req, res) => {
  try {
    const data = await findAllActivity();
    res.status(200).json(data);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const getActivity = async (req, res) => {
  try {
    const data = await findActivity(req.params.id);
    res.status(200).json(data[0]);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const postOneActivity = async (req, res) => {
  try {
    const data = await createOneActivity(req.body);
    res.status(200).json(data[0]);
  } catch (err) {
    console.error(err.message);
  }
};

const PutOneActivity = async (req, res) => {
  try {
    await putActivity(req.body, req.params.id);
    const result = await findActivity(req.params.id);
    res.status(200).json(result);
  } catch (err) {
    console.error(err.message);
  }
};

module.exports = {
  getActivityAll,
  getActivity,
  postOneActivity,
  PutOneActivity
};
