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
    galaxy_id bigint NOT NULL,
    name character varying(250),
    galaxy_types character varying(250),
    galaxy_description text NOT NULL,
    galaxy_has_life boolean,
    galaxy_is_spherical boolean,
    galaxy_age_in_millions_of_years integer,
    galaxy_galactic_years integer,
    galaxy_distance_from_earth numeric NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.galaxy ALTER COLUMN galaxy_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.galaxy_galaxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id bigint NOT NULL,
    planet_id bigint,
    name character varying(250),
    moon_types character varying(250),
    moon_description text NOT NULL,
    moon_has_life boolean,
    moon_is_spherical boolean,
    moon_age_in_millions_of_years integer,
    moon_galactic_years integer,
    moon_distance_from_earth numeric NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.moon ALTER COLUMN moon_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.moon_moon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id bigint NOT NULL,
    star_id bigint,
    name character varying(250),
    planet_types character varying(250),
    planet_description text NOT NULL,
    planet_has_life boolean,
    planet_is_spherical boolean,
    planet_age_in_millions_of_years integer,
    planet_galactic_years integer,
    planet_distance_from_earth numeric NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.planet ALTER COLUMN planet_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.planet_planet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id bigint NOT NULL,
    galaxy_id bigint,
    name character varying(250),
    star_types character varying(250),
    star_description text NOT NULL,
    star_has_life boolean,
    star_is_spherical boolean,
    star_age_in_millions_of_years integer,
    star_galactic_years integer,
    star_distance_from_earth numeric NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.star ALTER COLUMN star_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.star_star_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: supernova; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.supernova (
    supernova_id bigint NOT NULL,
    galaxy_id bigint,
    name character varying(250),
    supernova_types character varying(250),
    supernova_description text NOT NULL,
    supernova_sn_certainty boolean,
    supernova_has_been_observed boolean,
    supernova_brigthness_in_millions_ap_mgn integer,
    supernova_designation_years integer,
    supernova_distance_from_earth numeric NOT NULL
);


ALTER TABLE public.supernova OWNER TO freecodecamp;

