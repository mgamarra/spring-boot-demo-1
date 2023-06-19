
const express = require('express');
const router = express.Router();

router.get('/', function (req, res, next) {

    user_id = process.env.USER_ID;
    user_key = process.env.USER_KEY;
    node_env = process.env.NODE_ENV;

    res.status(200).send({
        title: "Node Express API",
        version: "0.0.1",
        userid: user_id ,
        userkey: user_key,
        node_env: node_env
    });
});

module.exports = router;
