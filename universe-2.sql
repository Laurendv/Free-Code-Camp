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
    galaxy_id integer NOT NULL,
    name character varying(30),
    has_life boolean,
    age_in_millions_years numeric,
    water_estimates_in_millions integer,
    distance_from_earth integer NOT NULL,
    description text,
    star_id integer
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
    planet_id integer,
    name character varying(30),
    has_life boolean,
    distance_from_earth integer NOT NULL
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
    star_id integer,
    name character varying(30),
    has_life boolean,
    distance_from_earth integer NOT NULL
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
-- Name: population; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.population (
    population_id integer NOT NULL,
    galaxy_id integer,
    faction text NOT NULL,
    name character varying(30)
);


ALTER TABLE public.population OWNER TO freecodecamp;

--
-- Name: population_population_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.population_population_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.population_population_id_seq OWNER TO freecodecamp;

--
-- Name: population_population_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.population_population_id_seq OWNED BY public.population.population_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer,
    name character varying(30),
    has_life boolean,
    distance_from_earth integer NOT NULL
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
-- Name: population population_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.population ALTER COLUMN population_id SET DEFAULT nextval('public.population_population_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Milky', false, 500, 30, 1000, 'Nice galaxy', 1);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', false, 200, 10, 3000, 'ugly planets and animals', 2);
INSERT INTO public.galaxy VALUES (4, 'Cassandra', true, 400, 30, 5000, 'nice planet', 3);
INSERT INTO public.galaxy VALUES (5, 'Lauroneda', false, 200, 10, 9000, 'ok planet', 4);
INSERT INTO public.galaxy VALUES (6, 'Renoveda', true, 300, 20, 34000, 'nothing to say about it', 5);
INSERT INTO public.galaxy VALUES (7, 'Raptor', true, 300, 20, 43000, 'not bad', 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (2, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (3, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (4, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (5, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (6, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (7, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (8, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (9, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (10, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (11, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (12, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (13, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (14, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (15, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (16, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (17, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (18, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (19, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (20, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (21, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (22, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (23, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (24, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (25, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (26, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (27, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (28, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (29, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (30, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (31, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (32, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (33, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (34, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (35, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (36, 3, 'Moonli', false, 400);
INSERT INTO public.moon VALUES (37, 3, 'Moonli', false, 400);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Earth', true, 300);
INSERT INTO public.planet VALUES (2, 1, 'Earth', true, 300);
INSERT INTO public.planet VALUES (3, 1, 'Earth', true, 300);
INSERT INTO public.planet VALUES (4, 1, 'Earth', true, 300);
INSERT INTO public.planet VALUES (5, 1, 'Earth', true, 300);
INSERT INTO public.planet VALUES (6, 1, 'Earth', true, 300);
INSERT INTO public.planet VALUES (7, 1, 'Earth', true, 300);
INSERT INTO public.planet VALUES (8, 1, 'Earth', true, 300);
INSERT INTO public.planet VALUES (9, 1, 'Earth', true, 300);
INSERT INTO public.planet VALUES (10, 1, 'Earth', true, 300);
INSERT INTO public.planet VALUES (11, 1, 'Earth', true, 300);
INSERT INTO public.planet VALUES (12, 1, 'Earth', true, 300);
INSERT INTO public.planet VALUES (13, 1, 'Earth', true, 300);
INSERT INTO public.planet VALUES (14, 1, 'Earth', true, 300);
INSERT INTO public.planet VALUES (15, 1, 'Earth', true, 300);
INSERT INTO public.planet VALUES (16, 1, 'Earth', true, 300);
INSERT INTO public.planet VALUES (17, 1, 'Earth', true, 300);
INSERT INTO public.planet VALUES (18, 1, 'Earth', true, 300);
INSERT INTO public.planet VALUES (19, 1, 'Earth', true, 300);
INSERT INTO public.planet VALUES (20, 1, 'Earth', true, 300);


--
-- Data for Name: population; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.population VALUES (1, 3, 'humans', 'humanity');
INSERT INTO public.population VALUES (2, 3, 'humans', 'humanity');
INSERT INTO public.population VALUES (3, 3, 'humans', 'humanity');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 2, 'Moonstar', true, 300);
INSERT INTO public.star VALUES (2, 2, 'Boonstar', true, 400);
INSERT INTO public.star VALUES (3, 2, 'Moonstar', true, 500);
INSERT INTO public.star VALUES (4, 4, 'Mpoestar', true, 500);
INSERT INTO public.star VALUES (5, 4, 'Toonstar', false, 4000);
INSERT INTO public.star VALUES (6, 6, 'Loom', false, 4300);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 37, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: population_population_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.population_population_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: population population_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.population
    ADD CONSTRAINT population_pkey PRIMARY KEY (population_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_id UNIQUE (galaxy_id);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: population unique_pop_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.population
    ADD CONSTRAINT unique_pop_id UNIQUE (population_id);


--
-- Name: star unique_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: population fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.population
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

