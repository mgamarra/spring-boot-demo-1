const express = require('express');
const app = express();

//Rotas
const index = require('./routes/index');
const perssoaRoute = require('./routes/perssoaRoute');
const probeLivenessRoute = require('./routes/probeLivenessRoute');
const probeReadinessRoute = require('./routes/probeReadinessRoute');
const probeStartupRoute = require('./routes/probeStartupRoute');

app.use(express.json())
app.use(express.urlencoded({ extended: true }))

app.use('/', index);
app.use('/perssoa', perssoaRoute);
app.use('/livez', probeLivenessRoute);
app.use('/readyz', probeReadinessRoute);
app.use('/startup', probeStartupRoute);

module.exports = app;