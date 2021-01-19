const photos = require('./photo');
const activitys = require('./activity');
const snack = require('./snack');
const parkHours = require('./parkHours');

module.exports = (app) => {
  app.use('/photo', photos);
  app.use('/activity', activitys);
  app.use('/snack', snack);
  app.use('./parkHours', parkHours);
};