--
-- Name: supernova_supernova_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.supernova ALTER COLUMN supernova_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.supernova_supernova_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (1, 'Andromeda', '4D', 'Andromeda is the closest big galaxy to the Milky Way', NULL, false, 13600, 54, 2.5);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (2, 'Milky Way', '5E', 'The appearance from Earth of the galaxy—a band of light', true, false, 20030, 53, 0);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (3, 'Backward', '6C', 'It appears to rotate backwards', NULL, true, 34043, 61, 50);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (4, 'Black Eye', 'W2', 'It has a spectacular dark band of absorbing dust that absorbs light', NULL, false, 43210, 52, 60);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (5, 'Bode', '9T', 'Named for Johann Elert Bode who discovered this galaxy in 1774', NULL, false, 53120, 42, 35);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (6, 'Butterfly', '4G', 'Looks are similar to a butterfly', NULL, false, 62300, 59, 47);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (1, 2, 'Moon', 'A1', 'It is the fifth largest satellite in the Solar System', false, true, 54000, 54, 0);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (2, 1, 'AUR123', 'A1', 'It is the fifth largest satellite in the System', false, true, 34500, 48, 56);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (3, 5, 'Deimos', 'D1', 'discovered by Asaph Hall', false, true, 63000, 54, 4);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (4, 5, 'Phobos', 'PH', 'discoverd by Asaph Hall', false, true, 64000, 54, 4);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (5, 6, 'Adrastea', 'A1', 'discovered by Jewitt & Danielson', false, true, 44000, 54, 6);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (6, 6, 'Arche', 'A3', 'discovered by  S. Sheppard', false, true, 34000, 24, 6);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (7, 6, 'Callisto', 'C1', 'Discovered by Galileo', false, true, 24000, 74, 6);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (8, 6, 'Carme', 'CM', 'Discovered by S. Nicholson', false, true, 4000, 44, 6);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (9, 6, 'Elara', 'E2', 'Discovered by  C. Perrine', false, true, 34000, 54, 6);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (10, 6, 'Euanthe', 'A1', 'Discovered by i. Sheppard, D. Jewitt, & J. Kleyna', false, true, 54000, 54, 6);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (11, 6, 'Europa', 'A1', 'Discovered by Galileo', false, true, 84000, 54, 6);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (12, 6, 'Io', 'I0', 'Discovered by Galileo', false, true, 54000, 54, 0);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (13, 6, 'Sinope', 'SN', 'Discovered by  S. Nicholson', false, true, 14000, 54, 6);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (14, 7, 'Aegir', 'A1', 'Discovered by  D. Jewitt, S. Sheppard, J. Kleyna', false, true, 24000, 44, 5);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (15, 7, 'Dione', 'DC', 'Discovered by  G. Cassini', false, true, 24000, 54, 5);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (16, 9, 'Naiad', 'A1', 'Discovered by Voyager 2', false, true, 74000, 54, 8);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (17, 9, 'Proteus', 'P1', 'Discovered by Voyager 2', false, true, 54000, 54, 8);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (18, 9, 'Triton', 'T2', 'Discovered by W. Lassel', false, true, 74000, 54, 8);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (19, 9, 'Sao', 'A1', 'Discovered by M. Holman & J.J. Kavelaars', false, true, 54000, 54, 8);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (20, 9, 'Despina', 'DA', 'Discovered by Voyager 2', false, true, 64000, 54, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (1, 1, 'Upsilon Andromedae', 'A7', 'multiplanetary system.', false, false, 67000, 78, 92);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (2, 2, 'Earth', 'C277', 'Earth is the third planet from the Sun and home to all known life', true, true, 45000, 45, 0);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (3, 2, 'Venus', 'DF', 'is the second planet from the Sun.', NULL, true, 34000, 47, 2);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (4, 2, 'Mercury', 'MQ2', 'is the smallest planet in the Solar System and the closest to the Sun', NULL, true, 51000, 45, 5);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (5, 2, 'Mars', 'MS2', 'is the fourth planet from the Sun and the second-smallest planet
    in the Solar System', NULL, true, 32000, 46, 3);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (6, 2, 'Jupiter', 'J6', 'is the fifth planet from the Sun and the largest in the Solar System', NULL, true, 49000, 51, 6);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (7, 2, 'Saturn', 'ST1', 'is the sixth planet from the Sun and the second-largest 
    in the Solar System', NULL, true, 54000, 45, 3);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (8, 2, 'Neptune', 'NP1', 'is the eighth planet from the Sun and the farthest known planet
    in the Solar System', NULL, true, 55000, 23, 9);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (9, 3, 'Alpha Centauri Cb', 'AP', 'is an exoplanet orbiting within the habitable zone of the 
    red dwarf star Proxima Centauri,', true, true, 56000, 78, 45);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (10, 4, 'HD 108874 b', 'HF', 'is a gas giant announced in 2003', NULL, true, 47000, 52, 46);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (11, 5, 'Taphao Thong', 'TG', 'is a gas planet and an extrasolar planet', NULL, true, 49400, 67, 46);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (12, 6, 'PSR B1257+12 b', 'PH', 'is an extrasolar planet', NULL, true, 45000, 45, 2300);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (1, 1, 'HD 5608', 'K0', 'is an orange-hued star in the northern constellation
    of Andromeda with one known planet', false, true, 45670, 64, 68);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (2, 2, 'Sun', 'AU', 'The Sun is the star at the center of the Solar System', false, true, 23423, 54, 89);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (3, 3, 'HD 102350', 'G0II', 'is a single star in the constellation Centaurus', false, true, 32459, 47, 76);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (4, 4, '17 Comae Berenices', 'BC', 'is a multiple star system in the northern constellation 
    of Coma Berenices', false, true, 56300, 39, 83);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (5, 5, '23 UMa', 'RA', 'is a binary star system in the constellation Ursa Major', false, true, 42389, 56, 76);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (6, 6, 'Spica', 'B1V', 'is the brightest object in the constellation of Virgo 
    and one of the 20 brightest stars in the night sky', NULL, false, 34576, 47, 91);


--
-- Data for Name: supernova; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.supernova OVERRIDING SYSTEM VALUE VALUES (1, 2, 'SN 185', 'A1', 'Some researchers have suggested it was a comet, not a supernova.', true, true, 54000, 54, 3);
INSERT INTO public.supernova OVERRIDING SYSTEM VALUE VALUES (2, 2, 'SN 386', 'A1', 'classical nova or something else', false, true, 54000, 54, 6);
INSERT INTO public.supernova OVERRIDING SYSTEM VALUE VALUES (3, 2, 'Kepler''''s Supernova', 'A1', 'most recent readily visible supernova within the Milky Way', false, true, 54000, 54, 5);
INSERT INTO public.supernova OVERRIDING SYSTEM VALUE VALUES (4, 2, 'SN 393', 'A1', 'could also be classical nova or something else', false, true, 54000, 54, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: supernova_supernova_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.supernova_supernova_id_seq', 4, true);


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
-- Name: supernova supernova_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supernova
    ADD CONSTRAINT supernova_name_key UNIQUE (name);


--
-- Name: supernova supernova_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supernova
    ADD CONSTRAINT supernova_pkey PRIMARY KEY (supernova_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: supernova fk_supernova_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supernova
    ADD CONSTRAINT fk_supernova_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--


