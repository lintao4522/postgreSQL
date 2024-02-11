
--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(40) NOT NULL,
    galaxy_id integer NOT NULL,
    age integer,
    distance integer,
    description character varying(40)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(40) NOT NULL,
    moon_id integer NOT NULL,
    age integer,
    distance numeric(4,1),
    description text,
    has_life boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(40) NOT NULL,
    planet_id integer NOT NULL,
    age integer,
    distance integer,
    description character varying(40),
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(40) NOT NULL,
    star_id integer NOT NULL,
    age integer,
    distance integer,
    description character varying(40),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_planet (
    star_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(40),
    star_planet_id integer NOT NULL
);


ALTER TABLE public.star_planet OWNER TO freecodecamp;

--
-- Name: star_planet_star_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_planet_star_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_planet_star_planet_id_seq OWNER TO freecodecamp;

--
-- Name: star_planet_star_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_planet_star_planet_id_seq OWNED BY public.star_planet.star_planet_id;


--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star_planet star_planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_planet ALTER COLUMN star_planet_id SET DEFAULT nextval('public.star_planet_star_planet_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('银河星系', 1, 145, NULL, NULL);
INSERT INTO public.galaxy VALUES ('仙女星系', 2, 140, NULL, NULL);
INSERT INTO public.galaxy VALUES ('大麦哲伦星系', 3, 20, NULL, NULL);
INSERT INTO public.galaxy VALUES ('三角座星系', 5, 140, NULL, NULL);
INSERT INTO public.galaxy VALUES ('小麦哲伦星系', 4, 10, NULL, NULL);
INSERT INTO public.galaxy VALUES ('仙女座星系团', 6, 100, NULL, NULL);
INSERT INTO public.galaxy VALUES ('其他星系', 7, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('月球', 1, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES ('火卫一', 2, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES ('火卫二', 3, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES ('木卫一', 4, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES ('木卫二', 5, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES ('木卫三', 6, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES ('木卫四', 7, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES ('木卫十五', 8, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES ('木卫十六', 9, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES ('木卫十七', 10, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES ('木卫十八', 11, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES ('土卫二', 12, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('土卫五', 13, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('土卫六', 14, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('土卫八', 15, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('天卫一', 16, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('天卫二', 17, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('天卫三', 18, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('天卫四', 19, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('天卫五', 20, NULL, NULL, NULL, NULL, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('水星', 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('金星', 2, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('地球', 3, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('火星', 4, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('木星', 5, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('土星', 6, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('天王星', 7, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('海王星', 8, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('51 Pegasi b', 9, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES ('TrES-1', 10, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES ('HD 209458 b', 11, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES ('Kepler-186f', 12, NULL, NULL, NULL, NULL, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('太阳', 1, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES ('天狼星A', 2, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES ('北落师门', 3, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES ('参宿四', 4, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES ('盾牌座UY', 5, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES ('轩辕十四', 6, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES ('飞马座51', 7, NULL, NULL, NULL, 7);
INSERT INTO public.star VALUES ('GSC 02652-01324', 8, NULL, NULL, NULL, 7);
INSERT INTO public.star VALUES ('HD 209458', 9, NULL, NULL, NULL, 7);
INSERT INTO public.star VALUES ('开普勒186', 10, NULL, NULL, NULL, 7);


--
-- Data for Name: star_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_planet VALUES (1, 1, NULL, 1);
INSERT INTO public.star_planet VALUES (1, 2, NULL, 2);
INSERT INTO public.star_planet VALUES (1, 3, NULL, 3);
INSERT INTO public.star_planet VALUES (1, 4, NULL, 4);
INSERT INTO public.star_planet VALUES (1, 5, NULL, 5);
INSERT INTO public.star_planet VALUES (1, 6, NULL, 6);
INSERT INTO public.star_planet VALUES (1, 7, NULL, 7);
INSERT INTO public.star_planet VALUES (1, 8, NULL, 8);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_planet_star_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_planet_star_planet_id_seq', 8, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star_planet star_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_planet
    ADD CONSTRAINT star_planet_pkey PRIMARY KEY (star_planet_id);


--
-- Name: star_planet star_planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_planet
    ADD CONSTRAINT star_planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star_planet star_planet_star_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_planet
    ADD CONSTRAINT star_planet_star_planet_id_key UNIQUE (star_planet_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star_planet star_planet_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_planet
    ADD CONSTRAINT star_planet_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star_planet star_planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_planet
    ADD CONSTRAINT star_planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

