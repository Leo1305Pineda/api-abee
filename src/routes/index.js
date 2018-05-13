var express = require('express');

const clientesCtrl   = require('../controllers/clientes');
const productosCtrl  = require('../controllers/productos');
const monedasCtrl    = require('../controllers/monedas');
const registrosCtrl  = require('../controllers/registros');

module.exports = (function () {

	var api = express.Router();
  
  	api.get('/', function(req, res, next) {
    	res.status(200)
      	.json({
	        error : false,
    	    data : { message : 'api-sascha' }
      	})
  	});

    api.get('/clientes',          clientesCtrl.getClientes);
    api.post('/clientes',         clientesCtrl.saveCliente);
    api.get('/cliente/:id',       clientesCtrl.getClienteById);  
    api.put('/cliente/:id',       clientesCtrl.updateCliente);
    api.delete('/cliente/:id',    clientesCtrl.deleteCliente);  

    api.get('/monedas',           monedasCtrl.getMonedas);
    api.post('/monedas',          monedasCtrl.saveMoneda);
    api.get('/moneda/:id',        monedasCtrl.getMonedaById);  
    api.put('/moneda/:id',        monedasCtrl.updateMoneda);
    api.delete('/moneda/:id',     monedasCtrl.deleteMoneda);  

  	api.get('/productos',      	  productosCtrl.getProductos);
  	api.post('/productos',        productosCtrl.saveProducto);
  	api.get('/producto/:id',      productosCtrl.getProductoById);  
  	api.put('/producto/:id',      productosCtrl.updateProducto);
  	api.delete('/producto/:id',   productosCtrl.deleteProducto);  

    api.post('/registros',        registrosCtrl.saveRegistro);
    api.post('/registros/detalle',registrosCtrl.saveDetalleRegistro);

	return api;

})();