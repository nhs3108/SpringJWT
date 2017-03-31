--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.9
-- Dumped by pg_dump version 9.5.9

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "user" (
    user_id integer NOT NULL,
    username character varying(64) NOT NULL,
    password text NOT NULL,
    role character varying(32) DEFAULT 'user'::character varying NOT NULL,
    enabled boolean DEFAULT true NOT NULL
);


ALTER TABLE "user" OWNER TO postgres;

--
-- Name: user_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE user_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_user_id_seq OWNER TO postgres;

--
-- Name: user_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE user_user_id_seq OWNED BY "user".user_id;


--
-- Name: user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "user" ALTER COLUMN user_id SET DEFAULT nextval('user_user_id_seq'::regclass);


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "user" (user_id, username, password, role, enabled) FROM stdin;
1	nhs3108	123456	admin	t
\.


--
-- Name: user_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('user_user_id_seq', 1, false);


--
-- Name: user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (user_id);


--
-- Name: user_username_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX user_username_uindex ON "user" USING btree (username);


--
-- PostgreSQL database dump complete
--

