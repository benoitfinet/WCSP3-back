const {
  findActivityPhotoAll,
  findOneActivityPhotoByName,
  findOneActivityPhotoById,
  findOneActivityById,
  createOneActivity
} = require('../Model/activity');

const getActivityPhotoAll = async (req, res) => {
  try {
    const data = await findActivityPhotoAll(req.query.name);
    res.status(200).json(data);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const getOneActivityPhoto = async (req, res) => {
  try {
    const data = await findOneActivityPhotoByName(req.params.name);
    res.status(200).json(data);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Internal server error');
  }
};

const getOneActivityPhotoById = async (req, res) => {
  try {
    const data = await findOneActivityPhotoById(req.params.id);
    res.status(200).json(data);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Internal server error');
  }
};

const getOneActivityById = async (req, res) => {
  try {
    const data = await findOneActivityById(req.params.id);
    res.status(200).json(data);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Internal server error');
  }
};

const postOneActivity = async (req, res) => {
  try {
    console.log('REq Body', req.body);
    const activityBody = {
      name: req.body.name,
      description: req.body.description,
      age: req.body.age
    };
    const photoBody = {
      title: req.body.title,
      location: req.body.location
    };

    const activityPrice = {
      age_min: req.body.age_min,
      age_max: req.body.age_max,
      discount: req.body.discount,
      price: req.body.price
    };

    const data = await createOneActivity(activityBody, photoBody, activityPrice);

    console.log('DATA CONTROLEUR', data);
    const newdata = await findOneActivityById(data.activityId);

    console.log('newData CONTROLEUR', newdata);

    res.status(200).json(newdata[0]);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Internal server error');
  }
};

module.exports = {
  getActivityPhotoAll,
  getOneActivityPhoto,
  getOneActivityPhotoById,
  getOneActivityById,
  postOneActivity
};
