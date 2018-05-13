'use strict';

const Bookshelf             = require('../commons/bookshelf');
const Registro              = require('../models/registro');
const DetalleRegistro       = require('../models/detalle');

function saveRegistro(req, res, next){
	
		Registro.forge({ 
			id_cliente:req.body.id_cliente ,
			id_moneda:req.body.id_moneda,
			contingencia:req.body.contingencia,
			exoneracion:req.body.exoneracion,
			credito:req.body.credito,
			dias:req.body.dias,
			descuento:req.body.descuento,
			observaciones:req.body.observaciones
		})
		.save()
		.then(function(data){
			res.status(200).json({
				error: false,
				data: data
			});
		})
		.catch(function (err) {
			res.status(500)
			.json({
				error: true,
				data: {message: err.message}
			});
		});
}

function saveDetalleRegistro(req, res, next){
	
		DetalleRegistro.forge({ 
			id_registro:req.body.id_registro ,
			id_producto:req.body.id_producto,
			cantidad:req.body.cantidad
		})
		.save()
		.then(function(data){
			res.status(200).json({
				error: false,
				data: data
			});
		})
		.catch(function (err) {
			res.status(500)
			.json({
				error: true,
				data: {message: err.message}
			});
		});
}

module.exports = {
	saveRegistro,
	saveDetalleRegistro
}