const photos = require('./photo');
const activitys = require('./activity');
const drink = require('./drink');
const food = require('./food');
const parkHours = require('./parkHours');
const infos = require('./info');
const homes = require('./home');
module.exports = (app) => {
  app.use('/photo', photos);
  app.use('/activity', activitys);
  app.use('/drink', drink);
  app.use('/parkHours', parkHours);
  app.use('/food', food);
  app.use('/info', infos);
  app.use('/home', homes);
};
