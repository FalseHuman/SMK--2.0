--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.21
-- Dumped by pg_dump version 9.6.21

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

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: home_article; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.home_article (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    text text NOT NULL,
    pub_data timestamp with time zone NOT NULL,
    min_text character varying(100) NOT NULL,
    status character varying(10) NOT NULL,
    slug character varying(250) NOT NULL
);


ALTER TABLE public.home_article OWNER TO postgres;

--
-- Name: home_article_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.home_article_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_article_id_seq OWNER TO postgres;

--
-- Name: home_article_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.home_article_id_seq OWNED BY public.home_article.id;


--
-- Name: home_home; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.home_home (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    text text NOT NULL
);


ALTER TABLE public.home_home OWNER TO postgres;

--
-- Name: home_home_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.home_home_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_home_id_seq OWNER TO postgres;

--
-- Name: home_home_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.home_home_id_seq OWNED BY public.home_home.id;


--
-- Name: tab_callback; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_callback (
    id integer NOT NULL,
    theme character varying(200) NOT NULL,
    name character varying(200) NOT NULL,
    email character varying(200) NOT NULL,
    file character varying(100) NOT NULL,
    text text NOT NULL
);


ALTER TABLE public.tab_callback OWNER TO postgres;

--
-- Name: tab_callback_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tab_callback_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tab_callback_id_seq OWNER TO postgres;

--
-- Name: tab_callback_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tab_callback_id_seq OWNED BY public.tab_callback.id;


--
-- Name: tab_section; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_section (
    id integer NOT NULL,
    title character varying(250) NOT NULL,
    title_article character varying(250),
    slug character varying(250),
    body text NOT NULL,
    name_tab_id integer NOT NULL,
    my_field boolean NOT NULL
);


ALTER TABLE public.tab_section OWNER TO postgres;

--
-- Name: tab_section_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tab_section_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tab_section_id_seq OWNER TO postgres;

--
-- Name: tab_section_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tab_section_id_seq OWNED BY public.tab_section.id;


--
-- Name: tab_tabs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_tabs (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    sections character varying(250)
);


ALTER TABLE public.tab_tabs OWNER TO postgres;

--
-- Name: tab_tabs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tab_tabs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tab_tabs_id_seq OWNER TO postgres;

--
-- Name: tab_tabs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tab_tabs_id_seq OWNED BY public.tab_tabs.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: home_article id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_article ALTER COLUMN id SET DEFAULT nextval('public.home_article_id_seq'::regclass);


--
-- Name: home_home id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_home ALTER COLUMN id SET DEFAULT nextval('public.home_home_id_seq'::regclass);


--
-- Name: tab_callback id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_callback ALTER COLUMN id SET DEFAULT nextval('public.tab_callback_id_seq'::regclass);


--
-- Name: tab_section id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_section ALTER COLUMN id SET DEFAULT nextval('public.tab_section_id_seq'::regclass);


