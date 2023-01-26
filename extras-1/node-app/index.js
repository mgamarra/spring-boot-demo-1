const http = require("http");
const host = '0.0.0.0';
const port = 3000;

const requestListener = function (req, res) {
    res.writeHead(200);
    res.end("SERVER TEST! -------------------------------> Node version: " + process.version);
   // return { hello: 'world', message: "Node version: " + process.version }
};

const server = http.createServer(requestListener);
server.listen(port, host, () => {
    console.log(`Server is running on http://${host}:${port}`);
});