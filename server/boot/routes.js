
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
    let user = app.models.user;
    user.create({
      email: req.body.email,
      password: req.body.password,
      username: req.body.username}, (err, userInstance) => {
        res.render('response', {
          title: (!err) ? 'Usuario creado con exito' : 'Hubo un problema creando el usuario',
          content: err,
          redirectTo: '/',
          redirectToLinkText: (!err) ? 'Registro exitoso. Por favor, vuelva a loguearse de nuevo' : 'Hubo un problema intentando crear el usuario',
        });
    });
  });

  /**
   * Logs a user
   */
  app.post('/login', function(req, res) {
    let User = app.models.user;
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

  app.post('/isPrime', (req, res, next) => {
    "use strict";
    if( !req.body.access_token ) return res.sendStatus(401);
    if( !req.body.number ){
      res.send({'isPrime': false });
    }else{
      let num = req.body.number;
      for(var i = 2; i < num; i++)
        if(num % i === 0) res.send({'isPrime': false });
          res.send({'isPrime' : (num !== 1) }) ;
    }
  });

  //log a user out
  app.get('/logout', (req, res, next) => {
    let User = app.models.user;
    if (!req.query.access_token) return res.sendStatus(401);
    User.logout(req.query.access_token, err => {
      if (err) return next(err);
      res.redirect('/');
    });
  });

};
