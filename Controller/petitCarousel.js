const {
  findAllPetitCarousel,
  findPetitCarousel,
  createOnePetitCarousel,
  putPetitCarousel
} = require('../Model/petitCarousel');

const getPetitCarouselAll = async (req, res) => {
  try {
    const data = await findAllPetitCarousel();
    res.status(200).json(data);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const getPetitCarousel = async (req, res) => {
  try {
    const data = await findPetitCarousel(req.params.id);
    res.status(200).json(data[0]);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const postOnePetitCarousel = async (req, res) => {
  try {
    const data = await createOnePetitCarousel(req.body);
    res.status(200).json(data[0]);
  } catch (err) {
    console.error(err.message);
  }
};

const PutOnePetitCarousel = async (req, res) => {
  try {
    await putPetitCarousel(req.body, req.params.id);
    const result = await findPetitCarousel(req.params.id);
    res.status(200).json(result);
  } catch (err) {
    console.error(err.message);
  }
};

module.exports = {
  getPetitCarouselAll,
  getPetitCarousel,
  postOnePetitCarousel,
  PutOnePetitCarousel
};
