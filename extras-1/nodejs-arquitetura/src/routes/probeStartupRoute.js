
const express = require('express');
const router = express.Router();

router.get('/', function (req, res, next) {
    // implementar lógica para validar se a aplicação está ja completou o processo de startup .
    res.status(200).json({ status: "ok startup" })
});

module.exports = router;
