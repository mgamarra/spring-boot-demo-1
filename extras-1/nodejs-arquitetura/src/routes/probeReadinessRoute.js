
const express = require('express');
const router = express.Router();

router.get('/', function (req, res, next) {
    // implementar lógica para validar se a aplicação está pronta para receber requisições.
    res.status(200).json({ status: "ok readyz" })
});

module.exports = router;
