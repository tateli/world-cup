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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    round character varying(60) NOT NULL,
    year integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(60) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (65, 'Final', 2018, 337, 338, 4, 2);
INSERT INTO public.games VALUES (66, 'Third Place', 2018, 339, 340, 2, 0);
INSERT INTO public.games VALUES (67, 'Semi-Final', 2018, 338, 340, 2, 1);
INSERT INTO public.games VALUES (68, 'Semi-Final', 2018, 337, 339, 1, 0);
INSERT INTO public.games VALUES (69, 'Quarter-Final', 2018, 338, 341, 3, 2);
INSERT INTO public.games VALUES (70, 'Quarter-Final', 2018, 340, 342, 2, 0);
INSERT INTO public.games VALUES (71, 'Quarter-Final', 2018, 339, 343, 2, 1);
INSERT INTO public.games VALUES (72, 'Quarter-Final', 2018, 337, 344, 2, 0);
INSERT INTO public.games VALUES (73, 'Eighth-Final', 2018, 340, 345, 2, 1);
INSERT INTO public.games VALUES (74, 'Eighth-Final', 2018, 342, 346, 1, 0);
INSERT INTO public.games VALUES (75, 'Eighth-Final', 2018, 339, 347, 3, 2);
INSERT INTO public.games VALUES (76, 'Eighth-Final', 2018, 343, 348, 2, 0);
INSERT INTO public.games VALUES (77, 'Eighth-Final', 2018, 338, 349, 2, 1);
INSERT INTO public.games VALUES (78, 'Eighth-Final', 2018, 341, 350, 2, 1);
INSERT INTO public.games VALUES (79, 'Eighth-Final', 2018, 344, 351, 2, 1);
INSERT INTO public.games VALUES (80, 'Eighth-Final', 2018, 337, 352, 4, 3);
INSERT INTO public.games VALUES (81, 'Final', 2014, 353, 352, 1, 0);
INSERT INTO public.games VALUES (82, 'Third Place', 2014, 354, 343, 3, 0);
INSERT INTO public.games VALUES (83, 'Semi-Final', 2014, 352, 354, 1, 0);
INSERT INTO public.games VALUES (84, 'Semi-Final', 2014, 353, 343, 7, 1);
INSERT INTO public.games VALUES (85, 'Quarter-Final', 2014, 354, 355, 1, 0);
INSERT INTO public.games VALUES (86, 'Quarter-Final', 2014, 352, 339, 1, 0);
INSERT INTO public.games VALUES (87, 'Quarter-Final', 2014, 343, 345, 2, 1);
INSERT INTO public.games VALUES (88, 'Quarter-Final', 2014, 353, 337, 1, 0);
INSERT INTO public.games VALUES (89, 'Eighth-Final', 2014, 343, 356, 2, 1);
INSERT INTO public.games VALUES (90, 'Eighth-Final', 2014, 345, 344, 2, 0);
INSERT INTO public.games VALUES (91, 'Eighth-Final', 2014, 337, 357, 2, 0);
INSERT INTO public.games VALUES (92, 'Eighth-Final', 2014, 353, 358, 2, 1);
INSERT INTO public.games VALUES (93, 'Eighth-Final', 2014, 354, 348, 2, 1);
INSERT INTO public.games VALUES (94, 'Eighth-Final', 2014, 355, 359, 2, 1);
INSERT INTO public.games VALUES (95, 'Eighth-Final', 2014, 352, 346, 1, 0);
INSERT INTO public.games VALUES (96, 'Eighth-Final', 2014, 339, 360, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (337, 'France');
INSERT INTO public.teams VALUES (338, 'Croatia');
INSERT INTO public.teams VALUES (339, 'Belgium');
INSERT INTO public.teams VALUES (340, 'England');
INSERT INTO public.teams VALUES (341, 'Russia');
INSERT INTO public.teams VALUES (342, 'Sweden');
INSERT INTO public.teams VALUES (343, 'Brazil');
INSERT INTO public.teams VALUES (344, 'Uruguay');
INSERT INTO public.teams VALUES (345, 'Colombia');
INSERT INTO public.teams VALUES (346, 'Switzerland');
INSERT INTO public.teams VALUES (347, 'Japan');
INSERT INTO public.teams VALUES (348, 'Mexico');
INSERT INTO public.teams VALUES (349, 'Denmark');
INSERT INTO public.teams VALUES (350, 'Spain');
INSERT INTO public.teams VALUES (351, 'Portugal');
INSERT INTO public.teams VALUES (352, 'Argentina');
INSERT INTO public.teams VALUES (353, 'Germany');
INSERT INTO public.teams VALUES (354, 'Netherlands');
INSERT INTO public.teams VALUES (355, 'Costa Rica');
INSERT INTO public.teams VALUES (356, 'Chile');
INSERT INTO public.teams VALUES (357, 'Nigeria');
INSERT INTO public.teams VALUES (358, 'Algeria');
INSERT INTO public.teams VALUES (359, 'Greece');
INSERT INTO public.teams VALUES (360, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 96, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 360, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

