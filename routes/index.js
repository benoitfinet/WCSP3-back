const photos = require('./photo');
const activitys = require('./activity');
const drink = require('./drink');
const food = require('./food');
const parkHours = require('./parkHours');
const pictures = require('./pictures');

module.exports = (app) => {
  app.use('/photo', photos);
  app.use('/activity', activitys);
  app.use('/drink', drink);
  app.use('/parkHours', parkHours);
  app.use('/food', food);
  app.use('/pictures', pictures);
};
