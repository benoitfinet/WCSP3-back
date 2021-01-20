const photos = require('./photo');
const activitys = require('./activity');
const events = require('./event');

module.exports = (app) => {
  app.use('/photo', photos);
  app.use('/activity', activitys);
  app.use('/event', events);
};
