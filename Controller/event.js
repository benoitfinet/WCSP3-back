const {
  findAllEvent,
  findEvent,
  createOneEvent,
  putEvent
} = require('../Model/event');

const getEventAll = async (req, res) => {
  try {
    const data = await findAllEvent();
    res.status(200).json(data);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const getEvent = async (req, res) => {
  try {
    const data = await findEvent(req.params.id);
    res.status(200).json(data[0]);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const postOneEvent = async (req, res) => {
  try {
    const data = await createOneEvent(req.body);
    res.status(200).json(data[0]);
  } catch (err) {
    console.error(err.message);
  }
};

const PutOneEvent = async (req, res) => {
  try {
    await putEvent(req.body, req.params.id);
    const result = await findEvent(req.params.id);
    res.status(200).json(result);
  } catch (err) {
    console.error(err.message);
  }
};

module.exports = {
  getEventAll,
  getEvent,
  postOneEvent,
  PutOneEvent
};
