# api-abee
api-abee para el registro de factura digital

# Informacion sobre las rutas

## Tabla de contenido 
* [Host | Port](#host-port)
* [Test](#test)
* [Modelo Generico](#modelo-generico)
* [Maestros](#maestros)
    * [clientes](#clientes)
    * [monedas](#monedas)
    * [productos](#productos)
* [registros](#registros)
* [detalle](#detalle)

# Host | Port

Local con:
ir a [http://localhost:5000](http://localhost:5000) en tu nevegador

Heroku con:
ir a [https://api-abee.heroku.com/](https://api-abee.heroku.com/) en tu nevegador

# Test

Postman [https://www.getpostman.com/](https://www.getpostman.com/)

# Modelo Generico

```
    ├─GET────/objeto          * Retorna todos.
    ├─POST───/objeto          * Guarda. 
    ├─GET────/objeto/:id      * Retorna por id.
    ├─PUT────/objeto/:id      * Actualiza.
    ├─DELETE─/objeto/:id      * Elimina.


 ├─GET────/objetos
    ├─JSON 200
    ├──{
        "error": false,
        "data": [{
            "atributo":"valor"
        }]
    }
 ├─POST───/objetos
    ├─JSON 200
    ├──{
    "error": false,
    "data": [
        {
            "msg": "Registro Creado"
        }
    ]}
 ├─GET────/objetos/1
    ├─JSON 200
    ├──{
        
    }
    ├─JSON 400
        ├──´´[{
            "error": true,
        "data": [ msg:"" ]
    }]
├─PUT───/objeto/1
    ├─JSON 200
    ├──{
    "error": false,
    "data": [
        {
            "msg": "Registro actualizado"
        }
    ]}
├─PUT───/objeto/1
    ├─JSON 200
    ├──{
    "error": false,
    "data": [
        {
            "msg": "Registro eliminado"
        }
    ]}
```
# clientes

```
    ├─GET────/clientes      * Retorna todos.
    ├─POST───/clientes      * Guarda. 
    ├─GET────/cliente/:id   * Retorna por id.
    ├─PUT────/cliente/:id   * Actualiza.
    ├─DELETE─/cliente/:id   * Elimina.
    ├─Body─{
        "nombres": "" ,
		"apellidos": "" ,
		"identificacion": "" ,
		"edad": "" ,
		"telefono": "" ,
		"direccion": ""
    }  
```

[[ver json]](https://api-abee.herokuapp.com/clientes)

# monedas

```
    ├─GET────/monedas     	* Retorna todos.
    ├─POST───/monedas     	* Guarda. 
    ├─GET────/moneda/:id   	* Retorna por id.
    ├─PUT────/moneda/:id   	* Actualiza.
    ├─DELETE─/moneda/:id   	* Elimina.
    ├─Body─{
        "nombre": "",
        "simbolo": ""
    }  
```

[[ver json]](https://api-abee.herokuapp.com/monedas)

# productos

```
    ├─GET────/productos     	* Retorna todos.
    ├─POST───/productos     	* Guarda. 
    ├─GET────/producto/:id   	* Retorna por id.
    ├─PUT────/producto/:id   	* Actualiza.
    ├─DELETE─/producto/:id   	* Elimina.
    ├─Body─{
        "nombre": "",
    	"descripcion": "",
    	"url_imagen": "",
    	"precio": 0
    }  
```

[[ver json]](https://api-abee.herokuapp.com/monedas)


# registros

```
    ├─POST───/registros     		* Guarda. 
    ├─Body─{
        "id_cliente": 1,
		"id_moneda": 1,
		"contingencia": "no",
		"exoneracion": "no",
		"credito": "no",
		"dias": 0,
		"descuento": "",
		"observaciones": ""
    }  
```

# detalle

```
    ├─POST───/registros/detalle     * Guarda. 
    ├─Body─{
    	"id_registro": 1,
    	"id_producto": 1,
    	"cantidad": 1
    }  
```
