
const datasource = require('../datasources.json');
const path = require('path');

module.exports = (app) => {


  /**
   * Login form end-point
   */
  app.get('/', (req, res) => { res.render('login', {
      'title': 'Registro de usuarios'
    });
  });

  /**
   * Register user
   */
  app.post('/register', (req, res) => {
    let User = app.models.User;
    User.create({
      email: req.body.email,
      password: req.body.password,
      username: req.body.username}, (err, userInstance) => {
        res.render('response', {
          title: (!err) ? 'Usuario creado con exito' : 'Hubo un problema creando el usuario',
          content: err,
          redirectTo: '/',
          redirectToLinkText: (!err) ? 'Registro exitoso, logueese de nuevo' : '',
        });
    });
  });

  /**
   * Logs a user
   */
  app.post('/login', function(req, res) {
    let User = app.models.User;
    User.login({
      email: req.body.email,
      password: req.body.password
    }, 'user', (err, token) => {
      if (err) {
        if(err.details && err.code === 'LOGIN_FAILED_EMAIL_NOT_VERIFIED'){
          res.render('reponseToTriggerEmail', {
            title: 'Fallo el login, email no registrado',
            content: err,
            redirectToEmail: '/api/users/'+ err.details.userId + '/verify',
            redirectTo: '/',
            redirectToLinkText: 'Click aqui',
            userId: err.details.userId
          });
        } else {
          res.render('response', {
            title: 'Login failed. Wrong username or password',
            content: err,
            redirectTo: '/',
            redirectToLinkText: 'Please login again',
          });
        }
        return;
      }
      res.render('home', {
        email: req.body.email,
        accessToken: token.id
      });
    });
  });

  //log a user out
  app.get('/logout', (req, res, next) => {
    let User = app.models.User;
    if (!req.query.access_token) return res.sendStatus(401);
    User.logout(req.query.access_token, err => {
      if (err) return next(err);
      res.redirect('/');
    });
  });

};
