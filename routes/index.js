const photos = require('./photo');
const activitys = require('./activity');
const drink = require('./drink');
const food = require('./food');
const parkHours = require('./parkHours');
<<<<<<< HEAD
const pictures = require('./pictures');

=======
const infos = require('./info');
const homes = require('./home');
>>>>>>> b4a21a9f0e1dad7d6ae1e56e25df65686a7f2a8c
module.exports = (app) => {
  app.use('/photo', photos);
  app.use('/activity', activitys);
  app.use('/drink', drink);
  app.use('/parkHours', parkHours);
  app.use('/food', food);
<<<<<<< HEAD
  app.use('/pictures', pictures);
=======
  app.use('/info', infos);
  app.use('/home', homes);
>>>>>>> b4a21a9f0e1dad7d6ae1e56e25df65686a7f2a8c
};
