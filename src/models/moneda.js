'use strict'

const Bookshelf = require('../commons/bookshelf');

let Moneda = Bookshelf.Model.extend({
  tableName: 'moneda',
  idAttribute: 'id_moneda'
});

module.exports = Bookshelf.model('Moneda', Moneda);
