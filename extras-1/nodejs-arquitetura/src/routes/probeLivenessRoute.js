const express = require('express');
const router = express.Router();

router.get('/', function (req, res, next) {
    // implementar lógica para validar se a aplicação está saudável.
    res.status(200).json({ status: "ok livez" })
});

module.exports = router;
