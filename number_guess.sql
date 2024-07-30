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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (227, 73, 319);
INSERT INTO public.games VALUES (228, 73, 591);
INSERT INTO public.games VALUES (229, 74, 690);
INSERT INTO public.games VALUES (230, 73, 107);
INSERT INTO public.games VALUES (231, 73, 527);
INSERT INTO public.games VALUES (232, 76, 840);
INSERT INTO public.games VALUES (233, 76, 505);
INSERT INTO public.games VALUES (234, 77, 485);
INSERT INTO public.games VALUES (235, 77, 261);
INSERT INTO public.games VALUES (236, 76, 965);
INSERT INTO public.games VALUES (237, 76, 714);
INSERT INTO public.games VALUES (238, 78, 19);
INSERT INTO public.games VALUES (239, 78, 968);
INSERT INTO public.games VALUES (240, 79, 72);
INSERT INTO public.games VALUES (241, 79, 88);
INSERT INTO public.games VALUES (242, 78, 201);
INSERT INTO public.games VALUES (243, 78, 99);
INSERT INTO public.games VALUES (244, 80, 850);
INSERT INTO public.games VALUES (245, 80, 796);
INSERT INTO public.games VALUES (246, 81, 772);
INSERT INTO public.games VALUES (247, 81, 497);
INSERT INTO public.games VALUES (248, 80, 49);
INSERT INTO public.games VALUES (249, 80, 907);
INSERT INTO public.games VALUES (250, 82, 609);
INSERT INTO public.games VALUES (251, 82, 236);
INSERT INTO public.games VALUES (252, 83, 117);
INSERT INTO public.games VALUES (253, 83, 40);
INSERT INTO public.games VALUES (254, 82, 368);
INSERT INTO public.games VALUES (255, 82, 322);
INSERT INTO public.games VALUES (256, 75, 29);
INSERT INTO public.games VALUES (257, 84, 905);
INSERT INTO public.games VALUES (258, 84, 224);
INSERT INTO public.games VALUES (259, 85, 536);
INSERT INTO public.games VALUES (260, 85, 247);
INSERT INTO public.games VALUES (261, 84, 761);
INSERT INTO public.games VALUES (262, 84, 851);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (73, 'user_1678936134195');
INSERT INTO public.users VALUES (74, 'user_1678936134194');
INSERT INTO public.users VALUES (75, 'adi');
INSERT INTO public.users VALUES (76, 'user_1722319673144');
INSERT INTO public.users VALUES (77, 'user_1722319673143');
INSERT INTO public.users VALUES (78, 'user_1722319675942');
INSERT INTO public.users VALUES (79, 'user_1722319675941');
INSERT INTO public.users VALUES (80, 'user_1722319683358');
INSERT INTO public.users VALUES (81, 'user_1722319683357');
INSERT INTO public.users VALUES (82, 'user_1722319712307');
INSERT INTO public.users VALUES (83, 'user_1722319712306');
INSERT INTO public.users VALUES (84, 'user_1722319919249');
INSERT INTO public.users VALUES (85, 'user_1722319919248');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 262, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 85, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

