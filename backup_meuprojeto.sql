--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5 (Debian 17.5-1.pgdg120+1)
-- Dumped by pg_dump version 17.5 (Debian 17.5-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: mogado
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.hibernate_sequence OWNER TO mogado;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: responsavel; Type: TABLE; Schema: public; Owner: mogado
--

CREATE TABLE public.responsavel (
    id bigint DEFAULT nextval('public.hibernate_sequence'::regclass) NOT NULL,
    nome character varying(255)
);


ALTER TABLE public.responsavel OWNER TO mogado;

--
-- Name: tarefa; Type: TABLE; Schema: public; Owner: mogado
--

CREATE TABLE public.tarefa (
    id bigint DEFAULT nextval('public.hibernate_sequence'::regclass) NOT NULL,
    detalhes character varying(255),
    numero_auto bigint,
    deadline character varying(255),
    numero character varying(255),
    prioridade character varying(255),
    situacao character varying(255),
    titulo character varying(255),
    responsavel_id bigint
);


ALTER TABLE public.tarefa OWNER TO mogado;

--
-- Data for Name: responsavel; Type: TABLE DATA; Schema: public; Owner: mogado
--

COPY public.responsavel (id, nome) FROM stdin;
1	teste
\.


--
-- Data for Name: tarefa; Type: TABLE DATA; Schema: public; Owner: mogado
--

COPY public.tarefa (id, detalhes, numero_auto, deadline, numero, prioridade, situacao, titulo, responsavel_id) FROM stdin;
\.


--
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: mogado
--

SELECT pg_catalog.setval('public.hibernate_sequence', 2, true);


--
-- Name: responsavel responsavel_pkey; Type: CONSTRAINT; Schema: public; Owner: mogado
--

ALTER TABLE ONLY public.responsavel
    ADD CONSTRAINT responsavel_pkey PRIMARY KEY (id);


--
-- Name: tarefa tarefa_pkey; Type: CONSTRAINT; Schema: public; Owner: mogado
--

ALTER TABLE ONLY public.tarefa
    ADD CONSTRAINT tarefa_pkey PRIMARY KEY (id);


--
-- Name: tarefa fk_tarefa_responsavel; Type: FK CONSTRAINT; Schema: public; Owner: mogado
--

ALTER TABLE ONLY public.tarefa
    ADD CONSTRAINT fk_tarefa_responsavel FOREIGN KEY (responsavel_id) REFERENCES public.responsavel(id);


--
-- PostgreSQL database dump complete
--