--
-- Name: tab_tabs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_tabs ALTER COLUMN id SET DEFAULT nextval('public.tab_tabs_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add tabs	7	add_tabs
26	Can change tabs	7	change_tabs
27	Can delete tabs	7	delete_tabs
28	Can view tabs	7	view_tabs
29	Can add section	8	add_section
30	Can change section	8	change_section
31	Can delete section	8	delete_section
32	Can view section	8	view_section
33	Can add callback	9	add_callback
34	Can change callback	9	change_callback
35	Can delete callback	9	delete_callback
36	Can view callback	9	view_callback
37	Can add Список групп	10	add_groups
38	Can change Список групп	10	change_groups
39	Can delete Список групп	10	delete_groups
40	Can view Список групп	10	view_groups
41	Can add Предмет	11	add_predmets
42	Can change Предмет	11	change_predmets
43	Can delete Предмет	11	delete_predmets
44	Can view Предмет	11	view_predmets
45	Can add Статьи	12	add_article
46	Can change Статьи	12	change_article
47	Can delete Статьи	12	delete_article
48	Can view Статьи	12	view_article
49	Can add Главную страницу	13	add_home
50	Can change Главную страницу	13	change_home
51	Can delete Главную страницу	13	delete_home
52	Can view Главную страницу	13	view_home
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$150000$fPC0BVXsz0Nc$f3RZYwmSZX/EjGt7zQth45Hv2E3iYGxnihqJuQ5vmls=	2021-03-13 12:05:42.536176+05	t	Test			test@test.com	t	t	2021-03-13 12:04:36.387528+05
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-03-13 12:06:17.266936+05	1	Сведения о колледже	1	[{"added": {}}]	7	1
2	2021-03-13 12:06:45.162628+05	1	Основные сведения	1	[{"added": {}}]	8	1
3	2021-03-13 12:18:37.961611+05	2	Контрольные цифры приема граждан	1	[{"added": {}}]	8	1
4	2021-03-13 15:02:20.54063+05	2	Абитуренту	1	[{"added": {}}]	7	1
5	2021-03-13 15:02:25.172383+05	3	Студенту	1	[{"added": {}}]	7	1
6	2021-03-13 15:02:32.172035+05	4	Преподавателю	1	[{"added": {}}]	7	1
7	2021-03-13 15:02:52.292144+05	5	Конкурсы и олимпиады	1	[{"added": {}}]	7	1
8	2021-03-13 15:02:59.025299+05	6	Контакты	1	[{"added": {}}]	7	1
9	2021-03-13 15:35:15.21372+05	1	Основные сведения	2	[{"changed": {"fields": ["body"]}}]	8	1
10	2021-03-13 15:36:00.157156+05	2	Контрольные цифры приема граждан	2	[{"changed": {"fields": ["body"]}}]	8	1
11	2021-03-13 21:18:08.710386+05	3	Контакты	1	[{"added": {}}]	8	1
12	2021-03-13 21:21:09.937106+05	4	Обратная связь	1	[{"added": {}}]	8	1
13	2021-03-13 21:21:34.633218+05	4	Обратная связь	2	[{"changed": {"fields": ["my_field"]}}]	8	1
14	2021-03-16 22:17:18.607704+05	7	test	1	[{"added": {}}]	7	1
15	2021-03-16 22:18:33.964959+05	8	Русский язык	1	[{"added": {}}]	7	1
16	2021-03-16 22:18:49.902448+05	8	Русский язык	3		7	1
17	2021-03-16 22:18:49.925113+05	7	test	3		7	1
18	2021-03-18 17:55:11.771084+05	2	Структура и органы управления колледжем	2	[{"changed": {"fields": ["title", "title_article", "body"]}}]	8	1
19	2021-03-18 17:56:40.258115+05	5	Документы	1	[{"added": {}}]	8	1
20	2021-03-18 18:01:56.169149+05	6	Образование	1	[{"added": {}}]	8	1
21	2021-03-18 18:02:37.59355+05	6	Образование	2	[]	8	1
22	2021-03-18 18:03:16.568883+05	7	Образовательные стандарты	1	[{"added": {}}]	8	1
23	2021-03-18 18:03:41.976683+05	8	Руководство. Педагогический состав	1	[{"added": {}}]	8	1
24	2021-03-18 18:04:17.492187+05	9	Материально-техническое обеспечение и оснащенность образовательного процесса	1	[{"added": {}}]	8	1
25	2021-03-18 18:06:04.832712+05	10	Учебно-методическая работа	1	[{"added": {}}]	8	1
26	2021-03-18 18:06:35.186739+05	11	Справочная информация	1	[{"added": {}}]	8	1
27	2021-03-18 18:07:19.888519+05	12	Республиканские семинары	1	[{"added": {}}]	8	1
28	2021-03-18 18:08:03.95133+05	13	Дополнительное образование	1	[{"added": {}}]	8	1
29	2021-03-18 18:08:29.906986+05	14	Аттестация	1	[{"added": {}}]	8	1
30	2021-03-18 18:12:24.143275+05	15	Контакты	1	[{"added": {}}]	8	1
31	2021-03-18 18:12:57.861134+05	16	Горячая линия	1	[{"added": {}}]	8	1
32	2021-03-18 18:13:28.883593+05	17	Контакты контролирующих организаций	1	[{"added": {}}]	8	1
33	2021-03-18 18:14:11.773828+05	18	Обратная связь	1	[{"added": {}}]	8	1
34	2021-03-18 18:16:06.671671+05	18	Обратная связь	3		8	1
35	2021-03-18 18:16:31.827523+05	15	Контакты	3		8	1
36	2021-03-18 18:17:29.711617+05	4	Обратная связь	2	[{"changed": {"fields": ["body"]}}]	8	1
37	2021-03-18 18:18:21.154189+05	3	Контакты	2	[{"changed": {"fields": ["body"]}}]	8	1
38	2021-03-18 18:24:39.155944+05	3	Контакты	2	[{"changed": {"fields": ["body"]}}]	8	1
39	2021-03-18 18:25:39.664846+05	3	Контакты	2	[{"changed": {"fields": ["body"]}}]	8	1
40	2021-03-21 12:47:45.99187+05	1	День открытых дверей	1	[{"added": {}}]	12	1
41	2021-03-21 12:53:06.002259+05	1	Внимание	1	[{"added": {}}]	13	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 41, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	tab	tabs
8	tab	section
9	tab	callback
10	tab	groups
11	tab	predmets
12	home	article
13	home	home
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-03-13 12:03:27.646325+05
2	auth	0001_initial	2021-03-13 12:03:28.040948+05
3	admin	0001_initial	2021-03-13 12:03:28.638401+05
4	admin	0002_logentry_remove_auto_add	2021-03-13 12:03:28.752173+05
5	admin	0003_logentry_add_action_flag_choices	2021-03-13 12:03:28.783724+05
6	contenttypes	0002_remove_content_type_name	2021-03-13 12:03:28.85394+05
7	auth	0002_alter_permission_name_max_length	2021-03-13 12:03:28.881185+05
8	auth	0003_alter_user_email_max_length	2021-03-13 12:03:28.919515+05
9	auth	0004_alter_user_username_opts	2021-03-13 12:03:28.960546+05
10	auth	0005_alter_user_last_login_null	2021-03-13 12:03:28.992432+05
11	auth	0006_require_contenttypes_0002	2021-03-13 12:03:29.003524+05
12	auth	0007_alter_validators_add_error_messages	2021-03-13 12:03:29.036076+05
13	auth	0008_alter_user_username_max_length	2021-03-13 12:03:29.115544+05
14	auth	0009_alter_user_last_name_max_length	2021-03-13 12:03:29.159096+05
15	auth	0010_alter_group_name_max_length	2021-03-13 12:03:29.195723+05
16	auth	0011_update_proxy_permissions	2021-03-13 12:03:29.227851+05
17	home	0001_initial	2021-03-13 12:03:29.406665+05
18	home	0002_auto_20210213_0805	2021-03-13 12:03:29.505022+05
19	home	0003_auto_20210213_0938	2021-03-13 12:03:29.610666+05
20	home	0004_article_status	2021-03-13 12:03:29.713236+05
21	home	0005_auto_20210304_1945	2021-03-13 12:03:29.732035+05
22	home	0005_auto_20210303_1556	2021-03-13 12:03:29.751839+05
23	home	0006_merge_20210306_0802	2021-03-13 12:03:29.769483+05
24	home	0007_article_slug	2021-03-13 12:03:29.881003+05
25	sessions	0001_initial	2021-03-13 12:03:30.047305+05
26	tab	0001_initial	2021-03-13 12:03:30.273241+05
27	tab	0002_tabs_slug	2021-03-13 12:03:30.475954+05
28	tab	0003_auto_20210305_1716	2021-03-13 12:03:30.5808+05
29	tab	0004_section_my_field	2021-03-13 12:03:30.78226+05
30	tab	0005_callback	2021-03-13 12:03:30.891483+05
31	tab	0006_groups_predmets	2021-03-13 12:03:31.059651+05
32	tab	0007_predmets_slug	2021-03-13 12:03:31.242044+05
33	tab	0008_auto_20210308_1904	2021-03-13 12:03:31.444571+05
34	tab	0009_auto_20210308_1923	2021-03-13 12:03:31.520695+05
35	tab	0010_auto_20210313_1610	2021-03-13 21:10:59.001674+05
36	tab	0011_auto_20210313_1619	2021-03-13 21:19:19.062264+05
37	tab	0012_auto_20210318_1300	2021-03-18 18:00:52.27536+05
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 37, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
5704zw4w6r93omvin2bpm7g1on2zx8pc	YzU5YjdjMjdlZjRlMzIwNzk2MTFkMmJjYWVkZmFlMzIxMmEwYWI4ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNTMyZmUzMjA1Y2MwNGRmOTdhZTE5Y2Y3NWIyYTE3ZTYwMDA4NDgwIn0=	2021-03-27 12:05:42.54936+05
\.


--
-- Data for Name: home_article; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.home_article (id, title, text, pub_data, min_text, status, slug) FROM stdin;
1	День открытых дверей	<p style="text-align:center"><img alt="день-открытых-дверей-объявление.jpg" src="http://salavatmk.ru/upload/medialibrary/186/1868fb093ffc10c93cf2630b5f60da13.jpg" style="height:500px; width:500px" /></p>	2021-03-21 12:46:05+05	Приглашаем на день открытых дверей	Новости	den-otkrytyh-dverej
\.


--
-- Name: home_article_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.home_article_id_seq', 1, true);


--
-- Data for Name: home_home; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.home_home (id, title, text) FROM stdin;
1	Внимание	<p>Это тест</p>
\.


--
-- Name: home_home_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.home_home_id_seq', 1, true);


--
-- Data for Name: tab_callback; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_callback (id, theme, name, email, file, text) FROM stdin;
\.


--
-- Name: tab_callback_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tab_callback_id_seq', 1, false);


--
-- Data for Name: tab_section; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_section (id, title, title_article, slug, body, name_tab_id, my_field) FROM stdin;
1	Основные сведения	Основные сведения	osnovnye-svedeniya	<p><strong>1) О создании образовательного учреждения</strong></p>\r\n\r\n<p>Государственное автономное профессиональное образовательное учреждение Республики Башкортостан&nbsp;&laquo;Салаватский медицинский колледж&raquo;&nbsp;создан в соответствии с приказом Министерства здравоохранения БАССР от 03.09.1955г № 1067&nbsp;&laquo;Об открытии медицинского училища в городе Салават&raquo;.</p>\r\n\r\n<p>В 1998 году Салаватское медицинское училище переименовано в Государственное образовательное учреждение Салаватское медицинское училище (приказ Министерства здравоохранения Республики Башкортостан от 13.03.1998г. № 134-Д).</p>\r\n\r\n<p>В&nbsp;2006 году&nbsp; Государственное образовательное учреждение Салаватское медицинское училище переименовано в&nbsp; Государственное образовательное учреждение среднего профессионального образования Салаватский медицинский колледж (приказ Министерства здравоохранения Республики Башкортостан от 31.08.2006г. № 777-Д).</p>\r\n\r\n<p>В 2009 году Государственное образовательное учреждение среднего профессионального образования Салаватский медицинский колледж переименован в Государственное автономное&nbsp; образовательное учреждение среднего профессионального&nbsp; Республики Башкортостан Салаватский медицинский колледж (распоряжение Правительства Республики Башкортостан от 26.10.2009г. № 1151-р).</p>\r\n\r\n<p>В 2014 году Государственное автономное&nbsp; образовательное учреждение среднего профессионального&nbsp; Республики Башкортостан Салаватский медицинский колледж переименован в&nbsp;государственное автономное профессиональное образовательное учреждение Республики Башкортостан&nbsp;&laquo;Салаватский медицинский колледж&raquo;&nbsp;(распоряжение Правительства Республики Башкортостан от 07.04.2014г. № 298-р)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2) Об учредителе</strong></p>\r\n\r\n<p>Учредителем&nbsp;ГАПОУ РБ&nbsp;&laquo;Салаватский медицинский колледж&raquo;&nbsp;является</p>\r\n\r\n<p>Министерство здравоохранение Республики Башкортостан.</p>\r\n\r\n<p>450002,&nbsp;Республика Башкортостан, г. Уфа, ул. Тукаева, 23.</p>\r\n\r\n<p>Контактные телефоны: (347)218-00-81, 218-00-62</p>\r\n\r\n<p>Е-mail:&nbsp;<a href="mailto:minzdrav@bashkortostan.ru" target="_self">minzdrav@bashkortostan.ru</a>&nbsp;</p>\r\n\r\n<p>Режим работы:&nbsp;пн. &ndash; пт. с 9.00 до 18.00ч., обед с 13.00 до 14.00ч.</p>\r\n\r\n<p><a href="http://www.salavatmk.ru/docs/rasporyagenie.jpg" target="_blank">Распоряжение правительства РБ о создании колледжа</a></p>\r\n\r\n<p><strong>3)&nbsp;Адрес учреждения:</strong></p>\r\n\r\n<p>Юридический адрес, почтовый адрес:</p>\r\n\r\n<p><strong>Учебный корпус:</strong>&nbsp;453259, Республика Башкортостан, г. Салават, ул. Фурманова, д. 4.</p>\r\n\r\n<p><strong>Общежитие:</strong>&nbsp;453250, Республика Башкортостан, г. Салават, ул. Губкина, д. 14.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>4) Режим и график работы</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Режим работы приемной:&nbsp;</p>\r\n\r\n<p>Понедельник - пятница с 9:00 до 18:00</p>\r\n\r\n<p>Перерыв с 13:00 до 14:00</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Режим работы административно-управленческого персонала:&nbsp;</p>\r\n\r\n<p>Понедельник - пятница с 8:30 до 17:00</p>\r\n\r\n<p>Перерыв с 13:00 до 13:30</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Режим работы учебной части:&nbsp;</p>\r\n\r\n<p>Понедельник - пятница с 8:30 до 18:00</p>\r\n\r\n<p>Большая перемена с 11:50 до 12:30</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Режим работы библиотеки:&nbsp;</p>\r\n\r\n<p>Понедельник - пятница с 8:30 до 17:00</p>\r\n\r\n<p>Перерыв с 13:00 до 13:30</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Режим работы здравпункта:&nbsp;</p>\r\n\r\n<p>Понедельник - пятница с 8:00 до 16:00</p>\r\n\r\n<p>​Режим работы столовой:</p>\r\n\r\n<p>Понедельник - пятница 10:00 - 16:30</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Расписание звонков на теоретические занятия:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1 пара: 8:30 - 9:15</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;9:20 - 10:05</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2 пара: 10:15 - 11:00</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;11:05 - 11:50</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Обеденный перерыв: 11:50 - 12:30</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>3 пара: 12:30 - 13:15</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;13:20 - 14:05</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>4 пара: 14:15 - 15:00</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;15:05 - 15:50</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>5 пара: 16:00 - 16:45</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;16:50 - 17:35</p>\r\n\r\n<p><strong>5</strong><strong>) Контактные телефоны:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Директор&nbsp;телефон/факс:&nbsp;(3476)-38-78-83</p>\r\n\r\n<p>Приемная&nbsp;телефон/факс:&nbsp;(3476)-38-78-83</p>\r\n\r\n<p>Отдел кадров:&nbsp;(3476)-38-54-46</p>\r\n\r\n<p>Главный бухгалтер:&nbsp;(3476)-38-54-36</p>\r\n\r\n<p>Бухгалтерия:&nbsp;(3476)-38-54-36</p>\r\n\r\n<p>Вахта колледжа:&nbsp;(3476)-38-51-48</p>\r\n\r\n<p>Вахта общежития:&nbsp;(3476)-38-57-90</p>\r\n\r\n<p>Заведующий общежитием:&nbsp;(3476)-38-57-90</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>6) Адреса электронной почты&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Е-mail:&nbsp;&nbsp;&nbsp;<a href="mailto:slv.mk@doctorrb.ru" target="_self">slv.mk@doctorrb.ru</a>&nbsp;&nbsp;&nbsp; - &nbsp; &nbsp;приемная</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href="mailto:bux.smk@mail.ru" target="_self">smk.</a><a href="mailto:bux.smk@mail.ru" target="_self">bux</a><a href="mailto:bux.smk@mail.ru" target="_self">@mail.ru</a>&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;бухгалтерия</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;<a href="mailto:programmist.smk@mail.ru" target="_self">programmist.smk@mail.ru</a>&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp;техник-программист</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="mailto:smk.urist@mail.ru" target="_self">smk.urist@mail.ru</a>&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;заместитель директора по общим вопросам</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href="mailto:zav.smk@mail.ru" target="_self">zav.smk@mail.ru</a>&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;заведующий производственной практикой.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>7)&nbsp;</strong><strong>Информация о местах осуществления образовательной деятельности</strong></p>\r\n\r\n<p>Адреса мест осуществления образовательной деятельности ГАПОУ РБ &laquo;Салаватский медицинский колледж&raquo;, согласно Лицензии № 2782 от 18.06.2014 г, выданной Управлением по контролю и надзору в сфере образования Республики Башкортостан:</p>\r\n\r\n<p>453259, Республика Башкортостан, г. Салават, ул. Фурманова, д.4</p>\r\n\r\n<p>453261, Республика Башкортостан, г. Салават, ул. Б. Космонавтов, 22а.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>8. Обеспечение доступа в здание</strong></p>\r\n\r\n<p>В целях обеспечения безопасности сотрудников и студентов колледжа доступ в помещения учебного корпуса и общежития осуществляется с применением инженерно-технических средств охраны и надзора, а именно: входная группа учебного корпуса оборудована арочным металлодетектором ПРОФИ-01, ручным металлодетектором, турникетом, откидывающейся перегородкой, системой видеонаблюдения. Система видеонаблюдения, включает в себя 8 видеокамер (5 наружных и 3 внутренних), имеет срок архивного хранения 30 суток.</p>\r\n\r\n<p>Пропускной режим в здании общежития осуществляется при помощи системы контроля учета доступом &laquo;СФИНКС&raquo;, электронной картой пропуска. Система видеонаблюдения здания общежития состоит из 7 камер видеонаблюдения(6 наружных и 1 внутренняя) , срок архивного хранения 30 суток.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>9. Условия питания</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; В целях обеспечения обучающихся и работников колледжа горячим питанием, согласно договорам аренды, в колледже работает столовая и буфет.</p>\r\n\r\n<p>Режим работы столовой:<br />\r\nПонедельник - пятница 10:00 - 16:00</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p><strong>10. Охрана здоровья</strong></p>\r\n\r\n<p>На основании договора № 1/15 от 01.01.2015г. с ГБУЗ РБ Городская больница г. Салават (Лицензия на осуществление медицинской деятельности, выданной Министерством здравоохранения Республики Башкортостан, № ЛО-02-01-005073 от 18.08.2016 г. Серия ЛО № 005819) для медицинского обслуживания обучающихся на базе колледжа организована работа здравпункта, которую обеспечивает фельдшер.</p>\r\n\r\n<p>Режим работы здравпункта:</p>\r\n\r\n<p>Понедельник &ndash; пятница с 8<sup>00</sup>&nbsp;часов до 16<sup>00</sup>&nbsp;часов.</p>	1	f
10	Учебно-методическая работа	Учебно-методическая работа	uchebno-metodicheskaia-rabota	<p><a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/25/uejtsp.doc" target="_blank">Макет рабочей программы учебной дисциплины</a></p>\r\n\r\n<p><a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/25/golmkg.doc" target="_blank">Макет рабочей программы профессионального модуля</a></p>\r\n\r\n<p><a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/25/-.pdf" target="_blank">Методические рекомендации по составлению методических разработок, учебно-методических и учебных пособий</a></p>\r\n\r\n<p><a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/25/gxfyal.docx" target="_blank">Методические рекомендации по выполнению курсовой работы</a></p>\r\n\r\n<p><a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/25/jbwwhs.docx" target="_blank">Методические рекомендации по выполнению выпускной квалификационной работы</a></p>\r\n\r\n<p><a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/25/emhmhn.docx" target="_blank">Положение о выпускной квалификационной работе (дипломной работе)</a></p>	4	f
2	Структура и органы управления колледжем	Структура и органы управления колледжем	struktura-i-organy-upravleniia-kolledzhem	<p><a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/qimknn.pdf" target="_blank">О структурных подразделениях образовательного учреждения</a></p>\r\n\r\n<p><a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/4.docx" target="_blank">Структура образовательного учреждения</a><br />\r\n<br />\r\n<br />\r\n&nbsp; &nbsp;Органы управления образовательной организации:<br />\r\n1)&nbsp;<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/sostav-nabludatelnogo-soveta-2019.docx" target="_blank">Наблюдательный совет</a><br />\r\n2) Директор учреждения&nbsp;<br />\r\n3)&nbsp;<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/pqntle.pdf" target="_blank">Общее собрание работников и обучающихся учреждения</a><br />\r\n4)&nbsp;<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/cgsxnu.pdf" target="_blank">Совет учреждения</a><br />\r\n5)<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/cfdjql.pdf" target="_blank">&nbsp;Педагогический совет учреждения</a><br />\r\n&nbsp;<br />\r\n<br />\r\n<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/bolsnm.pdf" target="_blank">Положение об отделении</a><br />\r\n<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/pologenie-ok.pdf" target="_blank">Положение об отделе кадров</a><br />\r\n<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/pologenie-biblioteka.pdf" target="_blank">Положение о библиотеке</a><br />\r\n<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/utznbg.pdf" target="_blank">Положение о студенческом общежитии</a><br />\r\n<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/cdfajr.pdf" target="_blank">Положение об отделе по учебной работе</a><br />\r\n<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/kplkov.pdf" target="_blank">Положение об отделе по воспитательной работе</a><br />\r\n<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/pologenie-bezopasnost.pdf" target="_blank">Положение отдела по безопасности</a></p>	1	f
5	Документы	Документы	dokumenty	<p><a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/ustav.pdf" target="_blank">Устав учреждения</a></p>\r\n\r\n<p><br />\r\n<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/uqcito.pdf" target="_blank">Правилa приема на 2019-2020&nbsp;учебный год</a><br />\r\n<br />\r\n<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/eiilxx.pdf" target="_blank">Лицензия</a><br />\r\n<br />\r\n<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/ckuwap.pdf" target="_blank">Свидетельство об аккредитации</a><br />\r\n<br />\r\n<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/03-14-416.pdf" target="_blank">Предписание об устранении выявленных нарушений требований законодательства об образовании и лицензионных требований</a><br />\r\n<br />\r\n<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/platuslugi-pologenie.pdf" target="_blank">Положение о порядке оказания платных образовательных услуг</a><br />\r\n<br />\r\n<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/gzgxzg.doc" target="_blank">Образец договора об оказании платных &nbsp;образовательных услуг</a><br />\r\n<br />\r\n<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/roaihm.pdf" target="_blank">Приказ об установлении&nbsp; размера оплаты за обучение и проживание в общежитии</a><br />\r\n<br />\r\n<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/2019.pdf" target="_blank">Отчет о результатах самообследования за 2020 год</a><br />\r\n<br />\r\n<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/2018.pdf" target="_blank">Отчет о результатах самообследования 2019 год</a><br />\r\n<br />\r\n<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/2017-52.pdf" target="_blank">Отчет о результатах самообследования 2018 г.</a><br />\r\n<br />\r\n<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/2017.docx" target="_blank">Отчёт о результатах самообследования 2017 г.</a><br />\r\n<br />\r\n<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/2016samoobsledovanie.pdf" target="_blank"><u>Отчёт о результатах самообследования 2016 г.</u></a><br />\r\n<br />\r\n<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/untitledfr13-1.pdf" target="_blank">Сводная ведомость результатов проведения специальной оценки условий труда</a><br />\r\n<br />\r\n<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/08122020-07122023.pdf" target="_blank">Коллективный договор на 2020-2023 годы</a><br />\r\n<br />\r\n<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/rrlhoy.pdf" target="_blank">Карта партнера</a></p>	1	f
6	Образование	Образование	obrazovanie	<p><a href="http://salavatmk.ru/docs/2017/3222/%D0%98%D0%9D%D0%A4%D0%9E%D0%A0%D0%9C%D0%90%D0%A6%D0%98%D0%AF%20%D0%9E%20%D0%A0%D0%95%D0%90%D0%9B%D0%98%D0%97%D0%A3%D0%95%D0%9C%D0%AB%D0%A5%20%D0%A3%D0%A0%D0%9E%D0%92%D0%9D%D0%AF%D0%A5%20%D0%9F%D0%9E%D0%94%D0%93%D0%9E%D0%A2%D0%9E%D0%92%D0%9A%D0%98%20(1).docx">Информация о реализуемых уровнях</a><a href="http://salavatmk.ru/docs/2017/3222/%D0%98%D0%9D%D0%A4%D0%9E%D0%A0%D0%9C%D0%90%D0%A6%D0%98%D0%AF%20%D0%9E%20%D0%A0%D0%95%D0%90%D0%9B%D0%98%D0%97%D0%A3%D0%95%D0%9C%D0%AB%D0%A5%20%D0%A3%D0%A0%D0%9E%D0%92%D0%9D%D0%AF%D0%A5%20%D0%9F%D0%9E%D0%94%D0%93%D0%9E%D0%A2%D0%9E%D0%92%D0%9A%D0%98%20(1).docx">&nbsp;подготовки</a><a href="http://salavatmk.ru/docs/2017/3222/%D0%98%D0%9D%D0%A4%D0%9E%D0%A0%D0%9C%D0%90%D0%A6%D0%98%D0%AF%20%D0%9E%20%D0%A0%D0%95%D0%90%D0%9B%D0%98%D0%97%D0%A3%D0%95%D0%9C%D0%AB%D0%A5%20%D0%A3%D0%A0%D0%9E%D0%92%D0%9D%D0%AF%D0%A5%20%D0%9F%D0%9E%D0%94%D0%93%D0%9E%D0%A2%D0%9E%D0%92%D0%9A%D0%98%20(1).docx">, формах обучения, нормативных сроках обучения</a><br />\r\n<br />\r\n<br />\r\n<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/2020-2021.pdf" target="_blank">График учебного процесса на 2020 - 2021 учебный год</a><br />\r\n<br />\r\n<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/2020-2021_t07aBmv.pdf" target="_blank">График проведения учебных, производственных и преддипломных практик&nbsp;на 2020-2021 учебный год (первый семестр)</a><br />\r\n<br />\r\n<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/2020-2021_xx4kPpT.pdf" target="_blank">График проведения учебных, производственных и преддипломных практик на 2020-2021 учебный год (второй семестр)</a><br />\r\n<br />\r\n<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/2020-2021_sfQM10w.pdf" target="_blank">График промежуточной аттестации на 2020 -&nbsp;2021 учебный год</a><br />\r\n<br />\r\n<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/2020.pdf" target="_blank">Результаты приема 2020 года</a><br />\r\n<br />\r\n<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/testabitur2020.pdf" target="_blank">Результаты психологического тестирования 2020 г.</a><br />\r\n<br />\r\n<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/ad1.pdf" target="_blank">ППССЗ Акушерское дело</a><br />\r\n<br />\r\n<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/ld1.pdf" target="_blank">ППССЗ Лечебное дело</a><br />\r\n<br />\r\n<a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/sd1.pdf" target="_blank">ППССЗ Сестринское дело</a></p>	1	f
7	Образовательные стандарты	Образовательные стандарты	obrazovatelnye-standarty	<p><a href="http://salavatmk.ru/docs/fgos310201-ld.doc">ФГОС СПО по специальности&nbsp;31.02.01&nbsp;Лечебное дело</a><br />\r\n<br />\r\n<a href="http://salavatmk.ru/docs/New%20Folder/New%20Folder/%D0%A4%D0%93%D0%9E%D0%A1-3+_%D0%90%D0%94.pdf">ФГОС СПО по специальности 31.02.02 Акушерское дело</a><br />\r\n<br />\r\n<a href="http://salavatmk.ru/docs/fgos340201-sd.doc">ФГОС СПО по специальности 34.02.01 Сестринское дело</a></p>\r\n\r\n<p>Edit!!!!!!</p>	1	f
8	Руководство. Педагогический состав	Руководство. Педагогический состав	rukovodstvo-pedagogicheskii-sostav	<p>Наименование учреждения: ГАПОУ РБ &laquo;Салаватский медицинский колледж&raquo;</p>\r\n\r\n<p>Почтовый индекс, адрес:&nbsp;453261&nbsp;г. Салават, ул. Фурманова,&nbsp;4</p>\r\n\r\n<p>Телефон/факс: (3476)-38-78-83</p>\r\n\r\n<p>Е-mail:&nbsp;&nbsp;<a href="mailto:slv.mk@doctorrb.ru">slv.mk@doctorrb.ru</a>&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp;&nbsp;приемная</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="mailto:bux.smk@mail.ru">bux.smk@mail.ru</a>&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;бухгалтерия</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="mailto:programmist.smk@mail.ru">programmist.smk@mail.ru</a>&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp;программист</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="mailto:smk.urist@mail.ru">smk.urist@mail.ru</a>&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;зам. директора по общим вопросам</p>\r\n\r\n<table border="1" cellpadding="1" cellspacing="1">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>&nbsp;\r\n\t\t\t<p>Директор</p>\r\n\t\t\t</td>\r\n\t\t\t<td>Сливочкина Оксана Викторовна&nbsp;</td>\r\n\t\t\t<td>&nbsp;8(3476)38-78-83</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>&nbsp;Заместитель директора по общим вопросам</td>\r\n\t\t\t<td>&nbsp;Файзуллина Рамиля Ринатовна</td>\r\n\t\t\t<td>&nbsp;8(3476)38-78-83</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>&nbsp; &nbsp; Заведующий отделом по учебной работе</td>\r\n\t\t\t<td>&nbsp; &nbsp; Тимерова Рафина Талиповна</td>\r\n\t\t\t<td>&nbsp;8(3476)38-78-83</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>&nbsp; &nbsp; &nbsp;Заведующий отделом по воспитательной работе</td>\r\n\t\t\t<td>&nbsp; &nbsp; &nbsp;Габбасова Гульсясяк Гаязовна</td>\r\n\t\t\t<td>&nbsp;8(3476)38-78-83</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>&nbsp; &nbsp; &nbsp;Заведующий производственной практикой</td>\r\n\t\t\t<td>\r\n\t\t\t<p>Шилкина Арина Сергеевна</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;8(3476)38-78-83</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>&nbsp; &nbsp; &nbsp;Заведующий отделением</td>\r\n\t\t\t<td>&nbsp; &nbsp; &nbsp;Нургалиева Гульнара Азатовна</td>\r\n\t\t\t<td>&nbsp;8(3476)38-78-83</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>&nbsp; &nbsp; &nbsp;Главный бухгалтер</td>\r\n\t\t\t<td>&nbsp; &nbsp; &nbsp;Шириязданова Раушания Галиевна</td>\r\n\t\t\t<td>&nbsp; &nbsp; &nbsp;8(3476)38-54-36&nbsp;&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>&nbsp; &nbsp; &nbsp;Начальник отдела по безопасности</td>\r\n\t\t\t<td>Пискунов Виктор Николаевич&nbsp; &nbsp;&nbsp;</td>\r\n\t\t\t<td>&nbsp;8(3476)38-51-48</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>&nbsp; &nbsp; &nbsp;Заведующий хозяйством</td>\r\n\t\t\t<td>&nbsp; &nbsp; &nbsp;Грекова Татьяна Яковлевна</td>\r\n\t\t\t<td>&nbsp;8(3476)38-51-48</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>&nbsp; &nbsp; &nbsp;Отдел кадров</td>\r\n\t\t\t<td>&nbsp; &nbsp; &nbsp;Привалова Лейсан Ражаповна</td>\r\n\t\t\t<td>&nbsp; &nbsp; &nbsp;8(3476)38-54-46</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n\r\n<p><a href="http://salavatmk.ru/about/2020/%D0%9F%D1%80%D0%B5%D0%BF%D0%BE%D0%B4%D0%B0%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B8%20%D0%BD%D0%B0%202020-2021%20%D1%83%D1%87.%D0%B3..pdf" target="_blank">Персональный состав педагогических работников государственного автономного профессионального образовательного учреждения Республики Башкортостан &laquo;Салаватский медицинский колледж&raquo;</a></p>	1	f
9	Материально-техническое обеспечение и оснащенность образовательного процесса	Материально-техническое обеспечение и оснащенность образовательного процесса	materialno-tekhnicheskoe-obespechenie-i-osnashchennost-obrazovatelnogo-protsessa	<p>Учебное здание ГАПОУ РБ&nbsp;&laquo;Салаватский медицинский колледж&raquo;&nbsp;расположено по адресу:&nbsp; Республика Башкортостан, г. Салават, ул. Фурманова, д. 4.</p>\r\n\r\n<p>Для организации образовательной деятельности оборудовано 20 учебных кабинетов, 18 кабинетов доклинической практики, 3 лаборатории,&nbsp; 2 компьютерных класса, 5 учебных комнат на базах медицинских организаций, 1 спортивный зал, библиотека.</p>\r\n\r\n<p>В колледже работает 2 стационарных компьютерных класса с общим количеством компьютеров 25 единиц. Доступ к сети Интернет имеют 25 компьютеров. В учебном процессе используются 6 мультимедийных проекторов, 1 интерактивная доска.</p>\r\n\r\n<p>Для медицинского обслуживания обучающихся имеется здравпункт в соответствии с договором между ГБУЗ РБ Городская больница г. Салават и ГАПОУ&nbsp; РБ&nbsp;&laquo;Салаватский медицинский колледж&raquo;,&nbsp;который состоит из прививочного кабинета, служебного помещения, приемного кабинета.Организованы и созданы условия для профилактики заболеваний и оздоровления обучающихся, для занятий физической культурой и спортом. В учебных кабинетах, спортивных залах и других помещениях для пребывания обучающихся выполняются санитарные правила естественной и искусственной освещенности, воздушно-теплового режима.&nbsp;Организовано ежегодное прохождение обучающимися в соответствии с законодательством Российской Федерации периодических медицинских осмотров и диспансеризации. В своей деятельности педагоги учитывают индивидуальные возможности обучающихся с ограниченными возможностями и инвалидов согласно их индивидуальной программе реабилитации. Особое&nbsp;внимание уделяется соблюдению здоровьесберегающего режима обучения и воспитания, в том числе при использовании технических средств обучения, информационно-коммуникационных технологий, в соответствии с требованиями санитарных правил.&nbsp;Учет индивидуальных особенностей обучающихся с ограниченными возможностями и инвалидов осуществляется посредством распределения учащихся по группам здоровья на занятиях физкультурой, ведения занятий по ЛФК,&nbsp;коррекционно-развивающих занятий, консультаций по предметам. Систематически проводятся внеклассные мероприятия, способствующие формированию навыков здорового образа жизни, мотивации быть здоровыми, воспитанию общей культуры здоровья.<br />\r\n&nbsp;Ведется профилактика и запрещение курения, употребления алкогольных, слабоалкогольных напитков, пива, наркотических средств и психотропных веществ и других одурманивающих веществ.Обеспечивается безопасность обучающихся во время пребывания в колледже.Ведется профилактика несчастных случаев с обучающимися во время пребывания в колледже.Соблюдается проведение санитарно-противоэпидемических и профилактических мероприятий.&nbsp;Состояние и содержание территории, здания и помещений колледжа, а также их оборудования (для водоснабжения, канализации, вентиляции, освещения) соответствует требованиям санитарных правил и требованиям пожарной безопасности.&nbsp;В колледже создаются безопасные условия для пребывания обучающихся, организован контроль доступа в здание.<br />\r\nВ колледже работает столовая, согласно заключённому договору с ООО &quot;Общепит&quot; о передаче объекта государственного нежилого фонда, в аренду без права выкупа от 01.08.2019 года, количество посадочных мест &ndash; 88.&nbsp;<a href="http://salavatmk.ru/news/12%20%D0%B4%D0%BD%D0%B5%D0%B2%D0%BD%D0%BE%D0%B5%20%D0%BC%D0%B5%D0%BD%D1%8E.pdf">Меню</a>&nbsp;составляется в соответствии с требованиями Роспотребнодзора, осуществляется сбалансированное горячее питание обучающихся, в том числе инвалидов и лиц с ограниченными возможностями здоровья.<br />\r\n<br />\r\nИмеются,&nbsp;учебные&nbsp;кабинеты, объекты для проведения практических занятий, библиотека, объекты спорта, столовой (буфета),&nbsp;здравпункта, доступ&nbsp;к информационным системам, информационно-телекоммуникационным сетям и электронно-образовательным ресурсам&nbsp;для инвалидов и лиц с ограниченными возможностями здоровья оборудуются техническими средствами с учетом их индивидуальных особенностей.&nbsp;Оборудован санузел для инвалидов-колясочников вплоть до держателей костылей, тростей, поручней вокруг раковин и эргономичного зеркала.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Для обеспечения доступа в здания инвалидов и лиц с ограниченными возможностями здоровья предусмотрены: кнопка вызова,&nbsp;расширенные дверные проёмы,&nbsp;на официальном сайте имеется вкладка &quot;Для слабовидящих&quot;.&nbsp;</p>\r\n\r\n<p>Для обеспечения безопасности студентов и сотрудников, а также для повышения уровня антитеррористической защищенности в зданиях учебного корпуса и общежития установлен турникет,арочные металлоискатели,ведется видеонаблюдение за главными входами и по периметру зданий. Охрана зданий обеспечивается охранными организациями,&nbsp;ООО ЧОП ДЕЛЬТА-РЕГИОН. Все сотрудники и студенты обеспечены электронными пропускными картами.</p>\r\n\r\n<p><br />\r\nНа стеклянных дверях учебного корпуса установлены знаки безопасности &laquo;желтый круг для слабовидящих&raquo;,установленные в соответствии с регламентом Государственной программой Российской Федерации &quot;Доступная среда&quot; на 2011 - 2015 годы, утвержденной постановлением Правительства РФ от 15 апреля 2014 г. N 297. В настоящее время программа продлена до 2020 г.&nbsp;Официальный сайт колледжа имеет версию &quot;Для слабовидящих&quot;.</p>\r\n\r\n<p><strong>В колледже не обучаются лица, требующие особых условий организации учебного процесса.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href="http://salavatmk.ru/about/elektronnye-obrazovatelnye-resursy.php">Электронные образовательные ресурсы</a></p>\r\n\r\n<p><a href="http://salavatmk.ru/about/inklyuzivnoe-informatsionno-bibliotechnoe-obespechenie-uchebnogo-protsessa.php">Инклюзивное информационно-библиотечное обеспечение учебного процесса</a>&nbsp;&nbsp;</p>\r\n\r\n<p><a href="http://salavatmk.ru/about/2020/%D0%9F%D1%80%D0%B8%D0%BA%D0%B0%D0%B7%20%E2%84%96%20121-%D0%94.pdf" target="_blank">Приказ об утверждении перечня и оснащенности учебных кабинетов и лабораторий на 2020-2021 учебный год</a></p>	1	f
4	Обратная связь	Обратная связь	obratnaia-sviaz	<div class="center"><strong>Нормативно-правовые основы работы с обращениями граждан</strong></div>\r\n\r\n<p>Правоотношения, связанные с реализацией гражданином Российской Федерации закрепленного за ним Конституцией Российской Федерации права на обращение в государственные органы и органы местного самоуправления, регулируются Федеральным законом от 2 мая 2006 года N 59-ФЗ &quot;О порядке рассмотрения обращений граждан Российской Федерации&quot;. Законом также устанавливается порядок рассмотрения обращений граждан государственными органами, органами местного самоуправления и должностными лицами.</p>\r\n\r\n<p>Установленный данным Федеральным законом порядок рассмотрения обращений граждан распространяется на все обращения граждан, за исключением обращений, которые подлежат рассмотрению в порядке, установленном федеральными конституционными законами и иными законами.</p>\r\n\r\n<p>Закон Республики Башкортостан от 12 декабря 2006 года № 391-з &quot;Об обращениях граждан в Республике Башкортостан&quot; направлен на обеспечение государственных гарантий защиты права граждан Российской Федерации на обращение, его соблюдение государственными органами Республики Башкортостан, органами местного самоуправления, должностными лицами и устанавливает гарантии граждан на обращения, дополняющие гарантии, установленные Федеральным законом &quot;О порядке рассмотрения обращений граждан Российской Федерации&quot;.</p>\r\n\r\n<p><a href="http://document.kremlin.ru/doc.asp?ID=33558&amp;PSC=2&amp;PT=3&amp;Page=1">Федеральный закон от 2 мая 2006 года N 59-ФЗ &quot;О порядке рассмотрения обращений граждан Российской Федерации&quot; </a></p>\r\n\r\n<p><a href="http://www.bashkortostan.ru/state/request/zakon.doc">Закон Республики Башкортостан от 12 декабря 2006 года № 391-з &quot;Об обращениях граждан в Республике Башкортостан&quot;</a></p>\r\n\r\n<div class="center"><strong>ИНФОРМАЦИЯ О ПОРЯДКЕ ПРИЕМА И РАССМОТРЕНИЯ ОБРАЩЕНИЙ В ЭЛЕКТРОННОМ ВИДЕ В АДРЕС ДИРЕКТОРА ГАПОУ РБ &quot;САЛАВАТСКИЙ МЕДИЦИНСКИЙ КОЛЛЕДЖ&quot;</strong></div>\r\n\r\n<p>1. Обращения, направленные в электронном виде через официальный сайт ГАПОУ РБ &quot;Салаватский медицинский колледж&quot;, поступают в приемную директора ГАПОУ РБ &quot;Салаватский медицинский колледж&quot; и в соответствии с <a href="http://document.kremlin.ru/doc.asp?ID=33558&amp;PSC=2&amp;PT=3&amp;Page=1">Федеральным законом от 2 мая 2006 года №59-ФЗ &laquo;О порядке рассмотрения обращений граждан Российской Федерации&raquo; </a>регистрируются в трехдневный срок и рассматриваются в порядке, установленном указанным Федеральным законом.</p>\r\n\r\n<p>2. Ответ на обращение направляется обычной почтой по почтовому адресу, указанному в анкете. В случае внесения в анкету некорректных или недостоверных данных ответ на обращение не дается.</p>\r\n\r\n<p>3. Уважаемые пользователи! Просим с пониманием отнестись к некоторым ограничениям, связанным с особенностями обработки больших потоков информации:</p>\r\n\r\n<ul>\r\n\t<li>Длина текста электронного обращения не должна превышать 5000 символов.</li>\r\n\t<li>Электронное обращение не должно содержать вложенных файлов.</li>\r\n\t<li>Письма, содержащие тексты большей длины, копии документов, фотографии и другие допустимые вложения, следует направлять обычной почтой по адресу: 453261, г.Салават, ул. Фурманова,&nbsp;4</li>\r\n</ul>	6	t
11	Справочная информация	Справочная информация	spravochnaia-informatsiia	<p><a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/25/2020-2021.doc" target="_blank">План организационно-методической работы на 2020-2021 учебный год.</a></p>\r\n\r\n<p><a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/25/2020-2021.pdf" target="_blank">План работы СМФОО ПФО на 2020-2021 учебный год.</a></p>\r\n\r\n<p><a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/25/0204.pdf" target="_blank">Методические рекомендации по обеспечению пожарной безопасности</a></p>	4	f
12	Республиканские семинары	Республиканские семинары	respublikanskie-seminary	<p>--</p>	4	f
13	Дополнительное образование	Дополнительное образование	dopolnitelnoe-obrazovanie	<h3>О курсах повышения квалификации</h3>\r\n\r\n<p>Программа КПК включает следующие разделы:<br />\r\n<br />\r\n- Государственная политика в системе образования РФ;<br />\r\n<br />\r\n- Современные требования к профессиональной компетентности педагога;<br />\r\n<br />\r\n- Современные образовательные технологии в образовательном процессе;<br />\r\n<br />\r\n- Формирование профессиональной компетентности преподавателей по преподаваемым учебным дисциплинам, ПМ и МДК.<br />\r\n<br />\r\nФорма обучения: заочная.</p>	4	t
14	Аттестация	Аттестация	attestatsiia	<p><a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/25/pr_070414_n276.rtf" target="_blank">Приказ Минобрнауки России от 07.04.2014 N 276 &quot;Об утверждении Порядка проведения аттестации педагогических работников организаций, осуществляющих образовательную деятельность&quot;</a></p>\r\n\r\n<p><a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/25/attestation1.docx" target="_blank">Заявление ОБРАЗЕЦ</a></p>\r\n\r\n<p><a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/25/1ya_prepodavatel.docx" target="_blank">Критерии портфолио 1 категории</a></p>\r\n\r\n<p><a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/25/vish_prepodavatel.docx" target="_blank">Критерии портфолио высшей категории</a></p>\r\n\r\n<p><a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/25/attestation4.doc" target="_blank">Методические рекомендации 1 категории</a></p>\r\n\r\n<p><a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/25/attestation5.doc" target="_blank">Методические рекомендации высшей категории</a></p>\r\n\r\n<p><a href="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/25/attestation6.doc" target="_blank">Экспертное заключение</a></p>	4	f
16	Горячая линия	Горячая линия	goriachaia-liniia	<p><a href="https://health.bashkortostan.ru/activity/24083/">&quot;Горячая линия&quot; для работников бюджетных учреждений по вопросам оплаты труда 8 (347) 218-00-83</a></p>\r\n\r\n<p><a href="https://health.bashkortostan.ru/activity/25276/">&quot;Горячая линия&quot; ФКУ &quot;Главное бюро медико-социальной экспертизы по Республике Башкортостан&quot; Министерства труда и социальной защиты Российской Федерации 8 (347) 286-11-25 </a></p>\r\n\r\n<p><a href="https://health.bashkortostan.ru/activity/25280/">&quot;Горячая линия&quot; по вопросам лекарственного обес</a><a href="https://health.bashkortostan.ru/activity/25280/">печения 8 (347) 218-00-76</a></p>\r\n\r\n<p><a href="https://health.bashkortostan.ru/activity/25282/">&quot;Горячая линия&quot; Минздрава РБ по вопросам качества медицинской помощи 8 (347) 218-00-53</a></p>	6	f
17	Контакты контролирующих организаций	Контакты контролирующих организаций	kontakty-kontroliruiushchikh-organizatsii	<div class="center"><strong>Министерство здравоохранения РБ </strong></div>\r\n\r\n<p>Министр &ndash; Забелин Максим Васильевич<br />\r\n450002, г.Уфа, ул.Тукаева, 23<br />\r\nПриёмная тел.(347) 218-00-81<br />\r\nКанцелярия (347) 218-00-88; факс (347)218-00-62<br />\r\nE-mail: <a href="mailto:minzdrav@bashkortostan.ru">minzdrav@bashkortostan.ru</a><br />\r\n<a href="http://mzrb.bashmed.ru/">http://mzrb.bashmed.ru/</a><br />\r\nПрием граждан по личным вопросам:<br />\r\nпонедельник с 16 до 18 ч.<br />\r\nПрием осуществляется по предварительной записи<br />\r\nпо тел. 218-00-50, 218-00-52</p>\r\n\r\n<hr />\r\n<div class="center"><strong>Отдел Министерства здравоохранения РБ в г. Уфа</strong></div>\r\n\r\n<p>Начальник - Кудашев Науфаль Юрьевич<br />\r\n450099, г.Уфа, ул. Салавата, 15<br />\r\nТел. (347) 276-25-11<br />\r\nE-mail: <a href="mailto:a@mzrb.ru ">ufa@mzrb.ru</a></p>\r\n\r\n<hr />\r\n<div class="center"><strong>Республиканский фонд обязательного медицинского страхования</strong></div>\r\n\r\n<p>Директор - Кофанова Юлия Анатольевна<br />\r\n450077, г.Уфа, ул.Ленина, 37<br />\r\nТел. (347) 273-50-90<br />\r\nОтдел организации обязательного страхования<br />\r\nТел. (347) 273-26-51<br />\r\n<a href="http://ora.ffoms.ru/">http://ora.ffoms.ru/</a></p>\r\n\r\n<hr />\r\n<div class="center"><strong>Уфимский филиал Фонда обязательного медицинского страхования</strong></div>\r\n\r\n<p>И. о. директора - Марина Анатольевна Руднева<br />\r\n450025, г.Уфа, ул.Достоевского, 110/1<br />\r\nТел. (347) 250-82-51<br />\r\n<br />\r\nОтдел по работе с застрахованными<br />\r\nТел. (347) 250-82-43</p>\r\n\r\n<hr />\r\n<div class="center"><strong>Территориальное управление Федеральной службы по надзору в сфере здравоохранения и социального развития по Республике Башкортостан (Управление Росздравнадзора по РБ)</strong></div>\r\n\r\n<p>Руководитель - Гашимова Динара Тимербаевна<br />\r\n450076, г.Уфа, ул.Аксакова, 62<br />\r\nТел. (347) 250-30-22</p>\r\n\r\n<hr />\r\n<div class="center"><strong>Управление Федеральной службы по надзору в сфере защиты прав потребителей и благополучия человека по Республике Башкортостан (Управление Роспотребнадзора по РБ) </strong></div>\r\n\r\n<p>Руководитель - Степанов Евгений Георгиевич<br />\r\n450054, г.Уфа, ул.Р.Зорге, 58<br />\r\nТел. (347) 229-90-99; 229-90-80;<br />\r\n<a href="http://www.rpn-rb.ru ">http://www.rpn-rb.ru</a><br />\r\nE-mail: <a href="mailto:rpnrb@02.rospotrebnadzor.ru">rpnrb@02.rospotrebnadzor.ru </a><br />\r\nОбщественная приёмная<br />\r\nПриём осуществляется еженедельно по четвергам<br />\r\nс 16:00 до 18:00 часов, каб. № 104</p>	6	f
3	Контакты	Контакты	kontakty	<p>Почтовый индекс, адрес: 453261, г. Салават, ул. Фурманова, 4<br />\r\nТелефон/факс: (3476)-38-78-83<br />\r\nЕ-mail: &nbsp;&nbsp; <a href="mailto:slv.mk@doctorrb.ru">slv.mk@doctorrb.ru</a>&nbsp;&nbsp;&nbsp; - &nbsp;&nbsp;приемная<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a href="mailto:smk.urist@mail.ru">smk.urist@mail.ru</a>&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;зам.директора по общим вопросам<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a href="mailto:bux.smk@mail.ru">bux.smk@mail.ru</a>&nbsp;&nbsp;&nbsp; - &nbsp; бухгалтерия<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a href="mailto:programmist.smk@mail.ru">programmist.smk@mail.ru</a>&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp;техник-программист</p>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><iframe frameborder="0" height="400px" src="https://yandex.ru/map-widget/v1/?um=constructor%3A257f912c685f7e5fe79e3e8728a3bc048ca1ab7f71e77207fbeb398d052831ac&amp;source=constructor" width="69%"></iframe></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div class="container" style="padding-left:0px !important">\r\n<table>\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="text-align:center"><img alt="Сливочкина" src="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/23/slivochkina.png" style="height:120px; width:120px" /></td>\r\n\t\t\t<td style="text-align:center">Сливочкина Оксана Викторовна<br />\r\n\t\t\tДиректор<br />\r\n\t\t\t8-(3476)-38-78-83<br />\r\n\t\t\t<a href="mailto:slv.mk@doctorrb.ru">slv.mk@doctorrb.ru</a></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="text-align:center"><img alt="Файзуллина" src="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/23/faiz.png" style="height:120px; width:120px" /></td>\r\n\t\t\t<td style="text-align:center">Файзуллина Рамиля Ринатовна<br />\r\n\t\t\tЗаместитель директора по общим вопросам<br />\r\n\t\t\t8-(3476)-38-78-83<br />\r\n\t\t\t<a href="mailto:smk.urist@mail.ru">smk.urist@mail.ru</a></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="text-align:center"><img alt="Шириязданова" src="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/23/shiriyazdanova.jpg" style="height:120px; width:121px" /></td>\r\n\t\t\t<td style="text-align:center">Шириязданова Раушания Галеевна<br />\r\n\t\t\tГлавный бухгалтер<br />\r\n\t\t\t8-(3476)-38-54-36<br />\r\n\t\t\t<a href="mailto:smk.bux@mail.ru">smk.bux@mail.ru</a></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="text-align:center"><img alt="Нургалиева" src="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/22/nurgalieva.jpg" style="height:121px; width:116px" /></td>\r\n\t\t\t<td style="text-align:center">Нургалиева Гульнара Азатовна<br />\r\n\t\t\tЗаведующий отделением&nbsp;<br />\r\n\t\t\t<a href="mailto:zavotd.smk@mail.ru">zavotd.smk@mail.ru</a></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="text-align:center"><img alt="Тимерова" src="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/23/tim.png" style="height:120px; width:120px" /></td>\r\n\t\t\t<td style="text-align:center">Тимерова Рафина Талиповна<br />\r\n\t\t\tЗаведующий отделом по учебной работе<br />\r\n\t\t\t<a href="mailto:zavuch.smk@mail.ru">zavuch.smk@mail.ru</a></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="text-align:center"><img alt="Габбасова" src="https://falsehuman-salavatmk.s3.amazonaws.com/media/uploads/2021/02/23/gab.jpg" style="height:120px; width:120px" /></td>\r\n\t\t\t<td style="text-align:center">Габбасова Гульсасяк Гаязовна<br />\r\n\t\t\tЗаведующий отделом по воспитательной работе<br />\r\n\t\t\t<a href="mailto:gulsasyakg@mail.ru">gulsasyakg@mail.ru</a></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="text-align:center"><img alt="Пискунов" src="https://i.ytimg.com/vi/Z6N9LsG6MIg/maxresdefault.jpg" style="height:120px; width:120px" /></td>\r\n\t\t\t<td style="text-align:center">Пискунов Виктор Николаевич<br />\r\n\t\t\tНачальник отдела по безопасности<br />\r\n\t\t\t<a href="mailto:sb.smkrb@mail.ru">sb.smkrb@mail.ru</a></td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</div>\r\n\r\n<p>&nbsp;</p>	6	f
\.


