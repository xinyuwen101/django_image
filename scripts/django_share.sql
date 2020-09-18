--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

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
-- Name: accounts_contact; Type: TABLE; Schema: public; Owner: xinyuwen
--

CREATE TABLE public.accounts_contact (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    user_from_id integer NOT NULL,
    user_to_id integer NOT NULL
);


ALTER TABLE public.accounts_contact OWNER TO xinyuwen;

--
-- Name: accounts_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: xinyuwen
--

CREATE SEQUENCE public.accounts_contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accounts_contact_id_seq OWNER TO xinyuwen;

--
-- Name: accounts_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xinyuwen
--

ALTER SEQUENCE public.accounts_contact_id_seq OWNED BY public.accounts_contact.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: xinyuwen
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO xinyuwen;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: xinyuwen
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO xinyuwen;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xinyuwen
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: xinyuwen
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO xinyuwen;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: xinyuwen
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO xinyuwen;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xinyuwen
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: xinyuwen
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO xinyuwen;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: xinyuwen
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO xinyuwen;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xinyuwen
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: xinyuwen
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO xinyuwen;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: xinyuwen
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO xinyuwen;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: xinyuwen
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO xinyuwen;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xinyuwen
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: xinyuwen
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO xinyuwen;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xinyuwen
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: xinyuwen
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO xinyuwen;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: xinyuwen
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO xinyuwen;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xinyuwen
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: xinyuwen
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


ALTER TABLE public.django_admin_log OWNER TO xinyuwen;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: xinyuwen
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO xinyuwen;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xinyuwen
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: xinyuwen
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO xinyuwen;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: xinyuwen
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO xinyuwen;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xinyuwen
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: xinyuwen
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO xinyuwen;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: xinyuwen
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO xinyuwen;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xinyuwen
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: xinyuwen
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO xinyuwen;

--
-- Name: images_image; Type: TABLE; Schema: public; Owner: xinyuwen
--

