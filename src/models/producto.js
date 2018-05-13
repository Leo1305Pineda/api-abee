'use strict'

const Bookshelf = require('../commons/bookshelf');

let Producto = Bookshelf.Model.extend({
  tableName: 'producto',
  idAttribute: 'id_producto'
});

module.exports = Bookshelf.model('Producto', Producto);
