const photos = require('./photo');
const activitys = require('./activity');
const drink = require('./drink');

module.exports = (app) => {
  app.use('/photo', photos);
  app.use('/activity', activitys);
  app.use('/drink', drink);
};
