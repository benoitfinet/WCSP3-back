const {
  findOnePhotoEventById,
  findAllEventPhoto,
  findOneEventPhotoByName,
  createOneEventWithPhoto,
  SelectToDeleteOneEvent,
  modifyOneActivityPhoto
} = require('../Model/event');

const getOnePhotoEventById = async (req, res) => {
  try {
    const data = await findOnePhotoEventById(req.params.id);
    if (data.length > 0) {
      return res.status(200).json(data);
    }
    res.status(404).send('Error event not found');
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal Server Error');
  }
};

const getOneEventPhotoByName = async (req, res) => {
  try {
    const data = await findOneEventPhotoByName(req.params.name);
    if (data.length > 0) {
      return res.status(200).json(data);
    }
    res.status(404).send('Name not found');
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal Server Error');
  }
};

const getAllEventPhoto = async (req, res) => {
  try {
    const data = await findAllEventPhoto();
    res.status(200).json(data);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Internal Server Error');
  }
};

const postOneEventWithPhoto = async (req, res) => {
  try {
    const eventBody = {
      name: req.body.name,
      description: req.body.description,
      price: req.body.price,
      age: req.body.age
    };
    const photoBody = {
      title: req.body.title,
      location: req.body.location
    };
    const data = await createOneEventWithPhoto(eventBody, photoBody);

    const newData = await findOnePhotoEventById(data.event_id);

    res.status(200).json(newData[0]);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Internal Server Error');
  }
};

const deleteOneEvent = async (req, res) => {
  try {
    await SelectToDeleteOneEvent(req.params.id);
    res.status(200).send('Event has been deleted');
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Internal Server Error');
  }
};

const putOneActivityPhoto = async (req, res) => {
  try {
    const eventBody = {
      name: req.body.name,
      description: req.body.description,
      price: req.body.price,
      age: req.body.age
    };

    const photoBody = {
      title: req.body.title,
      location: req.body.location
    };

    const id = req.params.id;

    await modifyOneActivityPhoto(id, eventBody, photoBody);
    const newData = await findOnePhotoEventById(id);
    res.status(200).json(newData);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Internal Server Error');
  }
};

module.exports = {
  getOnePhotoEventById,
  getAllEventPhoto,
  getOneEventPhotoByName,
  postOneEventWithPhoto,
  deleteOneEvent,
  putOneActivityPhoto
};
