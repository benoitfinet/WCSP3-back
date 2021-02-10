const express = require('express');
const cors = require('cors');
const { SERVER_PORT } = require('./env');
const bodyParser = require('body-parser');
const nodemailer = require('nodemailer');
const { MAIL } = require('./env');
const { MAILPASS } = require('./env');

const app = express();

app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

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
  const data = req.body;
  const smtpTransport = nodemailer.createTransport({
    service: 'Gmail',
    port: 465,
    auth: {
      user: MAIL,
      pass: MAILPASS
    }
  });

  const mailOptions = {
    from: data.email,
    to: MAIL,
    subject: `Message de ${data.name} ${data.lastname}`,
    html: `
      
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
    if (error) {
      res.send(error);
    } else {
      res.send('Succes');
    }
  });
  smtpTransport.close();
});

app.post('/Reservation', (req, res) => {
  const data = req.body;
  const smtpTransport = nodemailer.createTransport({
    service: 'Gmail',
    port: 465,
    auth: {
      user: MAIL,
      pass: MAILPASS
    }
  });

  const reservationOptions = {
    from: data.email,
    to: MAIL,
    subject: `Reservation de ${data.nomClient} ${data.prenomClient} `,
    html: `
    
    <h3>Reservation</3>

    <h3>Information client</h3>
    <ul>
    <li>Nom: ${data.nomClient}</li>
    <li>Prénom: ${data.prenomClient}</li>
    <li>Tel: ${data.telClient}</li>
    <li>Email: ${data.emailClient}</li>
    </ul>

    <h3> Récapitulatif:<h3>

    <div>${data.basket.map(activity => {
      return (
        `<p> activité : ${activity.activity}, nbr de personne : ${activity.numberSelectedActivity}, prix/unitaire : ${activity.unitPrice}</p>
        `
      );
    })} </div>
 
    `
  };
  console.log(data);
  smtpTransport.sendMail(reservationOptions, (error, res) => {
    if (error) {
      res.send(error);
    } else {
      res.send('Succes');
    }
  });
  smtpTransport.close();
});

module.exports = server;
