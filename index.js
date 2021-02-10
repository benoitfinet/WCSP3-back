const express = require('express');
const cors = require('cors');
const { SERVER_PORT } = require('./env');
const bodyParser = require('body-parser');
const nodemailer = require('nodemailer');
const { MAIL }= require('./env');
const { MAILPASS } = require('./env');

const app = express();

app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}))

app.use(cors({
  exposedHeaders: ['Content-Range', 'X-Content-Range', 'X-Total-Count'],
  origin: 'http://localhost:3000'
}));
app.use((req, res, next) => {
  const totalCount = req.headers['x-total-count'];
  console.log('totalCount :', totalCount);
  res.set('X-Total-Count', totalCount);
  next();
});

require('./routes')(app);

const server = app.listen(SERVER_PORT, () => {
  console.log(`Server is listening on : ${SERVER_PORT}`);
});

process.on('unhandledRejection', (error) => {
  console.error('unhandledRejection', JSON.stringify(error), error.stack);
  process.exit(1);
});

process.on('uncaughtException', (error) => {
  console.error('uncaughtException', JSON.stringify(error), error.stack);
  process.exit(1);
});

process.on('beforeExit', () => {
  app.close((error) => {
    if (error) console.error(JSON.stringify(error), error.stack);
  });
});

app.post('/Contact', (req, res) => {
  let data = req.body
  let smtpTransport = nodemailer.createTransport({
      service : 'Gmail',
      port: 465,
      auth:{
          user: MAIL,
          pass: MAILPASS
      } 
  });

  let mailOptions={
      from: data.email,
      to: MAIL,
      subject: `Message de ${data.name} ${data.lastname}`,
      html:`
      
      <h3>Informations</3>
          <ul>
          <li> Nom: ${data.name}</li>
          <li> Prénom: ${data.lastname}</li>
          <li> Email: ${data.email}</li>
          </ul>

      <h3>Message</h3>
      <p> ${data.message}</p>
      `
  };

  smtpTransport.sendMail(mailOptions, (error, response) => {
      if(error){
          res.send(error)
      } else {
          res.send('Succes')
      }
  })
  smtpTransport.close();
})

app.post('/Reservation', (req, res) => {
  let data = req.body
  let smtpTransport = nodemailer.createTransport({
      service : 'Gmail',
      port: 465,
      auth:{
          user: MAIL,
          pass: MAILPASS
      } 
  });

  let reservationOptions={
    from: data.email,
    to: MAIL,
    subject: `Reservation de `,
    html:`
    
    <h3>Reservation</3>
    
    <h3>Parcours acrobatiques en hauteur</h3>

        <ul>
        <li> Parcours Pitchoun: ${data.totalPricePitchoun} euros</li>
        <li> Parcours Ouistiti: ${data.totalPriceOuistiti} euros</li>
        <li> Parcours Enfant: ${data.totalPriceChildren} euros </li>
        <li> Parcours Junior: ${data.totalPriceJunior} euros </li>
        <li> Tarifs Adult: ${data.totalPriceAdult} euros </li>
        <li> Tarifs Nocturne: ${data.totalPriceNocturne} euros </li>
        </ul>
        
        <h3>Escape Game</h3>
        <ul>
        <li> Escape Game: ${data.totalPriceEscape} euros </li>
        </ul>
        
        <h3>Parcours d'enigmes</h3>
        <ul>
        <li> Parcours d'enigmes: ${data.totalPriceEnigme} euros </li>
        </ul>
        
        <h3>Chasse au trésor</h3>
        <ul>
        <li> Chasse au trésor: ${data.totalPriceTresor} euros </li>
        </ul>
        <h3>Laser Game</h3>
        <ul>
        <li> Laser Game: ${data.totalPriceLaserGame} euros </li>
        </ul>
        
        
        <p>Nbr de Personnes ${data.selectionNumberPitchoun}</p>
    `
};

smtpTransport.sendMail(reservationOptions, (error, res) => {
  if(error){
      res.send(error)
  } else {
      res.send('Succes')
  }
})
smtpTransport.close();
})

module.exports = server;
