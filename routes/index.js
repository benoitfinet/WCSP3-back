const activitys = require('./activity');
const infos = require('./info');
const homes = require('./home');
const groupes = require('./groupes');
const findus = require('./findus');
const horaires = require('./horaires');
const tarifs = require('./tarifs');
const parcs = require('./parc');
const photos = require('./photo');
const admin = require('./admin');
const event = require('./event');

module.exports = (app) => {
  app.use('/activity', activitys);
  app.use('/info', infos);
  app.use('/home', homes);
  app.use('/groupes', groupes);
  app.use('/findus', findus);
  app.use('/horaires', horaires);
  app.use('/tarifs', tarifs);
  app.use('/parc', parcs);
  app.use('/photo', photos);
  app.use('/admin', admin);
  app.use('/event', event);
};
