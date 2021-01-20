const {
  findActivityPhotoAll,
  findOneActivityPhotoByName,
  findOneActivityPhotoById,
  createOneActivityPhoto,
  modifyOneActivityPhotoById,
  deleteOneActivityPhoto
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
    console.log(data.length);
    if (data.length > 0) {
      return res.status(200).json(data);
    }
    console.log('OK');
    res.status(404).json('The activity does not exist');
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Internal server error');
  }
};

const postOneActivity = async (req, res) => {
  try {
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

    const data = await createOneActivityPhoto(activityBody, photoBody, activityPrice);
    const newdata = await findOneActivityPhotoById(data.activityId);

    res.status(200).json(newdata[0]);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Internal server error');
  }
};

const putOneActivityPhotoById = async (req, res) => {
  try {
    const activityBody = {
      name: req.body.name,
      description: req.body.description,
      age: req.body.age
    };
    const photoBody = {
      title: req.body.title,
      location: req.body.location
    };

    const priceBody = {
      age_min: req.body.age_min,
      age_max: req.body.age_max,
      discount: req.body.discount,
      price: req.body.price
    };

    const id = req.params.id;
    console.log('BODY', req.body);
    console.log('params Id', id);

    await modifyOneActivityPhotoById(id, activityBody, priceBody, photoBody);
    const newData = await findOneActivityPhotoById(id);
    res.status(200).json(newData);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Error updating a user');
  }
};

const deletedOneActivityPhoto = async (req, res) => {
  try {
    const idActivity = req.params.id;
    await deleteOneActivityPhoto(idActivity);
    res.status(200).send('Activity deleted!');
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Error deleted an activity');
  }
};

module.exports = {
  getActivityPhotoAll,
  getOneActivityPhoto,
  getOneActivityPhotoById,
  postOneActivity,
  putOneActivityPhotoById,
  deletedOneActivityPhoto
};
