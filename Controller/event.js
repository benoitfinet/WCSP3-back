const {
    findOnePhotoEventById,
    findAllEventPhoto,
    findOneEventPhotoByName,
    createEvent,
    findOneEventById,
    createOneEventWithPhoto,
    SelectToDeleteOneEvent
} = require('../Model/event');

const getEventById = async (req, res) => {
    try {
        const data = await findOneEventById(req.params.id);
        res.status(200).json(data);
    } catch (error) {
        res.status(404).send('Event not found')
    }
};

const postEvent = async (req,res) => {
    try {
        const data = await createEvent(req.body);
        res.status(200).json(data);
    } catch (error) {
        console.error(error.message);
        res.status(500).send('Internal server error');
    }
};

const getOnePhotoEventById = async (req, res) => {
    try{
        const data = await findOnePhotoEventById(req.params.id);
        res.status(200).json(data);
    } catch (error) {
        console.error(error.message);
        res.status(404).send('Error photo not found')
    }
};

const getOneEventPhotoByName = async (req, res) => {
    try {
        const data = await findOneEventPhotoByName(req.query.name);
        res.status(200).json(data);
    } catch (error) {
        console.error(error.message);
        res.status(404).send('Error photo not found')
    }
};

const getAllEventPhoto = async (req, res) => {
    try {
        const data = await findAllEventPhoto();
        res.status(200).json(data);
    } catch (err) {
        console.error(err.message);
        res.status(404).send('Error photo not found')
    }
};

const postOneEventWithPhoto = async (req, res) => {
    try {
        const eventBody = {
            name : req.body.name,
            description : req.body.description,
            price : req.body.price,
            age : req.body.age
        };
        const photoBody = {
            title : req.body.title,
            location : req.body.location
        };
        const data = await createOneEventWithPhoto(eventBody, photoBody);
        const newData = await findOneEventById(data.eventID);
        newData[0].photoID = data[0].eventID;
        res.status(200).json(newData);
    } catch (err) {
        console.error(err.message);
        res.status(500).send('Internal Server Error');
    }
};

const deleteOneEvent = async (req, res) => {
    try {
        await SelectToDeleteOneEvent(req.params.id);
        res.status(204).send('Event has been deleted');
    } catch (err) {
        console.error(err.message);
        res.status(500).send('Internal Server Error');
    }
};

module.exports = {
    getOnePhotoEventById,
    getAllEventPhoto,
    getOneEventPhotoByName,
    postEvent,
    getEventById,
    postOneEventWithPhoto,
    deleteOneEvent
    
};