--
-- Name: tab_section_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tab_section_id_seq', 18, true);


--
-- Data for Name: tab_tabs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_tabs (id, title, sections) FROM stdin;
1	Сведения о колледже	svedeniya-o-kolledzhe
2	Абитуренту	abiturentu
3	Студенту	studentu
4	Преподавателю	prepodavatelyu
5	Конкурсы и олимпиады	konkursy-i-olimpiady
6	Контакты	kontakty
\.


--
-- Name: tab_tabs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tab_tabs_id_seq', 8, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: home_article home_article_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_article
    ADD CONSTRAINT home_article_pkey PRIMARY KEY (id);


--
-- Name: home_home home_home_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_home
    ADD CONSTRAINT home_home_pkey PRIMARY KEY (id);


--
-- Name: tab_callback tab_callback_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_callback
    ADD CONSTRAINT tab_callback_pkey PRIMARY KEY (id);


--
-- Name: tab_section tab_section_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_section
    ADD CONSTRAINT tab_section_pkey PRIMARY KEY (id);


--
-- Name: tab_tabs tab_tabs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_tabs
    ADD CONSTRAINT tab_tabs_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: home_article_slug_c8c784ef; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_article_slug_c8c784ef ON public.home_article USING btree (slug);


--
-- Name: home_article_slug_c8c784ef_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_article_slug_c8c784ef_like ON public.home_article USING btree (slug varchar_pattern_ops);


--
-- Name: tab_section_name_tab_id_a1f8d81b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tab_section_name_tab_id_a1f8d81b ON public.tab_section USING btree (name_tab_id);


--
-- Name: tab_section_slug_2fe20cf0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tab_section_slug_2fe20cf0 ON public.tab_section USING btree (slug);


--
-- Name: tab_section_slug_2fe20cf0_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tab_section_slug_2fe20cf0_like ON public.tab_section USING btree (slug varchar_pattern_ops);


--
-- Name: tab_tabs_slug_fb2c5814; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tab_tabs_slug_fb2c5814 ON public.tab_tabs USING btree (sections);


--
-- Name: tab_tabs_slug_fb2c5814_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tab_tabs_slug_fb2c5814_like ON public.tab_tabs USING btree (sections varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tab_section tab_section_name_tab_id_a1f8d81b_fk_tab_tabs_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_section
    ADD CONSTRAINT tab_section_name_tab_id_a1f8d81b_fk_tab_tabs_id FOREIGN KEY (name_tab_id) REFERENCES public.tab_tabs(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

