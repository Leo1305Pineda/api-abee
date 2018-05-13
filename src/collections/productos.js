'use strict'

const Bookshelf = require('../commons/bookshelf');
const Producto = require('../models/producto');

const Productos = Bookshelf.Collection.extend({
	model: Producto
});

module.exports = Productos;
