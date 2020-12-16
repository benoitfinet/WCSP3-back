const photos = require('./photo');
const activitys = require('./activity');

module.exports = (app) => {
  app.use('/photo', photos);
  app.use('/activity', activitys);
};
