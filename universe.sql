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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(40) NOT NULL,
    size integer
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    has_life boolean,
    distance_from_earth integer,
    size numeric(6,2),
    age_in_m integer
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
    name character varying(40) NOT NULL,
    description text,
    has_life boolean,
    distance_from_earth integer,
    size numeric(6,2),
    age_in_m integer,
    planet_id integer NOT NULL
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
    name character varying(40) NOT NULL,
    description text,
    has_life boolean,
    distance_from_earth integer,
    size numeric(6,2),
    age_in_m integer,
    star_id integer NOT NULL
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
    name character varying(40) NOT NULL,
    description text,
    has_life boolean,
    distance_from_earth integer,
    size numeric(6,2),
    age_in_m integer,
    galaxy_id integer
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Ngc 1277', 100);
INSERT INTO public.black_hole VALUES (2, 'Ic 1101', 101);
INSERT INTO public.black_hole VALUES (3, 'Ton 618', 102);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'This galaxy containing the sun and Solar System', true, 0, 6.50, 13610);
INSERT INTO public.galaxy VALUES (2, 'Large Magellanic Cloud', 'Visible only from southern hemisphere', false, 160, 0.90, 1101);
INSERT INTO public.galaxy VALUES (3, 'Small Magellanic Cloud', 'Visible only from southern hemisphere', false, 200, 2.70, 13101);
INSERT INTO public.galaxy VALUES (4, 'Andromeda Galaxy', 'it is situated in andromeda constellation', false, 2500, 3.40, 10010);
INSERT INTO public.galaxy VALUES (5, 'Triangulum Galaxy', 'a huge thingy in the sky', false, 2900, 5.70, 12010);
INSERT INTO public.galaxy VALUES (6, 'Bodes Galaxy', 'a huge thingy in the sky', false, 12000, 6.94, 13010);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 'white', false, 10, 0.40, 504, 3);
INSERT INTO public.moon VALUES (2, 'Europa', 'white', false, 1050, 0.40, 504, 5);
INSERT INTO public.moon VALUES (3, 'IO', 'Yellow', false, 1050, 0.40, 504, 5);
INSERT INTO public.moon VALUES (4, 'Callisto', 'Grey', false, 1050, 0.40, 504, 5);
INSERT INTO public.moon VALUES (5, 'AA', 'Grey', false, 1050, 0.40, 504, 5);
INSERT INTO public.moon VALUES (6, 'AB', 'Grey', false, 1050, 0.40, 504, 5);
INSERT INTO public.moon VALUES (7, 'AC', 'Grey', false, 1050, 0.40, 504, 5);
INSERT INTO public.moon VALUES (8, 'AD', 'Grey', false, 1050, 0.40, 504, 5);
INSERT INTO public.moon VALUES (9, 'AE', 'Grey', false, 1050, 0.40, 504, 5);
INSERT INTO public.moon VALUES (10, 'AF', 'Grey', false, 1050, 0.40, 504, 5);
INSERT INTO public.moon VALUES (11, 'Adklfbn', 'Grey', false, 1050, 0.40, 504, 5);
INSERT INTO public.moon VALUES (12, 'Adkzdv', 'Grey', false, 1050, 0.40, 504, 5);
INSERT INTO public.moon VALUES (13, 'Adasdv', 'Grey', false, 1050, 0.40, 504, 5);
INSERT INTO public.moon VALUES (14, 'asdsdv', 'Grey', false, 1050, 0.40, 504, 5);
INSERT INTO public.moon VALUES (15, 'asdv', 'Grey', false, 1050, 0.40, 504, 5);
INSERT INTO public.moon VALUES (16, 'asvfnv', 'Grey', false, 1050, 0.40, 504, 5);
INSERT INTO public.moon VALUES (17, 'aspokl', 'Grey', false, 1050, 0.40, 504, 5);
INSERT INTO public.moon VALUES (18, 'aspdg', 'Grey', false, 1050, 0.40, 504, 5);
INSERT INTO public.moon VALUES (19, 'a51dg', 'Grey', false, 1050, 0.40, 504, 5);
INSERT INTO public.moon VALUES (20, 'a51dg2i', 'Grey', false, 1050, 0.40, 504, 5);
INSERT INTO public.moon VALUES (21, 'a44g2i', 'Grey', false, 1050, 0.40, 504, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Hot', false, 3, 4.20, 1000, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Little Hot', false, 2, 8.20, 1001, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Perfect', true, 0, 13.20, 1003, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Good', false, 2, 12.20, 1003, 1);
INSERT INTO public.planet VALUES (5, 'Jupitar', 'Huge', false, 6, 50.40, 1013, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Ring', false, 9, 41.40, 1011, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'XD', false, 12, 23.40, 1014, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Far', false, 16, 26.40, 1024, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Lost & Found', false, 21, 2.40, 102, 1);
INSERT INTO public.planet VALUES (10, 'LEcB', 'dumb name', false, 100, 2.40, 102, 3);
INSERT INTO public.planet VALUES (11, 'CtEcB', 'dumb name', false, 100, 1.40, 103, 3);
INSERT INTO public.planet VALUES (12, 'DCtEcB', 'dumb name', false, 110, 1.90, 104, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'twinkle twinkle little', false, 2, 4.00, 4610, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centsruri', 'twinkle twinkle little', false, 4, 3.00, 4650, 1);
INSERT INTO public.star VALUES (3, 'Bernards Star', 'twinkle twinkle little', false, 6, 3.00, 4650, 1);
INSERT INTO public.star VALUES (4, 'Wolf 359', 'twinkle twinkle little', false, 9, 3.00, 4650, 1);
INSERT INTO public.star VALUES (5, 'R71', 'twinkle twinkle little', false, 160, 1.00, 150, 2);
INSERT INTO public.star VALUES (6, 'R99', 'twinkle twinkle little', false, 166, 1.00, 150, 2);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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

