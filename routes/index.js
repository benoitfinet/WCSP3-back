const activitys = require('./activity');
const infos = require('./info');
const homes = require('./home');
const groupes = require('./groupes');
const findus = require('./findus');
const horaires = require('./horaires');
const tarifs = require('./tarifs');
module.exports = (app) => {
  app.use('/activity', activitys);
  app.use('/info', infos);
  app.use('/home', homes);
  app.use('/groupes', groupes);
  app.use('/findus', findus);
  app.use('/horaires', horaires);
  app.use('/tarifs', tarifs);
};
