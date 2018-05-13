'use strict'

const Bookshelf = require('../commons/bookshelf');
const Moneda = require('../models/moneda');

const Monedas = Bookshelf.Collection.extend({
	model: Moneda
});

module.exports = Monedas;
