--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.11
-- Dumped by pg_dump version 9.5.11

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- Name: id_cliente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE id_cliente_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE id_cliente_seq OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cliente (
    id_cliente integer DEFAULT nextval('id_cliente_seq'::regclass) NOT NULL,
    nombres character varying(50) DEFAULT ''::character varying NOT NULL,
    apellidos character varying(50) DEFAULT ''::character varying,
    identificacion character varying(50) NOT NULL,
    edad integer,
    telefono character varying(12) DEFAULT ''::character varying NOT NULL,
    direccion character varying(100) DEFAULT ''::character varying NOT NULL,
    fecha_creacion timestamp without time zone DEFAULT now() NOT NULL,
    fecha_actualizacion timestamp without time zone DEFAULT now() NOT NULL,
    estatus integer DEFAULT 1 NOT NULL
);


ALTER TABLE cliente OWNER TO postgres;

--
-- Name: id_detalle_registro_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE id_detalle_registro_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE id_detalle_registro_seq OWNER TO postgres;

--
-- Name: detalle_registro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE detalle_registro (
    id_detalle_registro integer DEFAULT nextval('id_detalle_registro_seq'::regclass) NOT NULL,
    id_registro integer NOT NULL,
    id_producto integer NOT NULL,
    cantidad integer,
    fecha_creacion timestamp without time zone DEFAULT now() NOT NULL,
    fecha_actualizacion timestamp without time zone DEFAULT now() NOT NULL,
    estatus integer DEFAULT 1 NOT NULL
);


ALTER TABLE detalle_registro OWNER TO postgres;

--
-- Name: id_moneda_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE id_moneda_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE id_moneda_seq OWNER TO postgres;

--
-- Name: id_producto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE id_producto_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE id_producto_seq OWNER TO postgres;

--
-- Name: id_registro_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE id_registro_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE id_registro_seq OWNER TO postgres;

--
-- Name: moneda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE moneda (
    id_moneda integer DEFAULT nextval('id_moneda_seq'::regclass) NOT NULL,
    nombre character varying(50) DEFAULT ''::character varying NOT NULL,
    simbolo character varying(5) DEFAULT ''::character varying,
    fecha_creacion timestamp without time zone DEFAULT now() NOT NULL,
    fecha_actualizacion timestamp without time zone DEFAULT now() NOT NULL,
    estatus integer DEFAULT 1 NOT NULL
);


ALTER TABLE moneda OWNER TO postgres;

--
-- Name: producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE producto (
    id_producto integer DEFAULT nextval('id_producto_seq'::regclass) NOT NULL,
    nombre character varying(50) DEFAULT ''::character varying NOT NULL,
    precio integer,
    fecha_creacion timestamp without time zone DEFAULT now() NOT NULL,
    fecha_actualizacion timestamp without time zone DEFAULT now() NOT NULL,
    estatus integer DEFAULT 1 NOT NULL,
    url_imagen character varying(100) DEFAULT ''::character varying NOT NULL,
    descripcion character varying(200) DEFAULT ''::character varying
);


ALTER TABLE producto OWNER TO postgres;

--
-- Name: registro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE registro (
    id_registro integer DEFAULT nextval('id_registro_seq'::regclass) NOT NULL,
    id_cliente integer NOT NULL,
    id_moneda integer NOT NULL,
    contingencia character varying(5) DEFAULT 'no'::character varying NOT NULL,
    exoneracion character varying(5) DEFAULT 'no'::character varying NOT NULL,
    credito character varying(5) DEFAULT 'no'::character varying NOT NULL,
    dias integer,
    descuento integer DEFAULT 0 NOT NULL,
    observaciones character varying(250) DEFAULT ''::character varying NOT NULL,
    fecha_creacion timestamp without time zone DEFAULT now() NOT NULL,
    fecha_actualizacion timestamp without time zone DEFAULT now() NOT NULL,
    estatus integer DEFAULT 1 NOT NULL
);


ALTER TABLE registro OWNER TO postgres;

--
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cliente (id_cliente, nombres, apellidos, identificacion, edad, telefono, direccion, fecha_creacion, fecha_actualizacion, estatus) FROM stdin;
1	Leonardo Ramon	Pineda Suarez	v-19727835	27	584245042292	Carrera 7 esquina Calle 6 Barrio el carmen	2018-05-12 04:07:20.603014	2018-05-12 04:07:20.603014	1
2	Jose alverto	Guerrero Perez	v-19469394	23	584145342492	Carrera 37 esquina Calle 9 San Jose	2018-05-12 04:10:58.90615	2018-05-12 04:10:58.90615	1
\.


