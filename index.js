const restify = require('restify');

const server = restify.createServer();

// routes
server.get('/itineraries/health', (req, res, next) => {
  res.send(200, 'ok');
});

server.listen(process.env.PORT || 8080, () => {
  console.log(`${server.name} listening at ${server.url}`);
});
