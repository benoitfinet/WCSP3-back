const {
  findAllPanier,
  findPanier,
  createOnePanier,
  putPanier
} = require('../Model/panier');

const getPanierAll = async (req, res) => {
  try {
    const data = await findAllPanier();
    res.status(200).json(data);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const getPanier = async (req, res) => {
  try {
    const data = await findPanier(req.params.id);
    res.status(200).json(data[0]);
  } catch (error) {
    console.error(error.message);
    res.status(500).send('Internal server error');
  }
};

const postOnePanier = async (req, res) => {
  try {
    const data = await createOnePanier(req.body);
    res.status(200).json(data[0]);
  } catch (err) {
    console.error(err.message);
  }
};

const PutOnePanier = async (req, res) => {
  try {
    await putPanier(req.body, req.params.id);
    const result = await findPanier(req.params.id);
    res.status(200).json(result);
  } catch (err) {
    console.error(err.message);
  }
};

module.exports = {
  getPanierAll,
  getPanier,
  postOnePanier,
  PutOnePanier
};
