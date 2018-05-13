'use strict'

const Bookshelf = require('../commons/bookshelf');

let Registro = Bookshelf.Model.extend({
  tableName: 'registro',
  idAttribute: 'id_registro'
});

module.exports = Bookshelf.model('Registro', Registro);
