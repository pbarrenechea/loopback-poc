
const datasource = require('../datasources.json');
const path = require('path');
const roles = {
  'admin': 1,
  'client': 2
};

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

        let roleMapping = app.models.RoleMapping;
        roleMapping.create({
          'principalId': userInstance.id,
          'roleId': roles.client,
          'principalType': 'user'
        }, (err, roleInstance) => {
          res.render('response', {
            title: (!err) ? 'Usuario creado con exito' : 'Hubo un problema creando el usuario',
            content: err,
            redirectTo: '/',
            redirectToLinkText: (!err) ? 'Registro exitoso. Por favor, vuelva a loguearse de nuevo' : 'Hubo un problema intentando crear el usuario',
          });
        });
    });
  });

  /**
   * Register an admin
   */
  app.post('/registerAdmin', (req, res) => {
    let user = app.models.user;
    user.create({
      email: req.body.email,
      password: req.body.password,
      username: req.body.username
    }, (err, userInstance) => {
      if( err ){
        res.send({'msg' : "Problema creando el usuario"});
        return;
      }
      let roleMapping = app.models.RoleMapping;
      roleMapping.create({
        'principalId': userInstance.id,
        'roleId': roles.admin,
        'principalType': 'user'
      }, (err, roleInstance) => {
          if(err){
            user.delte(userInstance);
            res.send({'msg': "Problema creando el usuario"});
          }else{
            res.send({'msg': "Usuario creado con exito"});
          }
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
      let user = app.models.user;
      user.findOne({'where': {'email': req.body.email }}, (err, responseUser) => {
        let roleMapping = app.models.RoleMapping.findOne({'where' :{
          'principalId': responseUser.id,
          'principalType': 'user'
        }}, (err, responseRole) => {
            if( responseRole.roleId === roles.admin ){
              let acls = app.models.ACL;
              acls.find({'where': {'principalId': 2}}, (err, acls)=> {
                res.render('admin', {
                  'email': responseUser.email,
                  'accessToken': token.id,
                  'operations': acls
                });
              });
            }else{
              res.render('home', {
                email: req.body.email,
                accessToken: token.id
              });
            }
        });
      });
    });
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
