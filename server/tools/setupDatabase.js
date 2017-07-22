'use strict';
const path = require('path');
const app = require(path.resolve(__dirname, '../server'));
const models = require(path.resolve(__dirname, '../model-config.json'));
const datasources = require(path.resolve(__dirname, '../datasources.json'));

class DbInstaller {

  static setup(datasources, models) {
    Object.keys(models).forEach(function(key) {
      if (typeof models[key].dataSource != 'undefined') {
        if (typeof datasources[models[key].dataSource] != 'undefined') {
          app.dataSources[models[key].dataSource].automigrate(key, err => {
            if (err) throw err;
            console.log('Model ' + key + ' migrated');
          });
        }
      }
    });
  }

};

DbInstaller.setup(datasources, models);

