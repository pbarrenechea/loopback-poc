'use strict';

module.exports = server => {
  // Install a `/` route that returns server status
  let router = server.loopback.Router();
  server.use(router);
};