--
-- Data for Name: detalle_registro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY detalle_registro (id_detalle_registro, id_registro, id_producto, cantidad, fecha_creacion, fecha_actualizacion, estatus) FROM stdin;
1	5	1	14	2018-05-13 08:17:47.420197	2018-05-13 08:17:47.420197	1
2	6	1	14	2018-05-13 08:18:01.857639	2018-05-13 08:18:01.857639	1
3	7	1	14	2018-05-13 08:18:44.656885	2018-05-13 08:18:44.656885	1
4	7	2	13	2018-05-13 08:18:44.666516	2018-05-13 08:18:44.666516	1
5	8	1	14	2018-05-13 08:20:31.097087	2018-05-13 08:20:31.097087	1
6	8	2	16	2018-05-13 08:20:31.106805	2018-05-13 08:20:31.106805	1
7	9	2	7	2018-05-13 08:45:12.258464	2018-05-13 08:45:12.258464	1
8	9	1	10	2018-05-13 08:45:12.277976	2018-05-13 08:45:12.277976	1
9	10	2	7	2018-05-13 08:48:26.175453	2018-05-13 08:48:26.175453	1
10	10	1	5	2018-05-13 08:48:26.333313	2018-05-13 08:48:26.333313	1
11	11	2	9	2018-05-13 08:57:38.087465	2018-05-13 08:57:38.087465	1
12	11	1	3	2018-05-13 08:57:38.476224	2018-05-13 08:57:38.476224	1
\.


--
-- Name: id_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('id_cliente_seq', 2, true);


--
-- Name: id_detalle_registro_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('id_detalle_registro_seq', 12, true);


--
-- Name: id_moneda_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('id_moneda_seq', 2, true);


--
-- Name: id_producto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('id_producto_seq', 3, true);


--
-- Name: id_registro_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('id_registro_seq', 11, true);


--
-- Data for Name: moneda; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY moneda (id_moneda, nombre, simbolo, fecha_creacion, fecha_actualizacion, estatus) FROM stdin;
1	Colones	₡	2018-05-12 03:46:34.932732	2018-05-12 03:46:34.932732	1
2	Dolares	$	2018-05-12 03:46:50.358016	2018-05-12 03:46:50.358016	1
\.


--
-- Data for Name: producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY producto (id_producto, nombre, precio, fecha_creacion, fecha_actualizacion, estatus, url_imagen, descripcion) FROM stdin;
1	producto 1	10000	2018-05-12 01:26:42.952432	2018-05-12 01:26:42.952432	1	https://res.cloudinary.com/saschanutric/image/upload/v1524779283/logosascha.png	Descripcion
3	producto 3	10000	2018-05-12 01:27:10.965845	2018-05-12 01:27:10.965845	1	https://res.cloudinary.com/saschanutric/image/upload/v1524779283/logosascha.png	Descripcion
2	producto 2	10000	2018-05-12 01:27:06.205907	2018-05-12 01:27:06.205907	1	https://res.cloudinary.com/saschanutric/image/upload/v1524779283/logosascha.png	Descripcion
\.


--
-- Data for Name: registro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY registro (id_registro, id_cliente, id_moneda, contingencia, exoneracion, credito, dias, descuento, observaciones, fecha_creacion, fecha_actualizacion, estatus) FROM stdin;
1	1	2	no	no	si	0	5	Ninguna	2018-05-13 07:53:50.300217	2018-05-13 07:53:50.300217	1
2	1	1	no	si	si	10	5	Ninguna	2018-05-13 08:02:39.862754	2018-05-13 08:02:39.862754	1
3	1	2	si	no	si	10	20	Ningina	2018-05-13 08:06:27.276664	2018-05-13 08:06:27.276664	1
4	1	2	no	si	si	10	10	Ninguna	2018-05-13 08:11:42.746755	2018-05-13 08:11:42.746755	1
5	1	2	no	si	si	10	10	Ninguna	2018-05-13 08:17:47.058109	2018-05-13 08:17:47.058109	1
6	1	2	no	si	si	10	10	Ninguna	2018-05-13 08:18:01.436567	2018-05-13 08:18:01.436567	1
7	1	2	no	si	si	10	10	Ninguna	2018-05-13 08:18:44.411288	2018-05-13 08:18:44.411288	1
8	1	1	no	si	si	20	12		2018-05-13 08:20:30.826068	2018-05-13 08:20:30.826068	1
9	1	2	no	si	si	10	5	Ninguna	2018-05-13 08:45:11.991389	2018-05-13 08:45:11.991389	1
10	1	2	no	si	si	10	12		2018-05-13 08:48:25.950045	2018-05-13 08:48:25.950045	1
11	1	2	si	no	si	30	18	Ninguno	2018-05-13 08:57:37.784914	2018-05-13 08:57:37.784914	1
\.


--
-- Name: cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);


--
-- Name: detalle_registro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY detalle_registro
    ADD CONSTRAINT detalle_registro_pkey PRIMARY KEY (id_detalle_registro);


--
-- Name: moneda_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY moneda
    ADD CONSTRAINT moneda_pkey PRIMARY KEY (id_moneda);


--
-- Name: producto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id_producto);


--
-- Name: registro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY registro
    ADD CONSTRAINT registro_pkey PRIMARY KEY (id_registro);


--
-- Name: detalle_registro_id_producto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY detalle_registro
    ADD CONSTRAINT detalle_registro_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES producto(id_producto);


--
-- Name: detalle_registro_id_registro_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY detalle_registro
    ADD CONSTRAINT detalle_registro_id_registro_fkey FOREIGN KEY (id_registro) REFERENCES registro(id_registro);


--
-- Name: registro_id_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY registro
    ADD CONSTRAINT registro_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente);


--
-- Name: registro_id_moneda_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY registro
    ADD CONSTRAINT registro_id_moneda_fkey FOREIGN KEY (id_moneda) REFERENCES moneda(id_moneda);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

