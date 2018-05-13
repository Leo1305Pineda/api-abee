'use strict'

const Bookshelf = require('../commons/bookshelf');

let DetalleRegistro = Bookshelf.Model.extend({
  tableName: 'detalle_registro',
  idAttribute: 'id_detalle_registro'
});

module.exports = Bookshelf.model('DetalleRegistro', DetalleRegistro);