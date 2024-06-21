--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(100) NOT NULL,
    composition text NOT NULL,
    mass numeric NOT NULL,
    is_potentially_hazardous boolean NOT NULL
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    type text NOT NULL,
    size integer NOT NULL,
    distance numeric NOT NULL,
    has_life boolean NOT NULL
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
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    planet_id integer,
    type text NOT NULL,
    diameter numeric NOT NULL,
    has_atmosphere boolean NOT NULL,
    orbit_period integer NOT NULL
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
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    star_id integer,
    type text NOT NULL,
    radius numeric NOT NULL,
    has_water boolean NOT NULL,
    population integer NOT NULL
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
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    galaxy_id integer,
    type text NOT NULL,
    mass numeric NOT NULL,
    is_visible boolean NOT NULL,
    age integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', 'Rocky', 939300000000000000000, false);
INSERT INTO public.asteroid VALUES (2, 'Pallas', 'Rocky', 239300000000000000000, false);
INSERT INTO public.asteroid VALUES (3, 'Vesta', 'Rocky', 253000000000000000000, false);
INSERT INTO public.asteroid VALUES (4, 'Hygiea', 'Carbonaceous', 853000000000000000000, false);
INSERT INTO public.asteroid VALUES (5, 'Eunomia', 'Sylicaceous', 356300000000000000000, false);
INSERT INTO public.asteroid VALUES (6, 'Juno', 'Sylicaceous', 267000000000000000000, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'MILKY WAY', 'SPIRAL', 100000, 0, true);
INSERT INTO public.galaxy VALUES (2, 'ANDROMEDA', 'SPIRAL', 220000, 2537000, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 5000, 29000000, false);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'Spiral', 600000, 3000000, false);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'Spiral', 600000, 23000000, false);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 'Spiral', 1700000, 2100000, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Moon', 2, 'Terrestical', 3474, false, 27);
INSERT INTO public.moon VALUES (3, 'Phobos', 4, 'Irregular', 22, false, 27);
INSERT INTO public.moon VALUES (4, 'Deimos', 4, 'Irregular', 12, false, 1);
INSERT INTO public.moon VALUES (5, 'Europa', 5, 'Icy', 3121, false, 4);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 'Icy', 5268, false, 4);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 'Icy', 5268, false, 4);
INSERT INTO public.moon VALUES (8, 'Io', 5, 'Volcanic', 4368, false, 5);
INSERT INTO public.moon VALUES (9, 'Titan', 5, 'Icy', 5668, false, 5);
INSERT INTO public.moon VALUES (10, 'Enceladus', 5, 'Icy', 500, false, 2);
INSERT INTO public.moon VALUES (11, 'Mimas', 6, 'Icy', 500, false, 2);
INSERT INTO public.moon VALUES (12, 'Triton', 8, 'Icy', 27500, true, 7);
INSERT INTO public.moon VALUES (13, 'Charon', 7, 'Icy', 27500, false, 7);
INSERT INTO public.moon VALUES (14, 'Oberon', 7, 'Icy', 27500, false, 7);
INSERT INTO public.moon VALUES (15, 'Titania', 7, 'Icy', 27500, false, 7);
INSERT INTO public.moon VALUES (16, 'Umbriel', 7, 'Icy', 200, false, 7);
INSERT INTO public.moon VALUES (17, 'Ariel', 7, 'Icy', 200, false, 7);
INSERT INTO public.moon VALUES (18, 'Miranda', 7, 'Icy', 200, false, 7);
INSERT INTO public.moon VALUES (19, 'Nereid', 8, 'Icy', 3400, false, 361);
INSERT INTO public.moon VALUES (20, 'Proteus', 8, 'Icy', 416, false, 1);
INSERT INTO public.moon VALUES (21, 'Dysmonia', 10, 'Icy', 616, false, 16);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 'Terrestical', 2439, false, 0);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 'Terrestical', 6052, false, 0);
INSERT INTO public.planet VALUES (4, 'Earth', 1, 'Terrestical', 6371, true, 78000000);
INSERT INTO public.planet VALUES (5, 'Mars', 1, 'Terrestical', 3389, false, 0);
INSERT INTO public.planet VALUES (6, 'Jupiter', 1, 'Gas Giant', 69911, false, 0);
INSERT INTO public.planet VALUES (7, 'Saturn', 1, 'Gas Giant', 58232, false, 0);
INSERT INTO public.planet VALUES (8, 'Uranus', 1, 'Ice Giant', 25362, false, 0);
INSERT INTO public.planet VALUES (9, 'Neptune', 1, 'Ice Giant', 25362, false, 0);
INSERT INTO public.planet VALUES (10, 'Proxima b', 8, 'Terrestrical', 25362, false, 0);
INSERT INTO public.planet VALUES (11, 'Alpha Centauri Bb', 2, 'Terrestrical', 11362, false, 0);
INSERT INTO public.planet VALUES (12, 'Sirius B', 12, 'Dwarf', 58362, false, 0);
INSERT INTO public.planet VALUES (14, 'kepler-22b', 4, 'Super-Earth', 12362, false, 0);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star1', 1, 'ST1', 0.1, true, 450000000);
INSERT INTO public.star VALUES (2, 'Star2', 2, 'ST2', 0.2, true, 10000000);
INSERT INTO public.star VALUES (3, 'Star3', 3, 'ST3', 20.0, true, 30000000);
INSERT INTO public.star VALUES (4, 'Star4', 3, 'ST4', 20.0, true, 30000000);
INSERT INTO public.star VALUES (5, 'Star5', 4, 'ST5', 0.23, true, 30000000);
INSERT INTO public.star VALUES (6, 'Star6', 4, 'ST6', 0.23, true, 30000000);
INSERT INTO public.star VALUES (7, 'Star7', 5, 'ST7', 0.23, true, 45550000);
INSERT INTO public.star VALUES (8, 'Star8', 5, 'ST8', 0.23, true, 45550000);
INSERT INTO public.star VALUES (9, 'Star9', 6, 'ST9', 0.23, true, 88550000);
INSERT INTO public.star VALUES (10, 'Star10', 6, 'ST10', 0.23, true, 88550000);
INSERT INTO public.star VALUES (11, 'Star11', 2, 'ST11', 0.23, true, 88550000);
INSERT INTO public.star VALUES (12, 'Star12', 3, 'ST12', 0.23, true, 88550000);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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
-- PostgreSQL database dump complete
--