CREATE TABLE public.images_image (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    slug character varying(200) NOT NULL,
    url character varying(200) NOT NULL,
    description text NOT NULL,
    created date NOT NULL,
    image character varying(100) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.images_image OWNER TO xinyuwen;

--
-- Name: images_image_id_seq; Type: SEQUENCE; Schema: public; Owner: xinyuwen
--

CREATE SEQUENCE public.images_image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.images_image_id_seq OWNER TO xinyuwen;

--
-- Name: images_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xinyuwen
--

ALTER SEQUENCE public.images_image_id_seq OWNED BY public.images_image.id;


--
-- Name: images_image_user_like; Type: TABLE; Schema: public; Owner: xinyuwen
--

CREATE TABLE public.images_image_user_like (
    id integer NOT NULL,
    image_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.images_image_user_like OWNER TO xinyuwen;

--
-- Name: images_image_user_like_id_seq; Type: SEQUENCE; Schema: public; Owner: xinyuwen
--

CREATE SEQUENCE public.images_image_user_like_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.images_image_user_like_id_seq OWNER TO xinyuwen;

--
-- Name: images_image_user_like_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: xinyuwen
--

ALTER SEQUENCE public.images_image_user_like_id_seq OWNED BY public.images_image_user_like.id;


--
-- Name: thumbnail_kvstore; Type: TABLE; Schema: public; Owner: xinyuwen
--

CREATE TABLE public.thumbnail_kvstore (
    key character varying(200) NOT NULL,
    value text NOT NULL
);


ALTER TABLE public.thumbnail_kvstore OWNER TO xinyuwen;

--
-- Name: accounts_contact id; Type: DEFAULT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.accounts_contact ALTER COLUMN id SET DEFAULT nextval('public.accounts_contact_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: images_image id; Type: DEFAULT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.images_image ALTER COLUMN id SET DEFAULT nextval('public.images_image_id_seq'::regclass);


--
-- Name: images_image_user_like id; Type: DEFAULT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.images_image_user_like ALTER COLUMN id SET DEFAULT nextval('public.images_image_user_like_id_seq'::regclass);


--
-- Data for Name: accounts_contact; Type: TABLE DATA; Schema: public; Owner: xinyuwen
--

COPY public.accounts_contact (id, created, user_from_id, user_to_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: xinyuwen
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: xinyuwen
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: xinyuwen
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
25	Can add contact	7	add_contact
26	Can change contact	7	change_contact
27	Can delete contact	7	delete_contact
28	Can view contact	7	view_contact
29	Can add image	8	add_image
30	Can change image	8	change_image
31	Can delete image	8	delete_image
32	Can view image	8	view_image
33	Can add kv store	9	add_kvstore
34	Can change kv store	9	change_kvstore
35	Can delete kv store	9	delete_kvstore
36	Can view kv store	9	view_kvstore
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: xinyuwen
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$216000$Mfn3ceNHXDwu$OCjqV7yj8xEC2KCBsCokwGR7jaNONScTs8MUkleOD2k=	2020-09-16 20:48:04-07	t	xinyuwen	Xinyu	Wen	me.xinyuwen@gmail.com	t	t	2020-09-16 20:43:43-07
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: xinyuwen
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: xinyuwen
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: xinyuwen
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-09-16 20:53:15.128183-07	1	xinyuwen	2	[{"changed": {"fields": ["First name", "Last name"]}}]	4	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: xinyuwen
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	accounts	contact
8	images	image
9	thumbnail	kvstore
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: xinyuwen
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-09-16 20:43:12.779345-07
2	auth	0001_initial	2020-09-16 20:43:12.856809-07
3	accounts	0001_initial	2020-09-16 20:43:12.927556-07
4	admin	0001_initial	2020-09-16 20:43:12.969331-07
5	admin	0002_logentry_remove_auto_add	2020-09-16 20:43:12.993444-07
6	admin	0003_logentry_add_action_flag_choices	2020-09-16 20:43:13.030315-07
7	contenttypes	0002_remove_content_type_name	2020-09-16 20:43:13.087345-07
8	auth	0002_alter_permission_name_max_length	2020-09-16 20:43:13.108422-07
9	auth	0003_alter_user_email_max_length	2020-09-16 20:43:13.13663-07
10	auth	0004_alter_user_username_opts	2020-09-16 20:43:13.151779-07
11	auth	0005_alter_user_last_login_null	2020-09-16 20:43:13.183279-07
12	auth	0006_require_contenttypes_0002	2020-09-16 20:43:13.195363-07
13	auth	0007_alter_validators_add_error_messages	2020-09-16 20:43:13.222487-07
14	auth	0008_alter_user_username_max_length	2020-09-16 20:43:13.238645-07
15	auth	0009_alter_user_last_name_max_length	2020-09-16 20:43:13.276911-07
16	auth	0010_alter_group_name_max_length	2020-09-16 20:43:13.292719-07
17	auth	0011_update_proxy_permissions	2020-09-16 20:43:13.329545-07
18	auth	0012_alter_user_first_name_max_length	2020-09-16 20:43:13.358161-07
19	auth	0013_user_following	2020-09-16 20:43:13.371738-07
20	images	0001_initial	2020-09-16 20:43:13.410808-07
21	images	0002_auto_20200906_0556	2020-09-16 20:43:13.455739-07
22	sessions	0001_initial	2020-09-16 20:43:13.467436-07
23	thumbnail	0001_initial	2020-09-16 20:43:13.534659-07
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: xinyuwen
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
vagbzz0hr7ksj3vp6ekc7p4419lq6p9c	.eJxVjDsOwjAQBe_iGlnyJlrblPScIVrvBwdQLOVTIe4OkVJA-2bmvdxA21qHbdF5GMWdXXCn360QP3TagdxpujXPbVrnsfhd8Qdd_LWJPi-H-3dQaanf2qykJMhkmsGQGRm7GBBTH3IRjrHPDAyqEqx0nQAQKrOaJaIe3PsDFXI5Yw:1kIktw:7KW2M1EkPfCcy4swDYx--oYxxH9m9vWzgdvy2fKGDjY	2020-09-30 20:48:04.328698-07
\.


--
-- Data for Name: images_image; Type: TABLE DATA; Schema: public; Owner: xinyuwen
--

COPY public.images_image (id, title, slug, url, description, created, image, user_id) FROM stdin;
\.


--
-- Data for Name: images_image_user_like; Type: TABLE DATA; Schema: public; Owner: xinyuwen
--

COPY public.images_image_user_like (id, image_id, user_id) FROM stdin;
\.


--
-- Data for Name: thumbnail_kvstore; Type: TABLE DATA; Schema: public; Owner: xinyuwen
--

COPY public.thumbnail_kvstore (key, value) FROM stdin;
\.


--
-- Name: accounts_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xinyuwen
--

SELECT pg_catalog.setval('public.accounts_contact_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xinyuwen
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xinyuwen
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xinyuwen
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xinyuwen
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xinyuwen
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xinyuwen
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xinyuwen
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xinyuwen
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xinyuwen
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 23, true);


--
-- Name: images_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xinyuwen
--

SELECT pg_catalog.setval('public.images_image_id_seq', 1, false);


--
-- Name: images_image_user_like_id_seq; Type: SEQUENCE SET; Schema: public; Owner: xinyuwen
--

SELECT pg_catalog.setval('public.images_image_user_like_id_seq', 1, false);


--
-- Name: accounts_contact accounts_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.accounts_contact
    ADD CONSTRAINT accounts_contact_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: images_image images_image_pkey; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.images_image
    ADD CONSTRAINT images_image_pkey PRIMARY KEY (id);


--
-- Name: images_image_user_like images_image_user_like_image_id_user_id_16072bfb_uniq; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.images_image_user_like
    ADD CONSTRAINT images_image_user_like_image_id_user_id_16072bfb_uniq UNIQUE (image_id, user_id);


--
-- Name: images_image_user_like images_image_user_like_pkey; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.images_image_user_like
    ADD CONSTRAINT images_image_user_like_pkey PRIMARY KEY (id);


--
-- Name: thumbnail_kvstore thumbnail_kvstore_pkey; Type: CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.thumbnail_kvstore
    ADD CONSTRAINT thumbnail_kvstore_pkey PRIMARY KEY (key);


--
-- Name: accounts_contact_created_5be07012; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX accounts_contact_created_5be07012 ON public.accounts_contact USING btree (created);


--
-- Name: accounts_contact_user_from_id_d88fc381; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX accounts_contact_user_from_id_d88fc381 ON public.accounts_contact USING btree (user_from_id);


--
-- Name: accounts_contact_user_to_id_16d11cce; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX accounts_contact_user_to_id_16d11cce ON public.accounts_contact USING btree (user_to_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: images_image_created_7fb4bf39; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX images_image_created_7fb4bf39 ON public.images_image USING btree (created);


--
-- Name: images_image_slug_86cc6ded; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX images_image_slug_86cc6ded ON public.images_image USING btree (slug);


--
-- Name: images_image_slug_86cc6ded_like; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX images_image_slug_86cc6ded_like ON public.images_image USING btree (slug varchar_pattern_ops);


--
-- Name: images_image_user_id_55499d60; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX images_image_user_id_55499d60 ON public.images_image USING btree (user_id);


--
-- Name: images_image_user_like_image_id_8a862ce7; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX images_image_user_like_image_id_8a862ce7 ON public.images_image_user_like USING btree (image_id);


--
-- Name: images_image_user_like_user_id_e907d363; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX images_image_user_like_user_id_e907d363 ON public.images_image_user_like USING btree (user_id);


--
-- Name: thumbnail_kvstore_key_3f850178_like; Type: INDEX; Schema: public; Owner: xinyuwen
--

CREATE INDEX thumbnail_kvstore_key_3f850178_like ON public.thumbnail_kvstore USING btree (key varchar_pattern_ops);


--
-- Name: accounts_contact accounts_contact_user_from_id_d88fc381_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.accounts_contact
    ADD CONSTRAINT accounts_contact_user_from_id_d88fc381_fk_auth_user_id FOREIGN KEY (user_from_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: accounts_contact accounts_contact_user_to_id_16d11cce_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.accounts_contact
    ADD CONSTRAINT accounts_contact_user_to_id_16d11cce_fk_auth_user_id FOREIGN KEY (user_to_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: images_image images_image_user_id_55499d60_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.images_image
    ADD CONSTRAINT images_image_user_id_55499d60_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: images_image_user_like images_image_user_like_image_id_8a862ce7_fk_images_image_id; Type: FK CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.images_image_user_like
    ADD CONSTRAINT images_image_user_like_image_id_8a862ce7_fk_images_image_id FOREIGN KEY (image_id) REFERENCES public.images_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: images_image_user_like images_image_user_like_user_id_e907d363_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: xinyuwen
--

ALTER TABLE ONLY public.images_image_user_like
    ADD CONSTRAINT images_image_user_like_user_id_e907d363_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

