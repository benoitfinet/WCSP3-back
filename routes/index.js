const photos = require('./photo');
const activitys = require('./activity');
const snack = require('./snack');

module.exports = (app) => {
  app.use('/photo', photos);
  app.use('/activity', activitys);
  app.use('/snack', snack);
};
