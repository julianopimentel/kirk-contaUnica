PGDMP         !                y            deskapps     11.12 (Raspbian 11.12-0+deb10u1)    13.2 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16386    deskapps    DATABASE     ]   CREATE DATABASE deskapps WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_GB.UTF-8';
    DROP DATABASE deskapps;
                pi    false                        2615    16387    admin    SCHEMA        CREATE SCHEMA admin;
    DROP SCHEMA admin;
                postgres    false            �           0    0    SCHEMA admin    COMMENT     5   COMMENT ON SCHEMA admin IS 'standard public schema';
                   postgres    false    6            
            2615    56556    conta_teste_100002    SCHEMA     "   CREATE SCHEMA conta_teste_100002;
     DROP SCHEMA conta_teste_100002;
                postgres    false            	            2615    33592    deskapps_100001    SCHEMA        CREATE SCHEMA deskapps_100001;
    DROP SCHEMA deskapps_100001;
                postgres    false            �            1259    16394    accounts_id_seq    SEQUENCE     w   CREATE SEQUENCE admin.accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE admin.accounts_id_seq;
       admin          postgres    false    6            �            1259    16396    accounts    TABLE     �  CREATE TABLE admin.accounts (
    id bigint DEFAULT nextval('admin.accounts_id_seq'::regclass) NOT NULL,
    name_company character varying(255) NOT NULL,
    integrador bigint NOT NULL,
    email character varying(255),
    mobile character varying(255),
    address1 character varying(255),
    address2 character varying(255),
    created_at timestamp(0) without time zone,
    tenant character varying(255),
    status_id integer,
    deleted_at timestamp(0) without time zone,
    doc character varying(255),
    cep character varying(255),
    state character varying(255),
    city character varying(255),
    country character varying(255),
    updated_at timestamp(0) without time zone,
    expired date
);
    DROP TABLE admin.accounts;
       admin            postgres    false    199    6            �            1259    32786    activity_log    TABLE       CREATE TABLE admin.activity_log (
    id bigint NOT NULL,
    activity_id character varying(255),
    user_id character varying,
    type character varying(255),
    tenant character varying(255),
    manipulations json,
    created_at timestamp(6) without time zone
);
    DROP TABLE admin.activity_log;
       admin            postgres    false    6            �            1259    32784    activity_log_id_seq    SEQUENCE     {   CREATE SEQUENCE admin.activity_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE admin.activity_log_id_seq;
       admin          postgres    false    252    6            �           0    0    activity_log_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE admin.activity_log_id_seq OWNED BY admin.activity_log.id;
          admin          postgres    false    251            �            1259    24833    activity_status    TABLE     �   CREATE TABLE admin.activity_status (
    id integer NOT NULL,
    description character varying(255) NOT NULL,
    type character varying(255)
);
 "   DROP TABLE admin.activity_status;
       admin            postgres    false    6            �            1259    16403    email_template    TABLE       CREATE TABLE admin.email_template (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    content text NOT NULL,
    name character varying(255) NOT NULL,
    subject character varying(255) NOT NULL
);
 !   DROP TABLE admin.email_template;
       admin            postgres    false    6            �            1259    16409    email_template_id_seq    SEQUENCE     }   CREATE SEQUENCE admin.email_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE admin.email_template_id_seq;
       admin          postgres    false    201    6            �           0    0    email_template_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE admin.email_template_id_seq OWNED BY admin.email_template.id;
          admin          postgres    false    202            �            1259    16411    example    TABLE       CREATE TABLE admin.example (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    name character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    status_id integer NOT NULL
);
    DROP TABLE admin.example;
       admin            postgres    false    6            �            1259    16417    example_id_seq    SEQUENCE     v   CREATE SEQUENCE admin.example_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE admin.example_id_seq;
       admin          postgres    false    6    203            �           0    0    example_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE admin.example_id_seq OWNED BY admin.example.id;
          admin          postgres    false    204            �            1259    16419    failed_jobs    TABLE     �   CREATE TABLE admin.failed_jobs (
    id bigint NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE admin.failed_jobs;
       admin            postgres    false    6            �            1259    16426    failed_jobs_id_seq    SEQUENCE     z   CREATE SEQUENCE admin.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE admin.failed_jobs_id_seq;
       admin          postgres    false    205    6            �           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE admin.failed_jobs_id_seq OWNED BY admin.failed_jobs.id;
          admin          postgres    false    206            �            1259    16428    folder    TABLE     �   CREATE TABLE admin.folder (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    name character varying(255) NOT NULL,
    folder_id integer,
    resource boolean
);
    DROP TABLE admin.folder;
       admin            postgres    false    6            �            1259    16431    folder_id_seq    SEQUENCE     u   CREATE SEQUENCE admin.folder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE admin.folder_id_seq;
       admin          postgres    false    207    6            �           0    0    folder_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE admin.folder_id_seq OWNED BY admin.folder.id;
          admin          postgres    false    208            �            1259    16433    form    TABLE     z  CREATE TABLE admin.form (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    name character varying(255) NOT NULL,
    table_name character varying(255) NOT NULL,
    read boolean NOT NULL,
    edit boolean NOT NULL,
    add boolean NOT NULL,
    delete boolean NOT NULL,
    pagination integer NOT NULL
);
    DROP TABLE admin.form;
       admin            postgres    false    6            �            1259    16439 
   form_field    TABLE     �  CREATE TABLE admin.form_field (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    name character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    browse boolean NOT NULL,
    read boolean NOT NULL,
    edit boolean NOT NULL,
    add boolean NOT NULL,
    relation_table character varying(255),
    relation_column character varying(255),
    form_id integer NOT NULL,
    column_name character varying(255) NOT NULL
);
    DROP TABLE admin.form_field;
       admin            postgres    false    6            �            1259    16445    form_field_id_seq    SEQUENCE     y   CREATE SEQUENCE admin.form_field_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE admin.form_field_id_seq;
       admin          postgres    false    210    6            �           0    0    form_field_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE admin.form_field_id_seq OWNED BY admin.form_field.id;
          admin          postgres    false    211            �            1259    16447    form_id_seq    SEQUENCE     s   CREATE SEQUENCE admin.form_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE admin.form_id_seq;
       admin          postgres    false    6    209            �           0    0    form_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE admin.form_id_seq OWNED BY admin.form.id;
          admin          postgres    false    212            �            1259    16449    user_likes_id_seq    SEQUENCE     y   CREATE SEQUENCE admin.user_likes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE admin.user_likes_id_seq;
       admin          postgres    false    6            �            1259    16451    likes    TABLE     D  CREATE TABLE admin.likes (
    id integer DEFAULT nextval('admin.user_likes_id_seq'::regclass) NOT NULL,
    user_id bigint NOT NULL,
    likeable_id bigint NOT NULL,
    likeable_type character varying,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    account_id integer
);
    DROP TABLE admin.likes;
       admin            postgres    false    213    6            �            1259    16458    media    TABLE     �  CREATE TABLE admin.media (
    id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL,
    collection_name character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    file_name character varying(255) NOT NULL,
    mime_type character varying(255),
    disk character varying(255) NOT NULL,
    conversions_disk character varying(255) NOT NULL,
    size bigint NOT NULL,
    uuid bigint NOT NULL,
    manipulations json NOT NULL,
    custom_properties json NOT NULL,
    responsive_images json NOT NULL,
    order_column integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE admin.media;
       admin            postgres    false    6            �            1259    16464    media_id_seq    SEQUENCE     t   CREATE SEQUENCE admin.media_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE admin.media_id_seq;
       admin          postgres    false    6    215            �           0    0    media_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE admin.media_id_seq OWNED BY admin.media.id;
          admin          postgres    false    216            �            1259    16466 	   menu_role    TABLE     �   CREATE TABLE admin.menu_role (
    id bigint NOT NULL,
    role_name character varying(255) NOT NULL,
    menus_id integer NOT NULL
);
    DROP TABLE admin.menu_role;
       admin            postgres    false    6            �            1259    16469    menu_role_id_seq    SEQUENCE     x   CREATE SEQUENCE admin.menu_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE admin.menu_role_id_seq;
       admin          postgres    false    217    6            �           0    0    menu_role_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE admin.menu_role_id_seq OWNED BY admin.menu_role.id;
          admin          postgres    false    218            �            1259    16471    menulist    TABLE     b   CREATE TABLE admin.menulist (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);
    DROP TABLE admin.menulist;
       admin            postgres    false    6            �            1259    16474    menulist_id_seq    SEQUENCE     w   CREATE SEQUENCE admin.menulist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE admin.menulist_id_seq;
       admin          postgres    false    6    219            �           0    0    menulist_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE admin.menulist_id_seq OWNED BY admin.menulist.id;
          admin          postgres    false    220            �            1259    16476    menus    TABLE     0  CREATE TABLE admin.menus (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    href character varying(255),
    icon character varying(255),
    slug character varying(255) NOT NULL,
    parent_id integer,
    menu_id integer NOT NULL,
    sequence integer NOT NULL,
    new integer
);
    DROP TABLE admin.menus;
       admin            postgres    false    6            �            1259    16482    menus_id_seq    SEQUENCE     t   CREATE SEQUENCE admin.menus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE admin.menus_id_seq;
       admin          postgres    false    6    221            �           0    0    menus_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE admin.menus_id_seq OWNED BY admin.menus.id;
          admin          postgres    false    222            �            1259    16484 
   migrations    TABLE     �   CREATE TABLE admin.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE admin.migrations;
       admin            postgres    false    6            �            1259    16487    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE admin.migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 '   DROP SEQUENCE admin.migrations_id_seq;
       admin          postgres    false    6    223            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE admin.migrations_id_seq OWNED BY admin.migrations.id;
          admin          postgres    false    224            �            1259    16489    model_has_permissions    TABLE     �   CREATE TABLE admin.model_has_permissions (
    permission_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL
);
 (   DROP TABLE admin.model_has_permissions;
       admin            postgres    false    6            �            1259    16492    model_has_roles    TABLE     �   CREATE TABLE admin.model_has_roles (
    role_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL
);
 "   DROP TABLE admin.model_has_roles;
       admin            postgres    false    6            �            1259    16495    password_resets    TABLE     �   CREATE TABLE admin.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 "   DROP TABLE admin.password_resets;
       admin            postgres    false    6            �            1259    16501    permissions    TABLE     �   CREATE TABLE admin.permissions (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE admin.permissions;
       admin            postgres    false    6            �            1259    16507    permissions_id_seq    SEQUENCE     z   CREATE SEQUENCE admin.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE admin.permissions_id_seq;
       admin          postgres    false    6    228            �           0    0    permissions_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE admin.permissions_id_seq OWNED BY admin.permissions.id;
          admin          postgres    false    229            �            1259    16509    posts    TABLE     �   CREATE TABLE admin.posts (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    user_id integer
);
    DROP TABLE admin.posts;
       admin            postgres    false    6            �            1259    16512    posts_id_seq    SEQUENCE     |   CREATE SEQUENCE admin.posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 "   DROP SEQUENCE admin.posts_id_seq;
       admin          postgres    false    230    6            �           0    0    posts_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE admin.posts_id_seq OWNED BY admin.posts.id;
          admin          postgres    false    231            �            1259    16514 	   reactions    TABLE     -  CREATE TABLE admin.reactions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    reactable_type character varying(255) NOT NULL,
    reactable_id bigint NOT NULL,
    type character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE admin.reactions;
       admin            postgres    false    6            �            1259    16520    reactions_id_seq    SEQUENCE     �   CREATE SEQUENCE admin.reactions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 &   DROP SEQUENCE admin.reactions_id_seq;
       admin          postgres    false    232    6            �           0    0    reactions_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE admin.reactions_id_seq OWNED BY admin.reactions.id;
          admin          postgres    false    233            �            1259    16522 
   rev_id_seq    SEQUENCE     r   CREATE SEQUENCE admin.rev_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE admin.rev_id_seq;
       admin          postgres    false    6            �            1259    16524    role_has_permissions    TABLE     l   CREATE TABLE admin.role_has_permissions (
    permission_id bigint NOT NULL,
    role_id bigint NOT NULL
);
 '   DROP TABLE admin.role_has_permissions;
       admin            postgres    false    6            �            1259    16527    role_hierarchy    TABLE     |   CREATE TABLE admin.role_hierarchy (
    id bigint NOT NULL,
    role_id integer NOT NULL,
    hierarchy integer NOT NULL
);
 !   DROP TABLE admin.role_hierarchy;
       admin            postgres    false    6            �            1259    16530    role_hierarchy_id_seq    SEQUENCE     }   CREATE SEQUENCE admin.role_hierarchy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE admin.role_hierarchy_id_seq;
       admin          postgres    false    236    6            �           0    0    role_hierarchy_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE admin.role_hierarchy_id_seq OWNED BY admin.role_hierarchy.id;
          admin          postgres    false    237            �            1259    16532    roles    TABLE     �   CREATE TABLE admin.roles (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE admin.roles;
       admin            postgres    false    6            �            1259    16538    roles_id_seq    SEQUENCE     t   CREATE SEQUENCE admin.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE admin.roles_id_seq;
       admin          postgres    false    238    6            �           0    0    roles_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE admin.roles_id_seq OWNED BY admin.roles.id;
          admin          postgres    false    239            �            1259    16540    status    TABLE     �   CREATE TABLE admin.status (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    class character varying(255) NOT NULL,
    type character varying(64)
);
    DROP TABLE admin.status;
       admin            postgres    false    6            �            1259    16546    status_id_seq    SEQUENCE     u   CREATE SEQUENCE admin.status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE admin.status_id_seq;
       admin          postgres    false    240    6            �           0    0    status_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE admin.status_id_seq OWNED BY admin.status.id;
          admin          postgres    false    241            �            1259    16548    users    TABLE     �  CREATE TABLE admin.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    menuroles character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    mobile character varying(255),
    license bigint,
    doc character varying(255),
    profile_image character varying,
    master boolean DEFAULT false,
    country character varying(255),
    img bytea,
    img1 bytea[]
);
    DROP TABLE admin.users;
       admin            postgres    false    6            �            1259    16557    users_account_id_seq    SEQUENCE     |   CREATE SEQUENCE admin.users_account_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE admin.users_account_id_seq;
       admin          postgres    false    6            �            1259    16559    users_account    TABLE     �   CREATE TABLE admin.users_account (
    id bigint DEFAULT nextval('admin.users_account_id_seq'::regclass) NOT NULL,
    user_id bigint NOT NULL,
    account_id bigint NOT NULL
);
     DROP TABLE admin.users_account;
       admin            postgres    false    243    6            �            1259    16572    users_id_seq    SEQUENCE     t   CREATE SEQUENCE admin.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE admin.users_id_seq;
       admin          postgres    false    6    242            �           0    0    users_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE admin.users_id_seq OWNED BY admin.users.id;
          admin          postgres    false    245            <           1259    56803    activity_log    TABLE     >  CREATE TABLE conta_teste_100002.activity_log (
    id bigint NOT NULL,
    activity_id character varying(255),
    type character varying(255),
    user_id character varying(255),
    manipulations json,
    request json,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);
 ,   DROP TABLE conta_teste_100002.activity_log;
       conta_teste_100002            postgres    false    10            ;           1259    56801    activity_log_id_seq    SEQUENCE     �   CREATE SEQUENCE conta_teste_100002.activity_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE conta_teste_100002.activity_log_id_seq;
       conta_teste_100002          postgres    false    316    10            �           0    0    activity_log_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE conta_teste_100002.activity_log_id_seq OWNED BY conta_teste_100002.activity_log.id;
          conta_teste_100002          postgres    false    315                        1259    56579    balances    TABLE     �   CREATE TABLE conta_teste_100002.balances (
    id bigint NOT NULL,
    account_id integer NOT NULL,
    amount double precision DEFAULT '0'::double precision NOT NULL
);
 (   DROP TABLE conta_teste_100002.balances;
       conta_teste_100002            postgres    false    10                       1259    56577    balances_id_seq    SEQUENCE     �   CREATE SEQUENCE conta_teste_100002.balances_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE conta_teste_100002.balances_id_seq;
       conta_teste_100002          postgres    false    10    288            �           0    0    balances_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE conta_teste_100002.balances_id_seq OWNED BY conta_teste_100002.balances.id;
          conta_teste_100002          postgres    false    287            6           1259    56768    config_email    TABLE     r  CREATE TABLE conta_teste_100002.config_email (
    id bigint NOT NULL,
    email_from character varying(255),
    smtp_host character varying(255),
    smtp_port integer,
    smtp_user character varying(255),
    smtp_pass character varying(255),
    smtp_security integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);
 ,   DROP TABLE conta_teste_100002.config_email;
       conta_teste_100002            postgres    false    10            5           1259    56766    config_email_id_seq    SEQUENCE     �   CREATE SEQUENCE conta_teste_100002.config_email_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE conta_teste_100002.config_email_id_seq;
       conta_teste_100002          postgres    false    10    310            �           0    0    config_email_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE conta_teste_100002.config_email_id_seq OWNED BY conta_teste_100002.config_email.id;
          conta_teste_100002          postgres    false    309            "           1259    56588    config_meta    TABLE     H  CREATE TABLE conta_teste_100002.config_meta (
    id bigint NOT NULL,
    ano character varying(255),
    fin_dizimo_mes integer DEFAULT 0,
    fin_oferta_mes integer DEFAULT 0,
    fin_despesa_mes integer DEFAULT 0,
    fin_acao_mes integer DEFAULT 0,
    fin_dizimo_ano integer DEFAULT 0,
    fin_oferta_ano integer DEFAULT 0,
    fin_despesa_ano integer DEFAULT 0,
    fin_acao_ano integer DEFAULT 0,
    visitante_mes integer DEFAULT 0,
    batismo_mes integer DEFAULT 0,
    conversao_mes integer DEFAULT 0,
    pessoa_mes integer DEFAULT 0,
    visualizacao_mes integer DEFAULT 0,
    comentario_mes integer DEFAULT 0,
    grupo_ativo_mes integer DEFAULT 0,
    publicacao_mes integer DEFAULT 0,
    visitante_ano integer DEFAULT 0,
    batismo_ano integer DEFAULT 0,
    conversao_ano integer DEFAULT 0,
    pessoa_ano integer DEFAULT 0,
    visualizacao_ano integer DEFAULT 0,
    comentario_ano integer DEFAULT 0,
    grupo_ativo_ano integer DEFAULT 0,
    publicacao_ano integer DEFAULT 0,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);
 +   DROP TABLE conta_teste_100002.config_meta;
       conta_teste_100002            postgres    false    10            !           1259    56586    config_meta_id_seq    SEQUENCE     �   CREATE SEQUENCE conta_teste_100002.config_meta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE conta_teste_100002.config_meta_id_seq;
       conta_teste_100002          postgres    false    290    10            �           0    0    config_meta_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE conta_teste_100002.config_meta_id_seq OWNED BY conta_teste_100002.config_meta.id;
          conta_teste_100002          postgres    false    289            8           1259    56779    config_social    TABLE     ?  CREATE TABLE conta_teste_100002.config_social (
    id bigint NOT NULL,
    facebook_link character varying(255),
    twitter_link character varying(255),
    google_link character varying(255),
    youtube_link character varying(255),
    linkedin_link character varying(255),
    instagram_link character varying(255),
    vk_link character varying(255),
    site_link character varying(255),
    whatsapp_link character varying(255),
    telegram_link character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);
 -   DROP TABLE conta_teste_100002.config_social;
       conta_teste_100002            postgres    false    10            7           1259    56777    config_social_id_seq    SEQUENCE     �   CREATE SEQUENCE conta_teste_100002.config_social_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE conta_teste_100002.config_social_id_seq;
       conta_teste_100002          postgres    false    10    312            �           0    0    config_social_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE conta_teste_100002.config_social_id_seq OWNED BY conta_teste_100002.config_social.id;
          conta_teste_100002          postgres    false    311            $           1259    56620    config_system    TABLE     �  CREATE TABLE conta_teste_100002.config_system (
    id bigint NOT NULL,
    logo character varying(255),
    favicon character varying(255),
    name character varying(255) NOT NULL,
    timezone character varying(255) NOT NULL,
    default_language integer,
    currency character varying(255),
    obg_last_name boolean DEFAULT true,
    obg_email boolean DEFAULT false,
    obg_mobile boolean DEFAULT false,
    obg_birth boolean DEFAULT false,
    obg_sex boolean DEFAULT false,
    obg_city boolean DEFAULT false,
    obg_state boolean DEFAULT false,
    obg_note boolean DEFAULT false,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);
 -   DROP TABLE conta_teste_100002.config_system;
       conta_teste_100002            postgres    false    10            #           1259    56618    config_system_id_seq    SEQUENCE     �   CREATE SEQUENCE conta_teste_100002.config_system_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE conta_teste_100002.config_system_id_seq;
       conta_teste_100002          postgres    false    292    10            �           0    0    config_system_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE conta_teste_100002.config_system_id_seq OWNED BY conta_teste_100002.config_system.id;
          conta_teste_100002          postgres    false    291            &           1259    56639    email_template    TABLE       CREATE TABLE conta_teste_100002.email_template (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    content text NOT NULL,
    name character varying(255) NOT NULL,
    subject character varying(255) NOT NULL
);
 .   DROP TABLE conta_teste_100002.email_template;
       conta_teste_100002            postgres    false    10            %           1259    56637    email_template_id_seq    SEQUENCE     �   CREATE SEQUENCE conta_teste_100002.email_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE conta_teste_100002.email_template_id_seq;
       conta_teste_100002          postgres    false    10    294            �           0    0    email_template_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE conta_teste_100002.email_template_id_seq OWNED BY conta_teste_100002.email_template.id;
          conta_teste_100002          postgres    false    293            (           1259    56650    events    TABLE     �  CREATE TABLE conta_teste_100002.events (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    description character varying(255),
    img character varying(255),
    start date NOT NULL,
    "end" date NOT NULL,
    user_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    deleted_at timestamp(0) without time zone
);
 &   DROP TABLE conta_teste_100002.events;
       conta_teste_100002            postgres    false    10            '           1259    56648    events_id_seq    SEQUENCE     �   CREATE SEQUENCE conta_teste_100002.events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE conta_teste_100002.events_id_seq;
       conta_teste_100002          postgres    false    296    10            �           0    0    events_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE conta_teste_100002.events_id_seq OWNED BY conta_teste_100002.events.id;
          conta_teste_100002          postgres    false    295            2           1259    56710    groups    TABLE     �  CREATE TABLE conta_teste_100002.groups (
    id bigint NOT NULL,
    name_group character varying(255) NOT NULL,
    type character varying(64),
    count smallint DEFAULT '0'::smallint,
    user_id bigint,
    status_id bigint,
    note character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    deleted_at timestamp(0) without time zone
);
 &   DROP TABLE conta_teste_100002.groups;
       conta_teste_100002            postgres    false    10            1           1259    56708    groups_id_seq    SEQUENCE     �   CREATE SEQUENCE conta_teste_100002.groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE conta_teste_100002.groups_id_seq;
       conta_teste_100002          postgres    false    306    10            �           0    0    groups_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE conta_teste_100002.groups_id_seq OWNED BY conta_teste_100002.groups.id;
          conta_teste_100002          postgres    false    305            *           1259    56661 	   historics    TABLE     :  CREATE TABLE conta_teste_100002.historics (
    id integer NOT NULL,
    user_id integer NOT NULL,
    type character varying(255) NOT NULL,
    tipo character varying(255),
    pag character varying(255),
    amount double precision NOT NULL,
    total_before double precision NOT NULL,
    total_after double precision NOT NULL,
    user_id_transaction integer,
    date date NOT NULL,
    observacao character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    deleted_at timestamp(0) without time zone
);
 )   DROP TABLE conta_teste_100002.historics;
       conta_teste_100002            postgres    false    10            )           1259    56659    historics_id_seq    SEQUENCE     �   CREATE SEQUENCE conta_teste_100002.historics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE conta_teste_100002.historics_id_seq;
       conta_teste_100002          postgres    false    10    298            �           0    0    historics_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE conta_teste_100002.historics_id_seq OWNED BY conta_teste_100002.historics.id;
          conta_teste_100002          postgres    false    297            ,           1259    56672    message    TABLE     �  CREATE TABLE conta_teste_100002.message (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    note_type character varying(255) NOT NULL,
    applies_to_date date NOT NULL,
    users_id integer NOT NULL,
    status_id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    deleted_at timestamp(0) without time zone
);
 '   DROP TABLE conta_teste_100002.message;
       conta_teste_100002            postgres    false    10            +           1259    56670    message_id_seq    SEQUENCE     �   CREATE SEQUENCE conta_teste_100002.message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE conta_teste_100002.message_id_seq;
       conta_teste_100002          postgres    false    300    10            �           0    0    message_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE conta_teste_100002.message_id_seq OWNED BY conta_teste_100002.message.id;
          conta_teste_100002          postgres    false    299            0           1259    56691    people    TABLE     �  CREATE TABLE conta_teste_100002.people (
    id bigint NOT NULL,
    user_id integer,
    name character varying(255) NOT NULL,
    email character varying(255),
    mobile character varying(255),
    birth_at date,
    sex character varying(1),
    address character varying(255),
    cep character varying(10),
    country character varying(255),
    state character varying(255),
    city character varying(255),
    role character varying(255) DEFAULT '1'::character varying,
    note character varying(255),
    status_id integer NOT NULL,
    is_verify boolean DEFAULT true,
    is_visitor boolean DEFAULT false,
    is_transferred boolean DEFAULT false,
    is_responsible boolean DEFAULT false,
    is_conversion boolean DEFAULT false,
    is_baptism boolean DEFAULT false,
    is_newvisitor boolean DEFAULT false,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    deleted_at timestamp(0) without time zone
);
 &   DROP TABLE conta_teste_100002.people;
       conta_teste_100002            postgres    false    10            .           1259    56683    people_group    TABLE     �   CREATE TABLE conta_teste_100002.people_group (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    group_id bigint NOT NULL,
    responsavel bigint,
    registered timestamp(0) without time zone
);
 ,   DROP TABLE conta_teste_100002.people_group;
       conta_teste_100002            postgres    false    10            -           1259    56681    people_group_id_seq    SEQUENCE     �   CREATE SEQUENCE conta_teste_100002.people_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE conta_teste_100002.people_group_id_seq;
       conta_teste_100002          postgres    false    10    302            �           0    0    people_group_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE conta_teste_100002.people_group_id_seq OWNED BY conta_teste_100002.people_group.id;
          conta_teste_100002          postgres    false    301            /           1259    56689    people_id_seq    SEQUENCE     �   CREATE SEQUENCE conta_teste_100002.people_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE conta_teste_100002.people_id_seq;
       conta_teste_100002          postgres    false    10    304            �           0    0    people_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE conta_teste_100002.people_id_seq OWNED BY conta_teste_100002.people.id;
          conta_teste_100002          postgres    false    303            :           1259    56790    people_precadastro    TABLE     �  CREATE TABLE conta_teste_100002.people_precadastro (
    id bigint NOT NULL,
    user_id integer,
    name character varying(255) NOT NULL,
    email character varying(255),
    mobile character varying(255),
    birth_at date,
    sex character varying(1),
    address character varying(255),
    cep character varying(10),
    country character varying(255),
    state character varying(255),
    city character varying(255),
    role character varying(255) DEFAULT '1'::character varying,
    note character varying(255),
    status_id integer NOT NULL,
    is_verify boolean DEFAULT true,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);
 2   DROP TABLE conta_teste_100002.people_precadastro;
       conta_teste_100002            postgres    false    10            9           1259    56788    people_precadastro_id_seq    SEQUENCE     �   CREATE SEQUENCE conta_teste_100002.people_precadastro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE conta_teste_100002.people_precadastro_id_seq;
       conta_teste_100002          postgres    false    314    10            �           0    0    people_precadastro_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE conta_teste_100002.people_precadastro_id_seq OWNED BY conta_teste_100002.people_precadastro.id;
          conta_teste_100002          postgres    false    313            4           1259    56722    roles    TABLE     �  CREATE TABLE conta_teste_100002.roles (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    add_people boolean DEFAULT false,
    edit_people boolean DEFAULT false,
    view_people boolean DEFAULT false,
    delete_people boolean DEFAULT false,
    edit_precadastro boolean DEFAULT false,
    view_precadastro boolean DEFAULT false,
    add_group boolean DEFAULT false,
    add_group_people boolean DEFAULT false,
    edit_group boolean DEFAULT false,
    view_group boolean DEFAULT false,
    delete_group boolean DEFAULT false,
    delete_group_group boolean DEFAULT false,
    add_message boolean DEFAULT false,
    edit_message boolean DEFAULT false,
    view_message boolean DEFAULT false,
    delete_message boolean DEFAULT false,
    add_entrada_financial boolean DEFAULT false,
    add_retirada_financial boolean DEFAULT false,
    edit_financial boolean DEFAULT false,
    view_financial boolean DEFAULT false,
    delete_financial boolean DEFAULT false,
    add_calendar boolean DEFAULT false,
    edit_calendar boolean DEFAULT false,
    view_calendar boolean DEFAULT false,
    delete_calendar boolean DEFAULT false,
    home_financeiro boolean DEFAULT true,
    home_financeiro_valores boolean DEFAULT true,
    home_grupo boolean DEFAULT true,
    home_social boolean DEFAULT true,
    view_periodo boolean DEFAULT false,
    view_dash boolean DEFAULT false,
    view_detail boolean DEFAULT false,
    view_resumo_financeiro boolean DEFAULT false,
    settings_general boolean DEFAULT false,
    settings_email boolean DEFAULT false,
    settings_meta boolean DEFAULT false,
    settings_social boolean DEFAULT false,
    settings_roles boolean DEFAULT false,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);
 %   DROP TABLE conta_teste_100002.roles;
       conta_teste_100002            postgres    false    10            3           1259    56720    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE conta_teste_100002.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE conta_teste_100002.roles_id_seq;
       conta_teste_100002          postgres    false    10    308            �           0    0    roles_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE conta_teste_100002.roles_id_seq OWNED BY conta_teste_100002.roles.id;
          conta_teste_100002          postgres    false    307                       1259    33836    activity_log    TABLE     ;  CREATE TABLE deskapps_100001.activity_log (
    id bigint NOT NULL,
    activity_id character varying(255),
    type character varying(255),
    user_id character varying(255),
    manipulations json,
    request json,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);
 )   DROP TABLE deskapps_100001.activity_log;
       deskapps_100001            postgres    false    9                       1259    33834    activity_log_id_seq    SEQUENCE     �   CREATE SEQUENCE deskapps_100001.activity_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE deskapps_100001.activity_log_id_seq;
       deskapps_100001          postgres    false    9    282            �           0    0    activity_log_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE deskapps_100001.activity_log_id_seq OWNED BY deskapps_100001.activity_log.id;
          deskapps_100001          postgres    false    281            �            1259    33615    balances    TABLE     �   CREATE TABLE deskapps_100001.balances (
    id bigint NOT NULL,
    account_id integer NOT NULL,
    amount double precision DEFAULT '0'::double precision NOT NULL
);
 %   DROP TABLE deskapps_100001.balances;
       deskapps_100001            postgres    false    9            �            1259    33613    balances_id_seq    SEQUENCE     �   CREATE SEQUENCE deskapps_100001.balances_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE deskapps_100001.balances_id_seq;
       deskapps_100001          postgres    false    254    9            �           0    0    balances_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE deskapps_100001.balances_id_seq OWNED BY deskapps_100001.balances.id;
          deskapps_100001          postgres    false    253                       1259    33801    config_email    TABLE     o  CREATE TABLE deskapps_100001.config_email (
    id bigint NOT NULL,
    email_from character varying(255),
    smtp_host character varying(255),
    smtp_port integer,
    smtp_user character varying(255),
    smtp_pass character varying(255),
    smtp_security integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);
 )   DROP TABLE deskapps_100001.config_email;
       deskapps_100001            postgres    false    9                       1259    33799    config_email_id_seq    SEQUENCE     �   CREATE SEQUENCE deskapps_100001.config_email_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE deskapps_100001.config_email_id_seq;
       deskapps_100001          postgres    false    276    9            �           0    0    config_email_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE deskapps_100001.config_email_id_seq OWNED BY deskapps_100001.config_email.id;
          deskapps_100001          postgres    false    275                        1259    33624    config_meta    TABLE     E  CREATE TABLE deskapps_100001.config_meta (
    id bigint NOT NULL,
    ano character varying(255),
    fin_dizimo_mes integer DEFAULT 0,
    fin_oferta_mes integer DEFAULT 0,
    fin_despesa_mes integer DEFAULT 0,
    fin_acao_mes integer DEFAULT 0,
    fin_dizimo_ano integer DEFAULT 0,
    fin_oferta_ano integer DEFAULT 0,
    fin_despesa_ano integer DEFAULT 0,
    fin_acao_ano integer DEFAULT 0,
    visitante_mes integer DEFAULT 0,
    batismo_mes integer DEFAULT 0,
    conversao_mes integer DEFAULT 0,
    pessoa_mes integer DEFAULT 0,
    visualizacao_mes integer DEFAULT 0,
    comentario_mes integer DEFAULT 0,
    grupo_ativo_mes integer DEFAULT 0,
    publicacao_mes integer DEFAULT 0,
    visitante_ano integer DEFAULT 0,
    batismo_ano integer DEFAULT 0,
    conversao_ano integer DEFAULT 0,
    pessoa_ano integer DEFAULT 0,
    visualizacao_ano integer DEFAULT 0,
    comentario_ano integer DEFAULT 0,
    grupo_ativo_ano integer DEFAULT 0,
    publicacao_ano integer DEFAULT 0,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);
 (   DROP TABLE deskapps_100001.config_meta;
       deskapps_100001            postgres    false    9            �            1259    33622    config_meta_id_seq    SEQUENCE     �   CREATE SEQUENCE deskapps_100001.config_meta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE deskapps_100001.config_meta_id_seq;
       deskapps_100001          postgres    false    9    256            �           0    0    config_meta_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE deskapps_100001.config_meta_id_seq OWNED BY deskapps_100001.config_meta.id;
          deskapps_100001          postgres    false    255                       1259    33812    config_social    TABLE     <  CREATE TABLE deskapps_100001.config_social (
    id bigint NOT NULL,
    facebook_link character varying(255),
    twitter_link character varying(255),
    google_link character varying(255),
    youtube_link character varying(255),
    linkedin_link character varying(255),
    instagram_link character varying(255),
    vk_link character varying(255),
    site_link character varying(255),
    whatsapp_link character varying(255),
    telegram_link character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);
 *   DROP TABLE deskapps_100001.config_social;
       deskapps_100001            postgres    false    9                       1259    33810    config_social_id_seq    SEQUENCE     �   CREATE SEQUENCE deskapps_100001.config_social_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE deskapps_100001.config_social_id_seq;
       deskapps_100001          postgres    false    9    278            �           0    0    config_social_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE deskapps_100001.config_social_id_seq OWNED BY deskapps_100001.config_social.id;
          deskapps_100001          postgres    false    277                       1259    33656    config_system    TABLE     �  CREATE TABLE deskapps_100001.config_system (
    id bigint NOT NULL,
    logo character varying(255),
    favicon character varying(255),
    name character varying(255) NOT NULL,
    timezone character varying(255) NOT NULL,
    default_language integer,
    currency character varying(255),
    obg_last_name boolean DEFAULT true,
    obg_email boolean DEFAULT true,
    obg_mobile boolean DEFAULT true,
    obg_birth boolean DEFAULT true,
    obg_sex boolean DEFAULT true,
    obg_city boolean DEFAULT true,
    obg_state boolean DEFAULT true,
    obg_note boolean DEFAULT true,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);
 *   DROP TABLE deskapps_100001.config_system;
       deskapps_100001            postgres    false    9                       1259    33654    config_system_id_seq    SEQUENCE     �   CREATE SEQUENCE deskapps_100001.config_system_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE deskapps_100001.config_system_id_seq;
       deskapps_100001          postgres    false    9    258            �           0    0    config_system_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE deskapps_100001.config_system_id_seq OWNED BY deskapps_100001.config_system.id;
          deskapps_100001          postgres    false    257                       1259    33675    email_template    TABLE       CREATE TABLE deskapps_100001.email_template (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    content text NOT NULL,
    name character varying(255) NOT NULL,
    subject character varying(255) NOT NULL
);
 +   DROP TABLE deskapps_100001.email_template;
       deskapps_100001            postgres    false    9                       1259    33673    email_template_id_seq    SEQUENCE     �   CREATE SEQUENCE deskapps_100001.email_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE deskapps_100001.email_template_id_seq;
       deskapps_100001          postgres    false    9    260            �           0    0    email_template_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE deskapps_100001.email_template_id_seq OWNED BY deskapps_100001.email_template.id;
          deskapps_100001          postgres    false    259                       1259    33686    events    TABLE     �  CREATE TABLE deskapps_100001.events (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    description character varying(255),
    img character varying(255),
    start date NOT NULL,
    "end" date NOT NULL,
    user_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    deleted_at timestamp(0) without time zone
);
 #   DROP TABLE deskapps_100001.events;
       deskapps_100001            postgres    false    9                       1259    33684    events_id_seq    SEQUENCE        CREATE SEQUENCE deskapps_100001.events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE deskapps_100001.events_id_seq;
       deskapps_100001          postgres    false    262    9            �           0    0    events_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE deskapps_100001.events_id_seq OWNED BY deskapps_100001.events.id;
          deskapps_100001          postgres    false    261                       1259    33746    groups    TABLE     �  CREATE TABLE deskapps_100001.groups (
    id bigint NOT NULL,
    name_group character varying(255) NOT NULL,
    type character varying(64),
    count smallint DEFAULT '0'::smallint,
    user_id bigint,
    status_id bigint,
    note character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    deleted_at timestamp(0) without time zone
);
 #   DROP TABLE deskapps_100001.groups;
       deskapps_100001            postgres    false    9                       1259    33744    groups_id_seq    SEQUENCE        CREATE SEQUENCE deskapps_100001.groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE deskapps_100001.groups_id_seq;
       deskapps_100001          postgres    false    272    9            �           0    0    groups_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE deskapps_100001.groups_id_seq OWNED BY deskapps_100001.groups.id;
          deskapps_100001          postgres    false    271                       1259    33697 	   historics    TABLE     7  CREATE TABLE deskapps_100001.historics (
    id integer NOT NULL,
    user_id integer NOT NULL,
    type character varying(255) NOT NULL,
    tipo character varying(255),
    pag character varying(255),
    amount double precision NOT NULL,
    total_before double precision NOT NULL,
    total_after double precision NOT NULL,
    user_id_transaction integer,
    date date NOT NULL,
    observacao character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    deleted_at timestamp(0) without time zone
);
 &   DROP TABLE deskapps_100001.historics;
       deskapps_100001            postgres    false    9                       1259    33695    historics_id_seq    SEQUENCE     �   CREATE SEQUENCE deskapps_100001.historics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE deskapps_100001.historics_id_seq;
       deskapps_100001          postgres    false    9    264            �           0    0    historics_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE deskapps_100001.historics_id_seq OWNED BY deskapps_100001.historics.id;
          deskapps_100001          postgres    false    263            
           1259    33708    message    TABLE     �  CREATE TABLE deskapps_100001.message (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    note_type character varying(255) NOT NULL,
    applies_to_date date NOT NULL,
    users_id integer NOT NULL,
    status_id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    deleted_at timestamp(0) without time zone
);
 $   DROP TABLE deskapps_100001.message;
       deskapps_100001            postgres    false    9            	           1259    33706    message_id_seq    SEQUENCE     �   CREATE SEQUENCE deskapps_100001.message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE deskapps_100001.message_id_seq;
       deskapps_100001          postgres    false    9    266            �           0    0    message_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE deskapps_100001.message_id_seq OWNED BY deskapps_100001.message.id;
          deskapps_100001          postgres    false    265                       1259    33727    people    TABLE     �  CREATE TABLE deskapps_100001.people (
    id bigint NOT NULL,
    user_id integer,
    name character varying(255) NOT NULL,
    email character varying(255),
    mobile character varying(255),
    birth_at date,
    sex character varying(1),
    address character varying(255),
    cep character varying(10),
    country character varying(255),
    state character varying(255),
    city character varying(255),
    role character varying(255) DEFAULT '1'::character varying,
    note character varying(255),
    status_id integer NOT NULL,
    is_verify boolean DEFAULT true,
    is_visitor boolean DEFAULT false,
    is_transferred boolean DEFAULT false,
    is_responsible boolean DEFAULT false,
    is_conversion boolean DEFAULT false,
    is_baptism boolean DEFAULT false,
    is_newvisitor boolean DEFAULT false,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    deleted_at timestamp(0) without time zone
);
 #   DROP TABLE deskapps_100001.people;
       deskapps_100001            postgres    false    9                       1259    33719    people_group    TABLE     �   CREATE TABLE deskapps_100001.people_group (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    group_id bigint NOT NULL,
    responsavel bigint,
    registered timestamp(0) without time zone
);
 )   DROP TABLE deskapps_100001.people_group;
       deskapps_100001            postgres    false    9                       1259    33717    people_group_id_seq    SEQUENCE     �   CREATE SEQUENCE deskapps_100001.people_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE deskapps_100001.people_group_id_seq;
       deskapps_100001          postgres    false    9    268            �           0    0    people_group_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE deskapps_100001.people_group_id_seq OWNED BY deskapps_100001.people_group.id;
          deskapps_100001          postgres    false    267                       1259    33725    people_id_seq    SEQUENCE        CREATE SEQUENCE deskapps_100001.people_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE deskapps_100001.people_id_seq;
       deskapps_100001          postgres    false    270    9            �           0    0    people_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE deskapps_100001.people_id_seq OWNED BY deskapps_100001.people.id;
          deskapps_100001          postgres    false    269                       1259    33823    people_precadastro    TABLE     �  CREATE TABLE deskapps_100001.people_precadastro (
    id bigint NOT NULL,
    user_id integer,
    name character varying(255) NOT NULL,
    email character varying(255),
    mobile character varying(255),
    birth_at date,
    sex character varying(1),
    address character varying(255),
    cep character varying(10),
    country character varying(255),
    state character varying(255),
    city character varying(255),
    role character varying(255) DEFAULT '1'::character varying,
    note character varying(255),
    status_id integer NOT NULL,
    is_verify boolean DEFAULT true,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);
 /   DROP TABLE deskapps_100001.people_precadastro;
       deskapps_100001            postgres    false    9                       1259    33821    people_precadastro_id_seq    SEQUENCE     �   CREATE SEQUENCE deskapps_100001.people_precadastro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE deskapps_100001.people_precadastro_id_seq;
       deskapps_100001          postgres    false    9    280            �           0    0    people_precadastro_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE deskapps_100001.people_precadastro_id_seq OWNED BY deskapps_100001.people_precadastro.id;
          deskapps_100001          postgres    false    279                       1259    33758    roles    TABLE     �  CREATE TABLE deskapps_100001.roles (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    add_people boolean DEFAULT true,
    edit_people boolean DEFAULT true,
    view_people boolean DEFAULT true,
    delete_people boolean DEFAULT true,
    add_group boolean DEFAULT true,
    add_group_people boolean DEFAULT true,
    edit_group boolean DEFAULT true,
    view_group boolean DEFAULT true,
    delete_group boolean DEFAULT true,
    add_message boolean DEFAULT true,
    edit_message boolean DEFAULT true,
    view_message boolean DEFAULT true,
    delete_message boolean DEFAULT true,
    add_entrada_financial boolean DEFAULT true,
    add_retirada_financial boolean DEFAULT true,
    edit_financial boolean DEFAULT true,
    view_financial boolean DEFAULT true,
    delete_financial boolean DEFAULT true,
    add_calendar boolean DEFAULT true,
    edit_calendar boolean DEFAULT true,
    view_calendar boolean DEFAULT true,
    delete_calendar boolean DEFAULT true,
    home_financeiro boolean DEFAULT true,
    home_financeiro_valores boolean DEFAULT true,
    home_grupo boolean DEFAULT true,
    home_social boolean DEFAULT true,
    view_periodo boolean DEFAULT true,
    view_dash boolean DEFAULT true,
    view_detail boolean DEFAULT true,
    view_resumo_financeiro boolean DEFAULT true,
    settings_general boolean DEFAULT true,
    settings_email boolean DEFAULT true,
    settings_meta boolean DEFAULT true,
    settings_social boolean DEFAULT true,
    settings_roles boolean DEFAULT true,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    delete_group_people boolean,
    view_precadastro boolean,
    edit_precadastro boolean
);
 "   DROP TABLE deskapps_100001.roles;
       deskapps_100001            postgres    false    9                       1259    33756    roles_id_seq    SEQUENCE     ~   CREATE SEQUENCE deskapps_100001.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE deskapps_100001.roles_id_seq;
       deskapps_100001          postgres    false    274    9            �           0    0    roles_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE deskapps_100001.roles_id_seq OWNED BY deskapps_100001.roles.id;
          deskapps_100001          postgres    false    273            �            1259    17166    accounts_id_seq    SEQUENCE     x   CREATE SEQUENCE public.accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.accounts_id_seq;
       public          postgres    false            >           1259    56814    activity_status    TABLE     q   CREATE TABLE public.activity_status (
    id bigint NOT NULL,
    description character varying(255) NOT NULL
);
 #   DROP TABLE public.activity_status;
       public            postgres    false            =           1259    56812    activity_status_id_seq    SEQUENCE        CREATE SEQUENCE public.activity_status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.activity_status_id_seq;
       public          postgres    false    318            �           0    0    activity_status_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.activity_status_id_seq OWNED BY public.activity_status.id;
          public          postgres    false    317                       1259    56567    media    TABLE     �  CREATE TABLE public.media (
    id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL,
    collection_name character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    file_name character varying(255) NOT NULL,
    mime_type character varying(255),
    disk character varying(255) NOT NULL,
    conversions_disk character varying(255) NOT NULL,
    size bigint NOT NULL,
    uuid bigint NOT NULL,
    manipulations json NOT NULL,
    custom_properties json NOT NULL,
    responsive_images json NOT NULL,
    order_column integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.media;
       public            postgres    false                       1259    56565    media_id_seq    SEQUENCE     u   CREATE SEQUENCE public.media_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.media_id_seq;
       public          postgres    false    286            �           0    0    media_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.media_id_seq OWNED BY public.media.id;
          public          postgres    false    285                       1259    56559 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public            postgres    false                       1259    56557    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    284            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    283            �            1259    17181 
   rev_id_seq    SEQUENCE     s   CREATE SEQUENCE public.rev_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.rev_id_seq;
       public          postgres    false            �            1259    17183    user_likes_id_seq    SEQUENCE     z   CREATE SEQUENCE public.user_likes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.user_likes_id_seq;
       public          postgres    false            �            1259    17185    users_account_id_seq    SEQUENCE     }   CREATE SEQUENCE public.users_account_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.users_account_id_seq;
       public          postgres    false            {           2604    32795    activity_log id    DEFAULT     p   ALTER TABLE ONLY admin.activity_log ALTER COLUMN id SET DEFAULT nextval('admin.activity_log_id_seq'::regclass);
 =   ALTER TABLE admin.activity_log ALTER COLUMN id DROP DEFAULT;
       admin          postgres    false    252    251    252            e           2604    17301    email_template id    DEFAULT     t   ALTER TABLE ONLY admin.email_template ALTER COLUMN id SET DEFAULT nextval('admin.email_template_id_seq'::regclass);
 ?   ALTER TABLE admin.email_template ALTER COLUMN id DROP DEFAULT;
       admin          postgres    false    202    201            f           2604    17302 
   example id    DEFAULT     f   ALTER TABLE ONLY admin.example ALTER COLUMN id SET DEFAULT nextval('admin.example_id_seq'::regclass);
 8   ALTER TABLE admin.example ALTER COLUMN id DROP DEFAULT;
       admin          postgres    false    204    203            h           2604    17303    failed_jobs id    DEFAULT     n   ALTER TABLE ONLY admin.failed_jobs ALTER COLUMN id SET DEFAULT nextval('admin.failed_jobs_id_seq'::regclass);
 <   ALTER TABLE admin.failed_jobs ALTER COLUMN id DROP DEFAULT;
       admin          postgres    false    206    205            i           2604    17304 	   folder id    DEFAULT     d   ALTER TABLE ONLY admin.folder ALTER COLUMN id SET DEFAULT nextval('admin.folder_id_seq'::regclass);
 7   ALTER TABLE admin.folder ALTER COLUMN id DROP DEFAULT;
       admin          postgres    false    208    207            j           2604    17305    form id    DEFAULT     `   ALTER TABLE ONLY admin.form ALTER COLUMN id SET DEFAULT nextval('admin.form_id_seq'::regclass);
 5   ALTER TABLE admin.form ALTER COLUMN id DROP DEFAULT;
       admin          postgres    false    212    209            k           2604    17306    form_field id    DEFAULT     l   ALTER TABLE ONLY admin.form_field ALTER COLUMN id SET DEFAULT nextval('admin.form_field_id_seq'::regclass);
 ;   ALTER TABLE admin.form_field ALTER COLUMN id DROP DEFAULT;
       admin          postgres    false    211    210            m           2604    17307    media id    DEFAULT     b   ALTER TABLE ONLY admin.media ALTER COLUMN id SET DEFAULT nextval('admin.media_id_seq'::regclass);
 6   ALTER TABLE admin.media ALTER COLUMN id DROP DEFAULT;
       admin          postgres    false    216    215            n           2604    17308    menu_role id    DEFAULT     j   ALTER TABLE ONLY admin.menu_role ALTER COLUMN id SET DEFAULT nextval('admin.menu_role_id_seq'::regclass);
 :   ALTER TABLE admin.menu_role ALTER COLUMN id DROP DEFAULT;
       admin          postgres    false    218    217            o           2604    17309    menulist id    DEFAULT     h   ALTER TABLE ONLY admin.menulist ALTER COLUMN id SET DEFAULT nextval('admin.menulist_id_seq'::regclass);
 9   ALTER TABLE admin.menulist ALTER COLUMN id DROP DEFAULT;
       admin          postgres    false    220    219            p           2604    17310    menus id    DEFAULT     b   ALTER TABLE ONLY admin.menus ALTER COLUMN id SET DEFAULT nextval('admin.menus_id_seq'::regclass);
 6   ALTER TABLE admin.menus ALTER COLUMN id DROP DEFAULT;
       admin          postgres    false    222    221            q           2604    17311    migrations id    DEFAULT     l   ALTER TABLE ONLY admin.migrations ALTER COLUMN id SET DEFAULT nextval('admin.migrations_id_seq'::regclass);
 ;   ALTER TABLE admin.migrations ALTER COLUMN id DROP DEFAULT;
       admin          postgres    false    224    223            r           2604    17312    permissions id    DEFAULT     n   ALTER TABLE ONLY admin.permissions ALTER COLUMN id SET DEFAULT nextval('admin.permissions_id_seq'::regclass);
 <   ALTER TABLE admin.permissions ALTER COLUMN id DROP DEFAULT;
       admin          postgres    false    229    228            s           2604    17313    posts id    DEFAULT     b   ALTER TABLE ONLY admin.posts ALTER COLUMN id SET DEFAULT nextval('admin.posts_id_seq'::regclass);
 6   ALTER TABLE admin.posts ALTER COLUMN id DROP DEFAULT;
       admin          postgres    false    231    230            t           2604    17314    reactions id    DEFAULT     j   ALTER TABLE ONLY admin.reactions ALTER COLUMN id SET DEFAULT nextval('admin.reactions_id_seq'::regclass);
 :   ALTER TABLE admin.reactions ALTER COLUMN id DROP DEFAULT;
       admin          postgres    false    233    232            u           2604    17315    role_hierarchy id    DEFAULT     t   ALTER TABLE ONLY admin.role_hierarchy ALTER COLUMN id SET DEFAULT nextval('admin.role_hierarchy_id_seq'::regclass);
 ?   ALTER TABLE admin.role_hierarchy ALTER COLUMN id DROP DEFAULT;
       admin          postgres    false    237    236            v           2604    17316    roles id    DEFAULT     b   ALTER TABLE ONLY admin.roles ALTER COLUMN id SET DEFAULT nextval('admin.roles_id_seq'::regclass);
 6   ALTER TABLE admin.roles ALTER COLUMN id DROP DEFAULT;
       admin          postgres    false    239    238            w           2604    17317 	   status id    DEFAULT     d   ALTER TABLE ONLY admin.status ALTER COLUMN id SET DEFAULT nextval('admin.status_id_seq'::regclass);
 7   ALTER TABLE admin.status ALTER COLUMN id DROP DEFAULT;
       admin          postgres    false    241    240            y           2604    17318    users id    DEFAULT     b   ALTER TABLE ONLY admin.users ALTER COLUMN id SET DEFAULT nextval('admin.users_id_seq'::regclass);
 6   ALTER TABLE admin.users ALTER COLUMN id DROP DEFAULT;
       admin          postgres    false    245    242            <           2604    56806    activity_log id    DEFAULT     �   ALTER TABLE ONLY conta_teste_100002.activity_log ALTER COLUMN id SET DEFAULT nextval('conta_teste_100002.activity_log_id_seq'::regclass);
 J   ALTER TABLE conta_teste_100002.activity_log ALTER COLUMN id DROP DEFAULT;
       conta_teste_100002          postgres    false    316    315    316            �           2604    56582    balances id    DEFAULT     �   ALTER TABLE ONLY conta_teste_100002.balances ALTER COLUMN id SET DEFAULT nextval('conta_teste_100002.balances_id_seq'::regclass);
 F   ALTER TABLE conta_teste_100002.balances ALTER COLUMN id DROP DEFAULT;
       conta_teste_100002          postgres    false    287    288    288            7           2604    56771    config_email id    DEFAULT     �   ALTER TABLE ONLY conta_teste_100002.config_email ALTER COLUMN id SET DEFAULT nextval('conta_teste_100002.config_email_id_seq'::regclass);
 J   ALTER TABLE conta_teste_100002.config_email ALTER COLUMN id DROP DEFAULT;
       conta_teste_100002          postgres    false    310    309    310            �           2604    56591    config_meta id    DEFAULT     �   ALTER TABLE ONLY conta_teste_100002.config_meta ALTER COLUMN id SET DEFAULT nextval('conta_teste_100002.config_meta_id_seq'::regclass);
 I   ALTER TABLE conta_teste_100002.config_meta ALTER COLUMN id DROP DEFAULT;
       conta_teste_100002          postgres    false    289    290    290            8           2604    56782    config_social id    DEFAULT     �   ALTER TABLE ONLY conta_teste_100002.config_social ALTER COLUMN id SET DEFAULT nextval('conta_teste_100002.config_social_id_seq'::regclass);
 K   ALTER TABLE conta_teste_100002.config_social ALTER COLUMN id DROP DEFAULT;
       conta_teste_100002          postgres    false    312    311    312            �           2604    56623    config_system id    DEFAULT     �   ALTER TABLE ONLY conta_teste_100002.config_system ALTER COLUMN id SET DEFAULT nextval('conta_teste_100002.config_system_id_seq'::regclass);
 K   ALTER TABLE conta_teste_100002.config_system ALTER COLUMN id DROP DEFAULT;
       conta_teste_100002          postgres    false    292    291    292                        2604    56642    email_template id    DEFAULT     �   ALTER TABLE ONLY conta_teste_100002.email_template ALTER COLUMN id SET DEFAULT nextval('conta_teste_100002.email_template_id_seq'::regclass);
 L   ALTER TABLE conta_teste_100002.email_template ALTER COLUMN id DROP DEFAULT;
       conta_teste_100002          postgres    false    294    293    294                       2604    56653 	   events id    DEFAULT     ~   ALTER TABLE ONLY conta_teste_100002.events ALTER COLUMN id SET DEFAULT nextval('conta_teste_100002.events_id_seq'::regclass);
 D   ALTER TABLE conta_teste_100002.events ALTER COLUMN id DROP DEFAULT;
       conta_teste_100002          postgres    false    295    296    296                       2604    56713 	   groups id    DEFAULT     ~   ALTER TABLE ONLY conta_teste_100002.groups ALTER COLUMN id SET DEFAULT nextval('conta_teste_100002.groups_id_seq'::regclass);
 D   ALTER TABLE conta_teste_100002.groups ALTER COLUMN id DROP DEFAULT;
       conta_teste_100002          postgres    false    306    305    306                       2604    56664    historics id    DEFAULT     �   ALTER TABLE ONLY conta_teste_100002.historics ALTER COLUMN id SET DEFAULT nextval('conta_teste_100002.historics_id_seq'::regclass);
 G   ALTER TABLE conta_teste_100002.historics ALTER COLUMN id DROP DEFAULT;
       conta_teste_100002          postgres    false    297    298    298                       2604    56675 
   message id    DEFAULT     �   ALTER TABLE ONLY conta_teste_100002.message ALTER COLUMN id SET DEFAULT nextval('conta_teste_100002.message_id_seq'::regclass);
 E   ALTER TABLE conta_teste_100002.message ALTER COLUMN id DROP DEFAULT;
       conta_teste_100002          postgres    false    300    299    300                       2604    56694 	   people id    DEFAULT     ~   ALTER TABLE ONLY conta_teste_100002.people ALTER COLUMN id SET DEFAULT nextval('conta_teste_100002.people_id_seq'::regclass);
 D   ALTER TABLE conta_teste_100002.people ALTER COLUMN id DROP DEFAULT;
       conta_teste_100002          postgres    false    303    304    304                       2604    56686    people_group id    DEFAULT     �   ALTER TABLE ONLY conta_teste_100002.people_group ALTER COLUMN id SET DEFAULT nextval('conta_teste_100002.people_group_id_seq'::regclass);
 J   ALTER TABLE conta_teste_100002.people_group ALTER COLUMN id DROP DEFAULT;
       conta_teste_100002          postgres    false    302    301    302            9           2604    56793    people_precadastro id    DEFAULT     �   ALTER TABLE ONLY conta_teste_100002.people_precadastro ALTER COLUMN id SET DEFAULT nextval('conta_teste_100002.people_precadastro_id_seq'::regclass);
 P   ALTER TABLE conta_teste_100002.people_precadastro ALTER COLUMN id DROP DEFAULT;
       conta_teste_100002          postgres    false    314    313    314                       2604    56725    roles id    DEFAULT     |   ALTER TABLE ONLY conta_teste_100002.roles ALTER COLUMN id SET DEFAULT nextval('conta_teste_100002.roles_id_seq'::regclass);
 C   ALTER TABLE conta_teste_100002.roles ALTER COLUMN id DROP DEFAULT;
       conta_teste_100002          postgres    false    308    307    308            �           2604    33839    activity_log id    DEFAULT     �   ALTER TABLE ONLY deskapps_100001.activity_log ALTER COLUMN id SET DEFAULT nextval('deskapps_100001.activity_log_id_seq'::regclass);
 G   ALTER TABLE deskapps_100001.activity_log ALTER COLUMN id DROP DEFAULT;
       deskapps_100001          postgres    false    281    282    282            |           2604    33618    balances id    DEFAULT     |   ALTER TABLE ONLY deskapps_100001.balances ALTER COLUMN id SET DEFAULT nextval('deskapps_100001.balances_id_seq'::regclass);
 C   ALTER TABLE deskapps_100001.balances ALTER COLUMN id DROP DEFAULT;
       deskapps_100001          postgres    false    253    254    254            �           2604    33804    config_email id    DEFAULT     �   ALTER TABLE ONLY deskapps_100001.config_email ALTER COLUMN id SET DEFAULT nextval('deskapps_100001.config_email_id_seq'::regclass);
 G   ALTER TABLE deskapps_100001.config_email ALTER COLUMN id DROP DEFAULT;
       deskapps_100001          postgres    false    276    275    276            ~           2604    33627    config_meta id    DEFAULT     �   ALTER TABLE ONLY deskapps_100001.config_meta ALTER COLUMN id SET DEFAULT nextval('deskapps_100001.config_meta_id_seq'::regclass);
 F   ALTER TABLE deskapps_100001.config_meta ALTER COLUMN id DROP DEFAULT;
       deskapps_100001          postgres    false    255    256    256            �           2604    33815    config_social id    DEFAULT     �   ALTER TABLE ONLY deskapps_100001.config_social ALTER COLUMN id SET DEFAULT nextval('deskapps_100001.config_social_id_seq'::regclass);
 H   ALTER TABLE deskapps_100001.config_social ALTER COLUMN id DROP DEFAULT;
       deskapps_100001          postgres    false    277    278    278            �           2604    33659    config_system id    DEFAULT     �   ALTER TABLE ONLY deskapps_100001.config_system ALTER COLUMN id SET DEFAULT nextval('deskapps_100001.config_system_id_seq'::regclass);
 H   ALTER TABLE deskapps_100001.config_system ALTER COLUMN id DROP DEFAULT;
       deskapps_100001          postgres    false    257    258    258            �           2604    33678    email_template id    DEFAULT     �   ALTER TABLE ONLY deskapps_100001.email_template ALTER COLUMN id SET DEFAULT nextval('deskapps_100001.email_template_id_seq'::regclass);
 I   ALTER TABLE deskapps_100001.email_template ALTER COLUMN id DROP DEFAULT;
       deskapps_100001          postgres    false    259    260    260            �           2604    33689 	   events id    DEFAULT     x   ALTER TABLE ONLY deskapps_100001.events ALTER COLUMN id SET DEFAULT nextval('deskapps_100001.events_id_seq'::regclass);
 A   ALTER TABLE deskapps_100001.events ALTER COLUMN id DROP DEFAULT;
       deskapps_100001          postgres    false    262    261    262            �           2604    33749 	   groups id    DEFAULT     x   ALTER TABLE ONLY deskapps_100001.groups ALTER COLUMN id SET DEFAULT nextval('deskapps_100001.groups_id_seq'::regclass);
 A   ALTER TABLE deskapps_100001.groups ALTER COLUMN id DROP DEFAULT;
       deskapps_100001          postgres    false    272    271    272            �           2604    33700    historics id    DEFAULT     ~   ALTER TABLE ONLY deskapps_100001.historics ALTER COLUMN id SET DEFAULT nextval('deskapps_100001.historics_id_seq'::regclass);
 D   ALTER TABLE deskapps_100001.historics ALTER COLUMN id DROP DEFAULT;
       deskapps_100001          postgres    false    264    263    264            �           2604    33711 
   message id    DEFAULT     z   ALTER TABLE ONLY deskapps_100001.message ALTER COLUMN id SET DEFAULT nextval('deskapps_100001.message_id_seq'::regclass);
 B   ALTER TABLE deskapps_100001.message ALTER COLUMN id DROP DEFAULT;
       deskapps_100001          postgres    false    265    266    266            �           2604    33730 	   people id    DEFAULT     x   ALTER TABLE ONLY deskapps_100001.people ALTER COLUMN id SET DEFAULT nextval('deskapps_100001.people_id_seq'::regclass);
 A   ALTER TABLE deskapps_100001.people ALTER COLUMN id DROP DEFAULT;
       deskapps_100001          postgres    false    270    269    270            �           2604    33722    people_group id    DEFAULT     �   ALTER TABLE ONLY deskapps_100001.people_group ALTER COLUMN id SET DEFAULT nextval('deskapps_100001.people_group_id_seq'::regclass);
 G   ALTER TABLE deskapps_100001.people_group ALTER COLUMN id DROP DEFAULT;
       deskapps_100001          postgres    false    268    267    268            �           2604    33826    people_precadastro id    DEFAULT     �   ALTER TABLE ONLY deskapps_100001.people_precadastro ALTER COLUMN id SET DEFAULT nextval('deskapps_100001.people_precadastro_id_seq'::regclass);
 M   ALTER TABLE deskapps_100001.people_precadastro ALTER COLUMN id DROP DEFAULT;
       deskapps_100001          postgres    false    280    279    280            �           2604    33761    roles id    DEFAULT     v   ALTER TABLE ONLY deskapps_100001.roles ALTER COLUMN id SET DEFAULT nextval('deskapps_100001.roles_id_seq'::regclass);
 @   ALTER TABLE deskapps_100001.roles ALTER COLUMN id DROP DEFAULT;
       deskapps_100001          postgres    false    274    273    274            =           2604    56817    activity_status id    DEFAULT     x   ALTER TABLE ONLY public.activity_status ALTER COLUMN id SET DEFAULT nextval('public.activity_status_id_seq'::regclass);
 A   ALTER TABLE public.activity_status ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    317    318    318            �           2604    56570    media id    DEFAULT     d   ALTER TABLE ONLY public.media ALTER COLUMN id SET DEFAULT nextval('public.media_id_seq'::regclass);
 7   ALTER TABLE public.media ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    286    285    286            �           2604    56562    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    283    284    284            ?          0    16396    accounts 
   TABLE DATA           �   COPY admin.accounts (id, name_company, integrador, email, mobile, address1, address2, created_at, tenant, status_id, deleted_at, doc, cep, state, city, country, updated_at, expired) FROM stdin;
    admin          postgres    false    200   k7      s          0    32786    activity_log 
   TABLE DATA           h   COPY admin.activity_log (id, activity_id, user_id, type, tenant, manipulations, created_at) FROM stdin;
    admin          postgres    false    252   *8      q          0    24833    activity_status 
   TABLE DATA           ?   COPY admin.activity_status (id, description, type) FROM stdin;
    admin          postgres    false    250   �C      @          0    16403    email_template 
   TABLE DATA           [   COPY admin.email_template (id, created_at, updated_at, content, name, subject) FROM stdin;
    admin          postgres    false    201   #D      B          0    16411    example 
   TABLE DATA           Z   COPY admin.example (id, created_at, updated_at, name, description, status_id) FROM stdin;
    admin          postgres    false    203   �G      D          0    16419    failed_jobs 
   TABLE DATA           Z   COPY admin.failed_jobs (id, connection, queue, payload, exception, failed_at) FROM stdin;
    admin          postgres    false    205   ~L      F          0    16428    folder 
   TABLE DATA           V   COPY admin.folder (id, created_at, updated_at, name, folder_id, resource) FROM stdin;
    admin          postgres    false    207   �L      H          0    16433    form 
   TABLE DATA           p   COPY admin.form (id, created_at, updated_at, name, table_name, read, edit, add, delete, pagination) FROM stdin;
    admin          postgres    false    209   �L      I          0    16439 
   form_field 
   TABLE DATA           �   COPY admin.form_field (id, created_at, updated_at, name, type, browse, read, edit, add, relation_table, relation_column, form_id, column_name) FROM stdin;
    admin          postgres    false    210   |M      M          0    16451    likes 
   TABLE DATA           k   COPY admin.likes (id, user_id, likeable_id, likeable_type, created_at, updated_at, account_id) FROM stdin;
    admin          postgres    false    214   %P      N          0    16458    media 
   TABLE DATA           �   COPY admin.media (id, model_type, model_id, collection_name, name, file_name, mime_type, disk, conversions_disk, size, uuid, manipulations, custom_properties, responsive_images, order_column, created_at, updated_at) FROM stdin;
    admin          postgres    false    215   �P      P          0    16466 	   menu_role 
   TABLE DATA           ;   COPY admin.menu_role (id, role_name, menus_id) FROM stdin;
    admin          postgres    false    217   �P      R          0    16471    menulist 
   TABLE DATA           +   COPY admin.menulist (id, name) FROM stdin;
    admin          postgres    false    219   �Q      T          0    16476    menus 
   TABLE DATA           ]   COPY admin.menus (id, name, href, icon, slug, parent_id, menu_id, sequence, new) FROM stdin;
    admin          postgres    false    221   �Q      V          0    16484 
   migrations 
   TABLE DATA           9   COPY admin.migrations (id, migration, batch) FROM stdin;
    admin          postgres    false    223   �T      X          0    16489    model_has_permissions 
   TABLE DATA           S   COPY admin.model_has_permissions (permission_id, model_type, model_id) FROM stdin;
    admin          postgres    false    225   �X      Y          0    16492    model_has_roles 
   TABLE DATA           G   COPY admin.model_has_roles (role_id, model_type, model_id) FROM stdin;
    admin          postgres    false    226   �X      Z          0    16495    password_resets 
   TABLE DATA           B   COPY admin.password_resets (email, token, created_at) FROM stdin;
    admin          postgres    false    227   HY      [          0    16501    permissions 
   TABLE DATA           R   COPY admin.permissions (id, name, guard_name, created_at, updated_at) FROM stdin;
    admin          postgres    false    228   eY      ]          0    16509    posts 
   TABLE DATA           J   COPY admin.posts (id, title, created_at, updated_at, user_id) FROM stdin;
    admin          postgres    false    230   2Z      _          0    16514 	   reactions 
   TABLE DATA           k   COPY admin.reactions (id, user_id, reactable_type, reactable_id, type, created_at, updated_at) FROM stdin;
    admin          postgres    false    232   �Z      b          0    16524    role_has_permissions 
   TABLE DATA           E   COPY admin.role_has_permissions (permission_id, role_id) FROM stdin;
    admin          postgres    false    235   �Z      c          0    16527    role_hierarchy 
   TABLE DATA           ?   COPY admin.role_hierarchy (id, role_id, hierarchy) FROM stdin;
    admin          postgres    false    236   D[      e          0    16532    roles 
   TABLE DATA           L   COPY admin.roles (id, name, guard_name, created_at, updated_at) FROM stdin;
    admin          postgres    false    238   y[      g          0    16540    status 
   TABLE DATA           6   COPY admin.status (id, name, class, type) FROM stdin;
    admin          postgres    false    240   �[      i          0    16548    users 
   TABLE DATA           �   COPY admin.users (id, name, email, email_verified_at, password, menuroles, remember_token, created_at, updated_at, deleted_at, mobile, license, doc, profile_image, master, country, img, img1) FROM stdin;
    admin          postgres    false    242   t]      k          0    16559    users_account 
   TABLE DATA           ?   COPY admin.users_account (id, user_id, account_id) FROM stdin;
    admin          postgres    false    244   �_      �          0    56803    activity_log 
   TABLE DATA           �   COPY conta_teste_100002.activity_log (id, activity_id, type, user_id, manipulations, request, created_at, updated_at) FROM stdin;
    conta_teste_100002          postgres    false    316   �_      �          0    56579    balances 
   TABLE DATA           F   COPY conta_teste_100002.balances (id, account_id, amount) FROM stdin;
    conta_teste_100002          postgres    false    288   $`      �          0    56768    config_email 
   TABLE DATA           �   COPY conta_teste_100002.config_email (id, email_from, smtp_host, smtp_port, smtp_user, smtp_pass, smtp_security, created_at, updated_at) FROM stdin;
    conta_teste_100002          postgres    false    310   A`      �          0    56588    config_meta 
   TABLE DATA           �  COPY conta_teste_100002.config_meta (id, ano, fin_dizimo_mes, fin_oferta_mes, fin_despesa_mes, fin_acao_mes, fin_dizimo_ano, fin_oferta_ano, fin_despesa_ano, fin_acao_ano, visitante_mes, batismo_mes, conversao_mes, pessoa_mes, visualizacao_mes, comentario_mes, grupo_ativo_mes, publicacao_mes, visitante_ano, batismo_ano, conversao_ano, pessoa_ano, visualizacao_ano, comentario_ano, grupo_ativo_ano, publicacao_ano, created_at, updated_at) FROM stdin;
    conta_teste_100002          postgres    false    290   v`      �          0    56779    config_social 
   TABLE DATA           �   COPY conta_teste_100002.config_social (id, facebook_link, twitter_link, google_link, youtube_link, linkedin_link, instagram_link, vk_link, site_link, whatsapp_link, telegram_link, created_at, updated_at) FROM stdin;
    conta_teste_100002          postgres    false    312   �`      �          0    56620    config_system 
   TABLE DATA           �   COPY conta_teste_100002.config_system (id, logo, favicon, name, timezone, default_language, currency, obg_last_name, obg_email, obg_mobile, obg_birth, obg_sex, obg_city, obg_state, obg_note, created_at, updated_at) FROM stdin;
    conta_teste_100002          postgres    false    292   �`      �          0    56639    email_template 
   TABLE DATA           h   COPY conta_teste_100002.email_template (id, created_at, updated_at, content, name, subject) FROM stdin;
    conta_teste_100002          postgres    false    294   a      �          0    56650    events 
   TABLE DATA           �   COPY conta_teste_100002.events (id, title, description, img, start, "end", user_id, created_at, updated_at, deleted_at) FROM stdin;
    conta_teste_100002          postgres    false    296   6a      �          0    56710    groups 
   TABLE DATA           �   COPY conta_teste_100002.groups (id, name_group, type, count, user_id, status_id, note, created_at, updated_at, deleted_at) FROM stdin;
    conta_teste_100002          postgres    false    306   Sa      �          0    56661 	   historics 
   TABLE DATA           �   COPY conta_teste_100002.historics (id, user_id, type, tipo, pag, amount, total_before, total_after, user_id_transaction, date, observacao, created_at, updated_at, deleted_at) FROM stdin;
    conta_teste_100002          postgres    false    298   pa      �          0    56672    message 
   TABLE DATA           �   COPY conta_teste_100002.message (id, title, content, note_type, applies_to_date, users_id, status_id, created_at, updated_at, deleted_at) FROM stdin;
    conta_teste_100002          postgres    false    300   �a      �          0    56691    people 
   TABLE DATA             COPY conta_teste_100002.people (id, user_id, name, email, mobile, birth_at, sex, address, cep, country, state, city, role, note, status_id, is_verify, is_visitor, is_transferred, is_responsible, is_conversion, is_baptism, is_newvisitor, created_at, updated_at, deleted_at) FROM stdin;
    conta_teste_100002          postgres    false    304   �a      �          0    56683    people_group 
   TABLE DATA           b   COPY conta_teste_100002.people_group (id, user_id, group_id, responsavel, registered) FROM stdin;
    conta_teste_100002          postgres    false    302   �a      �          0    56790    people_precadastro 
   TABLE DATA           �   COPY conta_teste_100002.people_precadastro (id, user_id, name, email, mobile, birth_at, sex, address, cep, country, state, city, role, note, status_id, is_verify, created_at, updated_at) FROM stdin;
    conta_teste_100002          postgres    false    314   b      �          0    56722    roles 
   TABLE DATA           �  COPY conta_teste_100002.roles (id, name, add_people, edit_people, view_people, delete_people, edit_precadastro, view_precadastro, add_group, add_group_people, edit_group, view_group, delete_group, delete_group_group, add_message, edit_message, view_message, delete_message, add_entrada_financial, add_retirada_financial, edit_financial, view_financial, delete_financial, add_calendar, edit_calendar, view_calendar, delete_calendar, home_financeiro, home_financeiro_valores, home_grupo, home_social, view_periodo, view_dash, view_detail, view_resumo_financeiro, settings_general, settings_email, settings_meta, settings_social, settings_roles, created_at, updated_at) FROM stdin;
    conta_teste_100002          postgres    false    308   /b      �          0    33836    activity_log 
   TABLE DATA              COPY deskapps_100001.activity_log (id, activity_id, type, user_id, manipulations, request, created_at, updated_at) FROM stdin;
    deskapps_100001          postgres    false    282   mb      u          0    33615    balances 
   TABLE DATA           C   COPY deskapps_100001.balances (id, account_id, amount) FROM stdin;
    deskapps_100001          postgres    false    254   qn      �          0    33801    config_email 
   TABLE DATA           �   COPY deskapps_100001.config_email (id, email_from, smtp_host, smtp_port, smtp_user, smtp_pass, smtp_security, created_at, updated_at) FROM stdin;
    deskapps_100001          postgres    false    276   �n      w          0    33624    config_meta 
   TABLE DATA           �  COPY deskapps_100001.config_meta (id, ano, fin_dizimo_mes, fin_oferta_mes, fin_despesa_mes, fin_acao_mes, fin_dizimo_ano, fin_oferta_ano, fin_despesa_ano, fin_acao_ano, visitante_mes, batismo_mes, conversao_mes, pessoa_mes, visualizacao_mes, comentario_mes, grupo_ativo_mes, publicacao_mes, visitante_ano, batismo_ano, conversao_ano, pessoa_ano, visualizacao_ano, comentario_ano, grupo_ativo_ano, publicacao_ano, created_at, updated_at) FROM stdin;
    deskapps_100001          postgres    false    256   �n      �          0    33812    config_social 
   TABLE DATA           �   COPY deskapps_100001.config_social (id, facebook_link, twitter_link, google_link, youtube_link, linkedin_link, instagram_link, vk_link, site_link, whatsapp_link, telegram_link, created_at, updated_at) FROM stdin;
    deskapps_100001          postgres    false    278   To      y          0    33656    config_system 
   TABLE DATA           �   COPY deskapps_100001.config_system (id, logo, favicon, name, timezone, default_language, currency, obg_last_name, obg_email, obg_mobile, obg_birth, obg_sex, obg_city, obg_state, obg_note, created_at, updated_at) FROM stdin;
    deskapps_100001          postgres    false    258   �o      {          0    33675    email_template 
   TABLE DATA           e   COPY deskapps_100001.email_template (id, created_at, updated_at, content, name, subject) FROM stdin;
    deskapps_100001          postgres    false    260   kp      }          0    33686    events 
   TABLE DATA           �   COPY deskapps_100001.events (id, title, description, img, start, "end", user_id, created_at, updated_at, deleted_at) FROM stdin;
    deskapps_100001          postgres    false    262   �p      �          0    33746    groups 
   TABLE DATA           �   COPY deskapps_100001.groups (id, name_group, type, count, user_id, status_id, note, created_at, updated_at, deleted_at) FROM stdin;
    deskapps_100001          postgres    false    272   �p                0    33697 	   historics 
   TABLE DATA           �   COPY deskapps_100001.historics (id, user_id, type, tipo, pag, amount, total_before, total_after, user_id_transaction, date, observacao, created_at, updated_at, deleted_at) FROM stdin;
    deskapps_100001          postgres    false    264   r      �          0    33708    message 
   TABLE DATA           �   COPY deskapps_100001.message (id, title, content, note_type, applies_to_date, users_id, status_id, created_at, updated_at, deleted_at) FROM stdin;
    deskapps_100001          postgres    false    266   �x      �          0    33727    people 
   TABLE DATA             COPY deskapps_100001.people (id, user_id, name, email, mobile, birth_at, sex, address, cep, country, state, city, role, note, status_id, is_verify, is_visitor, is_transferred, is_responsible, is_conversion, is_baptism, is_newvisitor, created_at, updated_at, deleted_at) FROM stdin;
    deskapps_100001          postgres    false    270   Cy      �          0    33719    people_group 
   TABLE DATA           _   COPY deskapps_100001.people_group (id, user_id, group_id, responsavel, registered) FROM stdin;
    deskapps_100001          postgres    false    268   �~      �          0    33823    people_precadastro 
   TABLE DATA           �   COPY deskapps_100001.people_precadastro (id, user_id, name, email, mobile, birth_at, sex, address, cep, country, state, city, role, note, status_id, is_verify, created_at, updated_at) FROM stdin;
    deskapps_100001          postgres    false    280   �      �          0    33758    roles 
   TABLE DATA           �  COPY deskapps_100001.roles (id, name, add_people, edit_people, view_people, delete_people, add_group, add_group_people, edit_group, view_group, delete_group, add_message, edit_message, view_message, delete_message, add_entrada_financial, add_retirada_financial, edit_financial, view_financial, delete_financial, add_calendar, edit_calendar, view_calendar, delete_calendar, home_financeiro, home_financeiro_valores, home_grupo, home_social, view_periodo, view_dash, view_detail, view_resumo_financeiro, settings_general, settings_email, settings_meta, settings_social, settings_roles, created_at, updated_at, delete_group_people, view_precadastro, edit_precadastro) FROM stdin;
    deskapps_100001          postgres    false    274   ��      �          0    56814    activity_status 
   TABLE DATA           :   COPY public.activity_status (id, description) FROM stdin;
    public          postgres    false    318    �      �          0    56567    media 
   TABLE DATA           �   COPY public.media (id, model_type, model_id, collection_name, name, file_name, mime_type, disk, conversions_disk, size, uuid, manipulations, custom_properties, responsive_images, order_column, created_at, updated_at) FROM stdin;
    public          postgres    false    286   �      �          0    56559 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    284   :�      �           0    0    accounts_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('admin.accounts_id_seq', 100002, true);
          admin          postgres    false    199            �           0    0    activity_log_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('admin.activity_log_id_seq', 164, true);
          admin          postgres    false    251            �           0    0    email_template_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('admin.email_template_id_seq', 3, true);
          admin          postgres    false    202            �           0    0    example_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('admin.example_id_seq', 28, true);
          admin          postgres    false    204            �           0    0    failed_jobs_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('admin.failed_jobs_id_seq', 3, false);
          admin          postgres    false    206            �           0    0    folder_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('admin.folder_id_seq', 7, true);
          admin          postgres    false    208            �           0    0    form_field_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('admin.form_field_id_seq', 47, true);
          admin          postgres    false    211            �           0    0    form_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('admin.form_id_seq', 6, true);
          admin          postgres    false    212            �           0    0    media_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('admin.media_id_seq', 3, false);
          admin          postgres    false    216            �           0    0    menu_role_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('admin.menu_role_id_seq', 353, true);
          admin          postgres    false    218            �           0    0    menulist_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('admin.menulist_id_seq', 4, true);
          admin          postgres    false    220            �           0    0    menus_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('admin.menus_id_seq', 86, true);
          admin          postgres    false    222            �           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('admin.migrations_id_seq', 105, true);
          admin          postgres    false    224            �           0    0    permissions_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('admin.permissions_id_seq', 22, true);
          admin          postgres    false    229            �           0    0    posts_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('admin.posts_id_seq', 4, false);
          admin          postgres    false    231                        0    0    reactions_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('admin.reactions_id_seq', 2, false);
          admin          postgres    false    233                       0    0 
   rev_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('admin.rev_id_seq', 2, false);
          admin          postgres    false    234                       0    0    role_hierarchy_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('admin.role_hierarchy_id_seq', 6, true);
          admin          postgres    false    237                       0    0    roles_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('admin.roles_id_seq', 6, true);
          admin          postgres    false    239                       0    0    status_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('admin.status_id_seq', 11, true);
          admin          postgres    false    241                       0    0    user_likes_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('admin.user_likes_id_seq', 33, true);
          admin          postgres    false    213                       0    0    users_account_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('admin.users_account_id_seq', 81, true);
          admin          postgres    false    243                       0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('admin.users_id_seq', 17, true);
          admin          postgres    false    245                       0    0    activity_log_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('conta_teste_100002.activity_log_id_seq', 1, true);
          conta_teste_100002          postgres    false    315            	           0    0    balances_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('conta_teste_100002.balances_id_seq', 1, false);
          conta_teste_100002          postgres    false    287            
           0    0    config_email_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('conta_teste_100002.config_email_id_seq', 1, true);
          conta_teste_100002          postgres    false    309                       0    0    config_meta_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('conta_teste_100002.config_meta_id_seq', 1, true);
          conta_teste_100002          postgres    false    289                       0    0    config_social_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('conta_teste_100002.config_social_id_seq', 1, true);
          conta_teste_100002          postgres    false    311                       0    0    config_system_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('conta_teste_100002.config_system_id_seq', 1, true);
          conta_teste_100002          postgres    false    291                       0    0    email_template_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('conta_teste_100002.email_template_id_seq', 1, false);
          conta_teste_100002          postgres    false    293                       0    0    events_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('conta_teste_100002.events_id_seq', 1, false);
          conta_teste_100002          postgres    false    295                       0    0    groups_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('conta_teste_100002.groups_id_seq', 1, false);
          conta_teste_100002          postgres    false    305                       0    0    historics_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('conta_teste_100002.historics_id_seq', 1, false);
          conta_teste_100002          postgres    false    297                       0    0    message_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('conta_teste_100002.message_id_seq', 1, false);
          conta_teste_100002          postgres    false    299                       0    0    people_group_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('conta_teste_100002.people_group_id_seq', 1, false);
          conta_teste_100002          postgres    false    301                       0    0    people_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('conta_teste_100002.people_id_seq', 1, true);
          conta_teste_100002          postgres    false    303                       0    0    people_precadastro_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('conta_teste_100002.people_precadastro_id_seq', 1, false);
          conta_teste_100002          postgres    false    313                       0    0    roles_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('conta_teste_100002.roles_id_seq', 2, true);
          conta_teste_100002          postgres    false    307                       0    0    activity_log_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('deskapps_100001.activity_log_id_seq', 61, true);
          deskapps_100001          postgres    false    281                       0    0    balances_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('deskapps_100001.balances_id_seq', 1, false);
          deskapps_100001          postgres    false    253                       0    0    config_email_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('deskapps_100001.config_email_id_seq', 1, false);
          deskapps_100001          postgres    false    275                       0    0    config_meta_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('deskapps_100001.config_meta_id_seq', 2, true);
          deskapps_100001          postgres    false    255                       0    0    config_social_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('deskapps_100001.config_social_id_seq', 1, false);
          deskapps_100001          postgres    false    277                       0    0    config_system_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('deskapps_100001.config_system_id_seq', 1, false);
          deskapps_100001          postgres    false    257                       0    0    email_template_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('deskapps_100001.email_template_id_seq', 1, false);
          deskapps_100001          postgres    false    259                       0    0    events_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('deskapps_100001.events_id_seq', 3, true);
          deskapps_100001          postgres    false    261                       0    0    groups_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('deskapps_100001.groups_id_seq', 6, true);
          deskapps_100001          postgres    false    271                        0    0    historics_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('deskapps_100001.historics_id_seq', 64, true);
          deskapps_100001          postgres    false    263            !           0    0    message_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('deskapps_100001.message_id_seq', 1, true);
          deskapps_100001          postgres    false    265            "           0    0    people_group_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('deskapps_100001.people_group_id_seq', 7, true);
          deskapps_100001          postgres    false    267            #           0    0    people_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('deskapps_100001.people_id_seq', 126, true);
          deskapps_100001          postgres    false    269            $           0    0    people_precadastro_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('deskapps_100001.people_precadastro_id_seq', 1, true);
          deskapps_100001          postgres    false    279            %           0    0    roles_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('deskapps_100001.roles_id_seq', 1, false);
          deskapps_100001          postgres    false    273            &           0    0    accounts_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.accounts_id_seq', 100009, true);
          public          postgres    false    246            '           0    0    activity_status_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.activity_status_id_seq', 1, false);
          public          postgres    false    317            (           0    0    media_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.media_id_seq', 1, false);
          public          postgres    false    285            )           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 17, true);
          public          postgres    false    283            *           0    0 
   rev_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.rev_id_seq', 2, false);
          public          postgres    false    247            +           0    0    user_likes_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.user_likes_id_seq', 33, true);
          public          postgres    false    248            ,           0    0    users_account_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.users_account_id_seq', 12, true);
          public          postgres    false    249            |           2606    32794    activity_log activity_log_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY admin.activity_log
    ADD CONSTRAINT activity_log_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY admin.activity_log DROP CONSTRAINT activity_log_pkey;
       admin            postgres    false    252            ?           2606    17352    accounts companies_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY admin.accounts
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY admin.accounts DROP CONSTRAINT companies_pkey;
       admin            postgres    false    200            B           2606    17354 "   email_template email_template_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY admin.email_template
    ADD CONSTRAINT email_template_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY admin.email_template DROP CONSTRAINT email_template_pkey;
       admin            postgres    false    201            D           2606    17356    example example_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY admin.example
    ADD CONSTRAINT example_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY admin.example DROP CONSTRAINT example_pkey;
       admin            postgres    false    203            F           2606    17358    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY admin.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY admin.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       admin            postgres    false    205            H           2606    17360    folder folder_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY admin.folder
    ADD CONSTRAINT folder_pkey PRIMARY KEY (id);
 ;   ALTER TABLE ONLY admin.folder DROP CONSTRAINT folder_pkey;
       admin            postgres    false    207            L           2606    17362    form_field form_field_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY admin.form_field
    ADD CONSTRAINT form_field_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY admin.form_field DROP CONSTRAINT form_field_pkey;
       admin            postgres    false    210            J           2606    17364    form form_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY admin.form
    ADD CONSTRAINT form_pkey PRIMARY KEY (id);
 7   ALTER TABLE ONLY admin.form DROP CONSTRAINT form_pkey;
       admin            postgres    false    209            N           2606    17366    likes likes_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY admin.likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY (id);
 9   ALTER TABLE ONLY admin.likes DROP CONSTRAINT likes_pkey;
       admin            postgres    false    214            Q           2606    17368    media media_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY admin.media
    ADD CONSTRAINT media_pkey PRIMARY KEY (id);
 9   ALTER TABLE ONLY admin.media DROP CONSTRAINT media_pkey;
       admin            postgres    false    215            S           2606    17370    menu_role menu_role_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY admin.menu_role
    ADD CONSTRAINT menu_role_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY admin.menu_role DROP CONSTRAINT menu_role_pkey;
       admin            postgres    false    217            U           2606    17372    menulist menulist_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY admin.menulist
    ADD CONSTRAINT menulist_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY admin.menulist DROP CONSTRAINT menulist_pkey;
       admin            postgres    false    219            W           2606    17374    menus menus_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY admin.menus
    ADD CONSTRAINT menus_pkey PRIMARY KEY (id);
 9   ALTER TABLE ONLY admin.menus DROP CONSTRAINT menus_pkey;
       admin            postgres    false    221            Y           2606    17376    migrations migrations_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY admin.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY admin.migrations DROP CONSTRAINT migrations_pkey;
       admin            postgres    false    223            \           2606    17378 0   model_has_permissions model_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY admin.model_has_permissions
    ADD CONSTRAINT model_has_permissions_pkey PRIMARY KEY (permission_id, model_id, model_type);
 Y   ALTER TABLE ONLY admin.model_has_permissions DROP CONSTRAINT model_has_permissions_pkey;
       admin            postgres    false    225    225    225            _           2606    17380 $   model_has_roles model_has_roles_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY admin.model_has_roles
    ADD CONSTRAINT model_has_roles_pkey PRIMARY KEY (role_id, model_id, model_type);
 M   ALTER TABLE ONLY admin.model_has_roles DROP CONSTRAINT model_has_roles_pkey;
       admin            postgres    false    226    226    226            b           2606    17382    permissions permissions_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY admin.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY admin.permissions DROP CONSTRAINT permissions_pkey;
       admin            postgres    false    228            z           2606    24838     activity_status posts_copy1_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY admin.activity_status
    ADD CONSTRAINT posts_copy1_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY admin.activity_status DROP CONSTRAINT posts_copy1_pkey;
       admin            postgres    false    250            d           2606    17384    posts posts_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY admin.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 9   ALTER TABLE ONLY admin.posts DROP CONSTRAINT posts_pkey;
       admin            postgres    false    230            f           2606    17386    reactions react_user_unique 
   CONSTRAINT     v   ALTER TABLE ONLY admin.reactions
    ADD CONSTRAINT react_user_unique UNIQUE (reactable_type, reactable_id, user_id);
 D   ALTER TABLE ONLY admin.reactions DROP CONSTRAINT react_user_unique;
       admin            postgres    false    232    232    232            h           2606    17388    reactions reactions_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY admin.reactions
    ADD CONSTRAINT reactions_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY admin.reactions DROP CONSTRAINT reactions_pkey;
       admin            postgres    false    232            l           2606    17390 .   role_has_permissions role_has_permissions_pkey 
   CONSTRAINT        ALTER TABLE ONLY admin.role_has_permissions
    ADD CONSTRAINT role_has_permissions_pkey PRIMARY KEY (permission_id, role_id);
 W   ALTER TABLE ONLY admin.role_has_permissions DROP CONSTRAINT role_has_permissions_pkey;
       admin            postgres    false    235    235            n           2606    17392 "   role_hierarchy role_hierarchy_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY admin.role_hierarchy
    ADD CONSTRAINT role_hierarchy_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY admin.role_hierarchy DROP CONSTRAINT role_hierarchy_pkey;
       admin            postgres    false    236            p           2606    17394    roles roles_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY admin.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 9   ALTER TABLE ONLY admin.roles DROP CONSTRAINT roles_pkey;
       admin            postgres    false    238            x           2606    17396    users_account status_copy1_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY admin.users_account
    ADD CONSTRAINT status_copy1_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY admin.users_account DROP CONSTRAINT status_copy1_pkey;
       admin            postgres    false    244            r           2606    17399    status status_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY admin.status
    ADD CONSTRAINT status_pkey PRIMARY KEY (id);
 ;   ALTER TABLE ONLY admin.status DROP CONSTRAINT status_pkey;
       admin            postgres    false    240            t           2606    17404    users users_email_unique 
   CONSTRAINT     S   ALTER TABLE ONLY admin.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 A   ALTER TABLE ONLY admin.users DROP CONSTRAINT users_email_unique;
       admin            postgres    false    242            v           2606    17406    users users_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY admin.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 9   ALTER TABLE ONLY admin.users DROP CONSTRAINT users_pkey;
       admin            postgres    false    242            �           2606    56811    activity_log activity_log_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY conta_teste_100002.activity_log
    ADD CONSTRAINT activity_log_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY conta_teste_100002.activity_log DROP CONSTRAINT activity_log_pkey;
       conta_teste_100002            postgres    false    316            �           2606    56585    balances balances_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY conta_teste_100002.balances
    ADD CONSTRAINT balances_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY conta_teste_100002.balances DROP CONSTRAINT balances_pkey;
       conta_teste_100002            postgres    false    288            �           2606    56776    config_email config_email_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY conta_teste_100002.config_email
    ADD CONSTRAINT config_email_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY conta_teste_100002.config_email DROP CONSTRAINT config_email_pkey;
       conta_teste_100002            postgres    false    310            �           2606    56617    config_meta config_meta_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY conta_teste_100002.config_meta
    ADD CONSTRAINT config_meta_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY conta_teste_100002.config_meta DROP CONSTRAINT config_meta_pkey;
       conta_teste_100002            postgres    false    290            �           2606    56787     config_social config_social_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY conta_teste_100002.config_social
    ADD CONSTRAINT config_social_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY conta_teste_100002.config_social DROP CONSTRAINT config_social_pkey;
       conta_teste_100002            postgres    false    312            �           2606    56636     config_system config_system_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY conta_teste_100002.config_system
    ADD CONSTRAINT config_system_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY conta_teste_100002.config_system DROP CONSTRAINT config_system_pkey;
       conta_teste_100002            postgres    false    292            �           2606    56647 "   email_template email_template_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY conta_teste_100002.email_template
    ADD CONSTRAINT email_template_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY conta_teste_100002.email_template DROP CONSTRAINT email_template_pkey;
       conta_teste_100002            postgres    false    294            �           2606    56658    events events_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY conta_teste_100002.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY conta_teste_100002.events DROP CONSTRAINT events_pkey;
       conta_teste_100002            postgres    false    296            �           2606    56719    groups groups_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY conta_teste_100002.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY conta_teste_100002.groups DROP CONSTRAINT groups_pkey;
       conta_teste_100002            postgres    false    306            �           2606    56669    historics historics_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY conta_teste_100002.historics
    ADD CONSTRAINT historics_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY conta_teste_100002.historics DROP CONSTRAINT historics_pkey;
       conta_teste_100002            postgres    false    298            �           2606    56680    message message_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY conta_teste_100002.message
    ADD CONSTRAINT message_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY conta_teste_100002.message DROP CONSTRAINT message_pkey;
       conta_teste_100002            postgres    false    300            �           2606    56688    people_group people_group_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY conta_teste_100002.people_group
    ADD CONSTRAINT people_group_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY conta_teste_100002.people_group DROP CONSTRAINT people_group_pkey;
       conta_teste_100002            postgres    false    302            �           2606    56707    people people_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY conta_teste_100002.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY conta_teste_100002.people DROP CONSTRAINT people_pkey;
       conta_teste_100002            postgres    false    304            �           2606    56800 *   people_precadastro people_precadastro_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY conta_teste_100002.people_precadastro
    ADD CONSTRAINT people_precadastro_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY conta_teste_100002.people_precadastro DROP CONSTRAINT people_precadastro_pkey;
       conta_teste_100002            postgres    false    314            �           2606    56765    roles roles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY conta_teste_100002.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY conta_teste_100002.roles DROP CONSTRAINT roles_pkey;
       conta_teste_100002            postgres    false    308            �           2606    33844    activity_log activity_log_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY deskapps_100001.activity_log
    ADD CONSTRAINT activity_log_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY deskapps_100001.activity_log DROP CONSTRAINT activity_log_pkey;
       deskapps_100001            postgres    false    282            ~           2606    33621    balances balances_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY deskapps_100001.balances
    ADD CONSTRAINT balances_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY deskapps_100001.balances DROP CONSTRAINT balances_pkey;
       deskapps_100001            postgres    false    254            �           2606    33809    config_email config_email_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY deskapps_100001.config_email
    ADD CONSTRAINT config_email_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY deskapps_100001.config_email DROP CONSTRAINT config_email_pkey;
       deskapps_100001            postgres    false    276            �           2606    33653    config_meta config_meta_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY deskapps_100001.config_meta
    ADD CONSTRAINT config_meta_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY deskapps_100001.config_meta DROP CONSTRAINT config_meta_pkey;
       deskapps_100001            postgres    false    256            �           2606    33820     config_social config_social_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY deskapps_100001.config_social
    ADD CONSTRAINT config_social_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY deskapps_100001.config_social DROP CONSTRAINT config_social_pkey;
       deskapps_100001            postgres    false    278            �           2606    33672     config_system config_system_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY deskapps_100001.config_system
    ADD CONSTRAINT config_system_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY deskapps_100001.config_system DROP CONSTRAINT config_system_pkey;
       deskapps_100001            postgres    false    258            �           2606    33683 "   email_template email_template_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY deskapps_100001.email_template
    ADD CONSTRAINT email_template_pkey PRIMARY KEY (id);
 U   ALTER TABLE ONLY deskapps_100001.email_template DROP CONSTRAINT email_template_pkey;
       deskapps_100001            postgres    false    260            �           2606    33694    events events_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY deskapps_100001.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY deskapps_100001.events DROP CONSTRAINT events_pkey;
       deskapps_100001            postgres    false    262            �           2606    33755    groups groups_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY deskapps_100001.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY deskapps_100001.groups DROP CONSTRAINT groups_pkey;
       deskapps_100001            postgres    false    272            �           2606    33705    historics historics_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY deskapps_100001.historics
    ADD CONSTRAINT historics_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY deskapps_100001.historics DROP CONSTRAINT historics_pkey;
       deskapps_100001            postgres    false    264            �           2606    33716    message message_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY deskapps_100001.message
    ADD CONSTRAINT message_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY deskapps_100001.message DROP CONSTRAINT message_pkey;
       deskapps_100001            postgres    false    266            �           2606    33724    people_group people_group_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY deskapps_100001.people_group
    ADD CONSTRAINT people_group_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY deskapps_100001.people_group DROP CONSTRAINT people_group_pkey;
       deskapps_100001            postgres    false    268            �           2606    33743    people people_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY deskapps_100001.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY deskapps_100001.people DROP CONSTRAINT people_pkey;
       deskapps_100001            postgres    false    270            �           2606    33833 *   people_precadastro people_precadastro_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY deskapps_100001.people_precadastro
    ADD CONSTRAINT people_precadastro_pkey PRIMARY KEY (id);
 ]   ALTER TABLE ONLY deskapps_100001.people_precadastro DROP CONSTRAINT people_precadastro_pkey;
       deskapps_100001            postgres    false    280            �           2606    33798    roles roles_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY deskapps_100001.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY deskapps_100001.roles DROP CONSTRAINT roles_pkey;
       deskapps_100001            postgres    false    274            �           2606    56819 $   activity_status activity_status_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.activity_status
    ADD CONSTRAINT activity_status_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.activity_status DROP CONSTRAINT activity_status_pkey;
       public            postgres    false    318            �           2606    56575    media media_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.media
    ADD CONSTRAINT media_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.media DROP CONSTRAINT media_pkey;
       public            postgres    false    286            �           2606    56564    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    284            @           1259    17533    institution_id    INDEX     G   CREATE UNIQUE INDEX institution_id ON admin.accounts USING btree (id);
 !   DROP INDEX admin.institution_id;
       admin            postgres    false    200            O           1259    17534    media_model_type_model_id_index    INDEX     `   CREATE INDEX media_model_type_model_id_index ON admin.media USING btree (model_type, model_id);
 2   DROP INDEX admin.media_model_type_model_id_index;
       admin            postgres    false    215    215            Z           1259    17535 /   model_has_permissions_model_id_model_type_index    INDEX     �   CREATE INDEX model_has_permissions_model_id_model_type_index ON admin.model_has_permissions USING btree (model_id, model_type);
 B   DROP INDEX admin.model_has_permissions_model_id_model_type_index;
       admin            postgres    false    225    225            ]           1259    17536 )   model_has_roles_model_id_model_type_index    INDEX     t   CREATE INDEX model_has_roles_model_id_model_type_index ON admin.model_has_roles USING btree (model_id, model_type);
 <   DROP INDEX admin.model_has_roles_model_id_model_type_index;
       admin            postgres    false    226    226            `           1259    17537    password_resets_email_index    INDEX     W   CREATE INDEX password_resets_email_index ON admin.password_resets USING btree (email);
 .   DROP INDEX admin.password_resets_email_index;
       admin            postgres    false    227            i           1259    17538 +   reactions_reactable_type_reactable_id_index    INDEX     x   CREATE INDEX reactions_reactable_type_reactable_id_index ON admin.reactions USING btree (reactable_type, reactable_id);
 >   DROP INDEX admin.reactions_reactable_type_reactable_id_index;
       admin            postgres    false    232    232            j           1259    17539    reactions_user_id_index    INDEX     O   CREATE INDEX reactions_user_id_index ON admin.reactions USING btree (user_id);
 *   DROP INDEX admin.reactions_user_id_index;
       admin            postgres    false    232            �           1259    56576    media_model_type_model_id_index    INDEX     a   CREATE INDEX media_model_type_model_id_index ON public.media USING btree (model_type, model_id);
 3   DROP INDEX public.media_model_type_model_id_index;
       public            postgres    false    286    286            �           2606    17541 %   accounts integrador_tenant_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY admin.accounts
    ADD CONSTRAINT integrador_tenant_id_foreign FOREIGN KEY (integrador) REFERENCES admin.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY admin.accounts DROP CONSTRAINT integrador_tenant_id_foreign;
       admin          postgres    false    242    3446    200            �           2606    17546 A   model_has_permissions model_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY admin.model_has_permissions
    ADD CONSTRAINT model_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES admin.permissions(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY admin.model_has_permissions DROP CONSTRAINT model_has_permissions_permission_id_foreign;
       admin          postgres    false    228    3426    225            �           2606    17551 /   model_has_roles model_has_roles_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY admin.model_has_roles
    ADD CONSTRAINT model_has_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES admin.roles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY admin.model_has_roles DROP CONSTRAINT model_has_roles_role_id_foreign;
       admin          postgres    false    238    3440    226            �           2606    17556 ?   role_has_permissions role_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY admin.role_has_permissions
    ADD CONSTRAINT role_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES admin.permissions(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY admin.role_has_permissions DROP CONSTRAINT role_has_permissions_permission_id_foreign;
       admin          postgres    false    235    228    3426            �           2606    17561 9   role_has_permissions role_has_permissions_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY admin.role_has_permissions
    ADD CONSTRAINT role_has_permissions_role_id_foreign FOREIGN KEY (role_id) REFERENCES admin.roles(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY admin.role_has_permissions DROP CONSTRAINT role_has_permissions_role_id_foreign;
       admin          postgres    false    3440    235    238            ?   �   x����
�0���S�V��kO����x��(��P����v��)�����
ɮk�ag�%@�q���f��������XIl�*cP $�H�`��9=�>�j��Y�U��\�|����	��5�E\Uґ���>������e��*��2:�)�<�����is9Q����7&YT      s   I  x��\[o۸~�~���؇wJ~jڴ@�vQ$ٗ=90�M��-��n��?C]K�d�I���Ej[�����p4�@'�	>9?��,c�&'y�p�Ɠd��߽��a5��y�^�l��w����;���Rݦa����zj�S_M�ojw��,���
���|���S�(JU�ao4_M��Ϥ�<IU�T�8\��<@� �+,FH�h0D��7P�T�p���
3�Km��Kf]� �-��*Ǒ7�^������+�G�1��>J& ��:Ĝ]_�K�� .NԢ�X7���������j�L�8��8���G�m��l{��\ĩ�
e?O�mu�����bDb�<��ۂ����bDD��������%�׿��+0+�F��E<S 15�7Я�WD��<R��$n>�����.S���iJ�w�RtAɸ��D�����@�[#�}�*D�O�WC4�xڇ(q2"־S0�,G��Q�Q�J��U���b���0e��y�����o�[~e�M��n� �O%�M�د�d��J�g����A`r�k��jA�,#�|��N㉚gp%J�i��ǳ�V�h��$�2x���D0\!נ�p�����b~�{�`*,ӕ� �h!��n�ŝ��pQ"Vw�g�d.�x |&��@0�7t�Z�*��Q�����8R7a:��V
TG7�-���9�o�v+���	�34dl�v�t���U������6g���*k9��rU:Q��}Zc��[�8�۠��ٛD[�I_u�|�L��L�x21�p��à+k�+�o�F���!g�ԡ#Ks/z"�2u�8��~)[e*�3/�����4����4��~QDm	ݘ_J��E�p���O��V3�0�=���#v+j]��U~�A{�^�Y�?6餎Dt�DТ�#�\QW U��$�e�A����L^U��ji͂��h���۹��l~Dl�A`O����#IN��7��K�I�2�jw6B̑�9?1��v&4Gj3:��+�dF`�vIN�vr����<Sc�(Y�Kf�ݷ����:�o&�t�o���\}�7 ��e�°S�	Jbe �:Rl�o([+t9��.��i�7��=u�$a��M�X+]�g�i��X��MH�U𗲶L�1�]�E�i�r���{(v���mt���w0��!��"QDD��4Ao�-~~$mf�d�&�g4h��II{II��u�ЁD!KZ2�z�����v�>����)�UD��ٞ��a��7�,(� �#�Ez�|����}.cw�^^_�R4q?$Y�> �.�<�<�ȳ���s{�7�=�,L�wI�@K6����Qfx���s�G�ԣ�>�D[�� ��G%d�.�P�G&��� ~��#lK��h6}`���%�.]��&t��{��xpnq��n-�qG/c�Ӏv`�A�N;��c�a�m�fC3�F�G���~'�?��i�^~>�sXh�٢�Ϊ��Hށ�zAYy�M�x���x#����U��U�:h hob\ĉ)�C8Wq���h�"��nj|WX1N�
r<���'"��?��#GM��!\r�'9�Gu)&���x��OD��$GM��!\ŀ!ݓ���M�aI!����+`��&�&�9����!GM|6�3:JK,��׹9u��RO�2�P�D��i��RL�'��&jW�?c0%�`�����r1A0�+Sz�/l1�����BL���-y�G[v�:�M�T���Zڒ����J��'�xD�s��{��L}w�Va�؀�+hJ�E��K�/e��]9�>N��A�(}\q���Sx��h@P��c���K�5�M���)�bW �#�M��rDW�aԢE������F1
c�`���~)ݛj��+ؽ��-,�,�������̧s��(�t�Y������p�н��j%��U�ÍB�2�~�������
3]F`>�� ��}�*�����8��%*�rH��6V��cx���]��i}���|o���/w��K5���\hZ��L�?��$]H�����T�b���p>��I���&]�p?�鴂�ԕAp�9����+�~ZͿ&?v�߂�����`�}uH`�r.�������C�0�Ö������b� ��ro&��``��M�ƚ�~T�����v��`�� ���{=)@��˝@�u�,�]Z�N�C��c�^�a]H����p��`o֙��R����!��G�z��݊ޞ�QT�ǽ��^'$ڇKܰ����������1�▧`L����f������6t���\��XGX��R�-JT��r޴����u�y�{�욹X�*�nY��ͣM�o}����̽z{y�ֳ9���<�<��P}��nT`� xTZ��� Y�[Z�
�h\~���17��Q�.�E�-)� o�7.-+�,�/��\,���I��w�j���O���6�l��(��xި��@���]��c�;�i�n�#~9�x��������x��y{�\/z�K�^Td͇B>on�����8ləo���֥۪ڢ_7o���G�-���9�qwh�Pɢz��^Wk<,�V;2��:Xd�1�K���4&7Tc�mb+������ov�+�����1�ey	XwLUǼ������V�u����7�my�mx��V;~^��Eo���a)7���,,���!�8�_����0ۺ,Dk8TWi_�Z���I���������ԡ1�i{�A����
8���G�dСK�g��1��c�8	هiM����
8`{L�sF>��e]K�?.~��ۚ:~ ��Q��g'�Y�'>u�+���#,�oS��Eq|�س&���>�RlQhr�6����8��NҦ      q   �   x�=�K�0�ϓ#���(������^�d-��-Iz��ۤ�m��af*t,�c�7U�d����1�P�-N��
�68[O^[rwxpJ�1�]��]�8j-�O�5^�C���47����9�5�)H�4�������L�WJ�/nw7_      @   �  x��XMo7=ǿb�Fo^I��&P%E�C�"�!Z ��]¯rIYN����J��X�+�H��>�������3�.�y�g?<��٫��X�:�����,?-l=/�� (�����(@�Eh0΋�����ņ�ƻ��F����T\�nHb�Nz�c�%��h3/�,_�Z>sƋH+����X�Q�X,`�Ҷ�k,5����F�X�\0"F�u�HQ�b��#�ƻ�qho���X9u�;�[��o���U�tڅ�yUU��n��~jG?ԈP����oA����^(ź��~��^�)\N&?�#[�OV�ry��{=���n�r��Cl5Y,?P=�F�ӹ2�Y�qB����e�C�vΔ�8vf��+�&V��4��z��H���_�	Ɩ��^���ȶ���o?�Y��������BQj�p5D���'�+�D�rxa��G��R�t���3l���}���m�R��$���ɕPߒ�qG����7�Y���^��M3/��AGi����o.��M2����^�m�^�8�Ab4��Z��=[}�Z�9�%B���ǆ��\ �݆�mbH
p�ARl���0��m��"��!HLFo��g�t�8�r�n�����oWF���x�	pUC���_�,��h9Y~�q:y&�L^�#�����T�&�f�\sOR��J�S��l'�@�Ad�D��X)��\@�l�H&�E�\U�$
y�8�9��5��M�	�̨��q��_19�)˰�{��SFd9y�S#��C6�u@� �V��0�߱��y��h|�$E*+��
�J,���=3��b�U�[�<�Z?Hޞ|����c��ՔCZ��o�p�3�*��n��	6�/{�ۣ��l��{�8�V�)����r�t�����]x��/���?�������]�9}      B   �  x�]V�n�6<�|�@�����hd'����&���Hm���E��秺IJ� �G�duUu�N����ͻ!�a�K���]�;��<'J<��H~�$�L3�r��b�����3�#.�-��p:��C�r�%��0rLBх9Ip2cqw�Vw%��[w<c�y�%�A�����seqo9�W�=�=��������kXf@�*���p���I��Ȯ'����DZ���ZQXF�ǻ��}�y�	w�
p�x�Q���&\���>�1�iR|B��q`!ׇi
��f�� }s�T���ߋ��{Hد�2�wQ�6�m�>��o<�����[TF2q�ě.Jq�ͬ����z6���n(�3b�V�^�{X�y2���x	�ї���U@�k���Q�o��Po�t�R���08� �{l�]ԗ���n��YvC������Ԥ��B����{�����a:RQ=�JD�tO��s�e�՚
�f���I���\-��$�SXM=�EQ�΄͟��qw<�TO��x�n]����5)�W;xy�q���y�WSu�l�V�O$[{���P������jbTd���¯8�a���',)��`���cޒ������a��5��[�5�C��>ςZ�[E��X*��$�E=��B���m�J�I���,�cg� �;����d���Qz�
����M)RsYs�(Ⱦ�֕�DS<-d�Em��R9Ŗ��1���Y=�#慐��u���s��Ӛ�*]*B��Z�j�r�*5Pm��V������F��j|�]>0fv6�a=�Nӫ��<�y�|����i*�X�0٩_V�4�0)F���c���3 ��F`���R���˰�:�,sj�ZX��-r~��,C9`����0K�������z��:�m�Y,��V\˗�u�!�.?'7�E�N$o�`]���\	 �k^�PZ���~h���$S
nZ����5_Tγ�>�$6�*+�@�޻i��T�^��c�LЧ��@Ym���
�}V�C��*�>d˨*��E�r���|�3Բ�6)w�˷�%[�~7�Wi��ҝw�^Q���Ko��!1i7V"[l^ǬMF3�T�%�JV�%�z{�ËX�'.�
o`:pk/�T���fx.�z��<��{^�nr�*�nY���w������u�W{�iE�7?u�k��>��e���j � PCM��A���x�͹ܺ      D      x������ � �      F   M   x�3��������&�Z�_Z���i�Y�eL�O.�M�+)�՚@�Ӌ22����P�����"�P� A�Z      H   t   x�3��!׊�܂�T�T(]��\F�FF��f��F
FV��V��(b�V@dl��Z\��X�Y���0"��Ѐ�M����������)�g^qIfIiIf~^1g&�5lZ� `-�      I   �  x����n�0Eל���0):튶�.�M� ��8!"QI���%)K�eK���a�^�$g��X	~���^eW�6�d��a���<�{ֿ�3�93�As�DWZ��5��BYTg�jtA6����;f�V�X8���q��	��W�+�b�qq�������9_��UeѹPhͶ	�=�(��42�*Ot7C�ݑ�?�f����L�������oO "_���~�L0�W��o-+��|ٴ�b�:� ��
�[e���j�~�	�� �Z��&�Х�| V��ּ�uq�)?���'�7*�{�,�GL�'cc��2��DF���Q���(��d�o_��Q�^=*I �d�N9���*N:��
/�/Aܐ۩���]fD�(�ڴ�]�*z��_� =ve�p�U\�U�r�u��Q��E�}Ym�u~S?Y��R���{��!X��\y��&��(��r��>i�M�:O�m<>YU�-�d �b:����rEF�j�����a���ɰ?�F�;F=�#ɚ$=�1y�Sޫ@�9��t�u=�g��MaZf���p0 =�m���)�W��p5܅.��A��cto����;����f����o����R���~$�v�U���+�̪���d�9;�;pz<�e��~,���8=%����f��� ���      M   �   x���1�@D��>E.d{vɲ � .C��H��"E
Y��OSH������X��{w���C&��L��A��]��d�t���M��	��֎�L�X[������GX�(ҁ����4n���3�)k�      N      x������ � �      P   �   x�E�;r1Ck�0�Տ����3I��)l��!���	�ڕr�����5�B	v(E=B.�r����������(}Bx�u�c����
<�1�e��9�S����+v�6���|YQC��e�����6X�1�ެwʡ�t���f"��IL 6�v��$����eԸ�,���S>�@�H�ω�l'�I�ց>>U�(��]�!LgQ�A�f� � ����nk�z�����      R   "   x�3�,�LIMJ,R�M�+�2�,�/�0c���� ��		      T   �  x�}�Mn�0���S��,���Ҏ�d�E�E�&"�E��q�������P�� (`���=�f����ʵw<<?B��+d9,![�|��p+����ra�p�9$���j[+j�mj���n`Q�@@�s]c�<8�5��+�"�X�VT����0[ն�#4+�]�F���O�⍎$�m��i�g*�ƚ}�8�>�����{m-k��5F�X�4+��z�~����]��E�vn�w��5���Ey񉞃�����6�TJ;��kQ�'k����+��2���i���f���&[��Lp���|�M$��v������c�z38;�t�M�0�EA1���%�~bbF����FF��{kP�/�>���`E���ث4�]�ёL�&����f�ǉ�ܮ�x��"�*9��nOBטz^�%�$'`ۧ��WtJ�)���Jͩ�a��������uR��0;8��4���D��ή���1Ǉ\}|���V	�D{�[�$�rx�6i���v��|�b���Gz|�`\�̊�!�*�x�CK!Ʌ��s��nR�l{
O�Ҳm+j�Nu��k��B8�X�C��(�wEd��3���$�l4n�����1D�bS˔;wv�гh�{��7d� �\�P����ӊ�u���O����D�A      V     x��X�R�0�-s��»\U*JTt�-`����v�$â�Xײ�	3�}`�rE��L��G=FOF]F3�jҏ'�@3�i <�q����h&G�gJ��T�g@y�����tp~��W�@\�/x�O���R�`\~�IO�,nH�,�0��/dk:XZ ���_p�O�b�;�a�R�=��mƱ�+zx�ఌ����O�8YiJX�ڂ�[[��ژAO���B��`! ^%g��U�O��9(�Cr�Қ���[$���q�D�V=7�T;8��Y �@��ڙݞ�2��ͯ��ܭִ�5 �Zʭ5*(�QK�L�;kN��j�e[���9,#�����մ`�����8�7���((}��T��2�f4�[[�1v���%���譓��%�,`y�&���-��Z' ����L�}���EyY&YNp��N �4x�P�A����H�ھ6'���e�i`|i�?���0:���t3� E:yU��us�#b����19�䰰�pTis�2�7�:�O��U�;u`ws�)���{n^��9�,pJ�3RJ����$�V��#VJ�'2�8�t����ߡ����R�h��
��e;q��IS2�(|ög���߰�jī��xn&=���r���E��$����@̹�X]3e7N�t����G<���*��57���݆f�@���z�+�E��\-8,V��ךF�8`�Hċ�
�] �Z3W�.�k�r���97���(��C�*$rX�O5'�ܟf���U���Zn,W��s�0W����Q�\���iHsU�稜�U���Z~�+y�h�\�.s%�k�+y�\�\I�[��⩌:��C��Ѓy�G`�q�g���F�x�$b�;�)���Ý�a8%b�{W���K�}��(K���ʆ	��W�{��WH ���B�q�jlLTHp��G��8E�J��,����y�V#��y�V��Bt=N�� �xw���L���l�P(]��i^:�n>a�}�脒m�
�a%[��-$���x\'J�3s9�����>�|�����,����Z      X      x������ � �      Y   Q   x�3�t,(����OI�)��	-N-�4�2"Z���1VQ���XEͰ��c��*j��؅q��G�����͹b���� 5s2      Z      x������ � �      [   �   x���1
�0��:�/�"ɱ��,]�P(��\�����e��!����幽���:On��cd�0u<���1j���34�Z��)ڻ�MZѕ����gu�dS,0�G�q�4jmS6zm��C�Ʀ)�$�U5ɮ��<&-�2Z�+�m�e��e�nZ��#gf-�2Z1.�m�e��[�M�. ����      ]   h   x�3�(M��LN<����|CN##C]s]Cc#+K+Clbf���\F�z�8c�@(c�*c����2G�1GȘ�ʘ!dLQeL2&�2&cTc�L� ��K�      _      x������ � �      b   m   x���� �����������Q*aX0(��|�>vp�DN���)�s���,fѵ�V�����g�������������������{�O�<����*�E�~���t��      c   %   x�3�4�4�2�4�4�2�4�4�2�4�4����� 5w      e   W   x�3�LL����,OM�4202�50�50V04�20�20�&�e�YZ�ZD�c��������p�&��Ydh�`hiedle`�M�+F��� Ol,�      g   �  x����n�0���S�:�N�?G'.�^� �vꅑ��-����{�a�����Z/�
T�E@����)(Ӵ59*a�eE���������Rd-X�����ز���h��)�}'jKo��g���Q�\����_c��2��k�+;����a n��HtCڍ�1 �P�OnxD�DرF��$��Վ��G�
�����!��.�AA�%���^P�Ō5�b����$��%��b��&E��e�Y�L�^y�詣X~��"	��Pm)�K����瀿���g&�t�K8
�\�]�f����u���ߐC|��j���H���f�=/V�)o�u�+K!���o��k<�"����_d@��vۚ���y��F6��Ogw��0��/I���Ȇ�      i   !  x���Yo�0��ͯ�C_	��8v�JX���JU 	�N�~}m����Ʋ��#_��;!�-��MR�	c��<��5��p��U1�BR�����5p�Ow�up����Z\��}��i<�S�a��ڎ6?�YF~�M�?��-p�8L �g��a?sz-���`��k3�,,'��;?4O�Z��^O�7Nh��j���}�e���>4Zn	QC#����`Xbc\�*� A�S(C�� �e�\�/�+4�x3�LH�~��_@Z�g�v�e�ۙ>=��Yj�N0�8�(�G�Pճ���du5�2���s4=�[Cb1�U(bO���ÂX=ե��]t'� 5��9��*N�����+�H��� ��E�Y��������� �@�+�"��C]Β5��R~LR�p��U��n���!'��� �f3w���'w4���m��c=������r�Z9iYi~��C�Y�eP��<�#d�˄�nj����/A��4�Vǔ.�ٰ�(\�}�����K�w�X��b(����e�\�K�i�E�T*�W
�      k   $   x��0�B 0�27�44�p���a�\1z\\\ �0b      �   ;   x�3��t�4�V*(��M�,ʏOLN-.�W�R�L-V�Q�t2�j9c� �+F��� �@�      �      x������ � �      �   %   x�3��CGFF���F
V`����� ��	w      �      x�3�4202�4 ��W� Hp      �   %   x�3��Ç��u,t�,��(����� ��C      �   3   x�3��!���lǂ�bN��Ԣ��D}�ļ��b�l	g
�r��qqq g�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   ;   x�3�4�tI-�v,((VpI���LL���s �z����1~ؑ!�0�,�LC�0i�=... �*�      �      x������ � �      �      x������ � �      �   .   x�3�tt����,�"��".#N_W_� �4�!� L��1z\\\ ��*i      �   �  x��\[o�8~v�!�c�!)Q���� �b�,�tf�0h�q4�%C��m�ߗ7I�D��Ɠ4�����o�;yI��&�8��GV���֦��L<��e�m��	�W9-�YZ�{�Xa�I.Z�EIs�T,|�70�"?���srs9�^ < �v�&~�>���u�ں%:ϲ/�$N����r]�77������E�b�%e�Z���k\��Qb�e˄�Q�[�)7�8��Fq�G5qZ�d��U���}[��>�zGʂ��U�!��ێ&T���&�I��٫ENII�)5`�f�B/��[ ���T7�Ƞ��S���֪=_P
��$��*\a��+�ٌ��(2V�7Z�f�OٯPV"~^���ʔq�P��잦%ɸ�J����TwS�v޾�.s���4�Ĩ*ܹ=\{��0�ͺ�y�����C�h���ugi�,�jY��� +>�b{b�D̑*U�Ο�6��F|��t$n���mk`n�u��Ł#vv�[������)-IrG�i�Ms� 7�"KKfv�����>Tn
�#�Z�1���ּ��̘�Ĵ��ٌ[��KeyY��AlJ��Ϻ���gzb�u����S��=�����˫�?�/�.��~c�\���������f���]�wI|O���tV�<v�TL%o�\2���v f�(b�EQ�]\~�\�[K�����l��9S����;�J��q1���4��5' 9I�[�W��j���	դ�{��N�b6'�f�J�0���w��7b����r7�4S���[���v&:Gx��>G��"r}���L�>�ERf���0+ަ����g�z ,f�]�u��Ռ X+k��͹fkB��ͨ*���J���w�=9�GN��~l<��Z����@�u��ɴ�6b�ܶ�����V�S|y&������u�@:���@m��0��؂XPC��R�m0?t�VE��C��'G:-�9�m�}�q�F���Hk�����>����������
��ӏg�'S���i�xp7Ѱo�G{a����i����ְĚ�a�cq����#0� ��~0�"ft���������l�'���$�3�j��J��Gat�T�Ӿӛ=���k�b��`p@(~��]f�]F�TN�4�m��lM�5߁�Å^/�i���uO'Ee���^��Zw⇷�� ��߉t��A���?n��W�&��;6���-���� A�^ꆺ���� �9��p?pX�k�
�.H���$OH�T� �O�ٴ��<1�o���r)�0B,v"j�� �$q>�ps��E/��=*l�$�	��l�w�T��s�?g�FN� �:޾�hT�Gݞ+=��ܝ{�^���s������{n�z��DϽ	ҶJ������7gC�g��TIAχ̓sy�1
�:8����ŝ*=q�|�!�����KT��f���D`��������gms�9��ۜ��ܜ-Ց�]u�`N�՜���4������o�-�ޟ�-��xw��]��i�,��Z#՘3ژm�d��N�ʔ��Ni���8:���A��ȎN�G�Ny��Ӊ6_���a�����ݘNߘ��9���������6�;����3���	gJ��ٔ-Ց�9b[��e�[M�x�1o��`���CZ�;Y�=: �5��$�9��r�لq=B��-����5
�����*׍��"����(�ɂd��פ��d�#�wY\��<��j^������[mI���&EA˂�&^-���D�� {�3�\4�P��o�X/-~�>^�ȸ[��!���7��۹m��q/X8Q�|�ʫD�_N��BXqE�g��1X�H~AXm$%�B䥷d������Y6����'��&�d:E9��T�U��4�$$�EM��D*�����Zf-�@RL>ޕ��ㄶ�5E�K��	p�3�������\�A5�$�TE�r�|����-���/�n�k-�ϔ�����ٷŭ2�ޒFe�o4����X����]��j�W�@U7Mh��Mr��(�W�㥥4c�zI�G,_���;�u��ϺR��ZU�[� T���uWT���ވ�8P�1h��Q��4�V5yA��8���8h�[=U{O@#v�$(t>����dp �\�� �O��؃s� l� ��P� ��P�@�7���u��y����OW��oّ4b6t�УΉ��H^�6�sZgi�"�E6�.���1�u�[id�F�Y���i|>ł�����?UE$�,�<���l��7�Q}H��F���3���ΨjHG�i�',�M\��Uy�ޫG��S\�D�L�=�;��7<�)�@s'�)L�2.��8�Uy�G�:G���0�9=�7���l]�X_m�OWw��
����9�#M�����0�a����S=:�Vq�N|������&���Q��ai��|ۨ*�L������	��_Vخ�j�g2JWw)E4K��ԟ�c�Unݾ^�:Пj�͢�FMT�<�Z�լ�ÈT��@T�T��W�f��Ddv�$]�$��䴌�DKm�h�-R��k]����۫�jIDU-���%��VU��ۼ�;��=I��o(i��XKRd��R����,ʚE��ӞhY��♵�Ye�A΁���e1[Ҕ����I�kъUۖT]�e|�,�:��1�'@� �b?=Y�j���.[@�-��0�0��g����l=��[��-��Zl��a� [@�-��``������8���$
&9G&��hL2�;O�$�g�{1IL�{1	�td�O�$��c��޸�I�q��&!E���\$+��.����1v�{̃-����̃]��c�t̝�<B�ј���y�Ⱥ���/k(�|�����4��G��N�g0Q��ś����B5����^π^�s�^�C/�l�5~Z�]�	�֜�,�M�U����J��J9!ں;�`~��H�u������a�Uݽq�_G~�8~���څ_�į��Ѫ	ί���^��7      u      x�3�440004�4562����� #$      �   (   x�3��CGFF���F�
��V&&V���ĸb���� �P�      w   o   x�m���0���)\@���Y�[�M,����3Pi0���rƒ�Ma?�n�]�:��n5���ND����@/\���'|!~$����!���_��<�z��ŷ�]O�ID/�+�      �   e   x��ɻ� ��`�q*�4j0�!������Ŧ����!�1��w�Ù������(c,��h"�\��11TAM�S�3�5#�1�t�}�9�PJJ�      y   �   x�]ʱ�0��}
W�wm����,WZ���F���/?()%?J��s��8�{bS�р�I2M�/���s��"E�S��$�:�ѥ�?�!�k�mE�k�/�4G�ɳ���{5���2�B��9�Y�Zxr��Zk�\2&      {      x������ � �      }   K   x�3�I-.I��!##C]]S�Y��T�������� �X��1V-���hfe�a"Xhb� ��!�      �     x����j�0��y�˶�.7�������z)4��-�t{�9�Ӱ�kA`��/'���0�
8(AW���8��z��3V�Zzj������������F-4�]��}.�򡶎�����t>�#y<���{��C5m�7vo���o��ÀH�j��z>�E���uxF��28P�zN�PWW9RI�d��y���:���7����I��=���f���O\os�N�(���C���!b�z뜶��'dB�Q��{yX��!U���S�e��|�_         �  x����r�6���S��t&R�I��y&=��:�L=�BK��~(���y�� }�����s�6̿�V���R<a���фS�?	��2�u��^�lG��
��1�i�T�XT��p'fv�0�0əX�0�+���qAg�ؠg�r5�J�+&��QE+� �t�)�2a�.���y�TTt�3zc¤\4���Q���fgߐ���}�.(�j@�,�;dz�52�Q�h� =mC0K\���-R�B���H'�T�r���Ѧ�Ր*�H�v�7��;��l��$uTC�r�R�L�R��B֑h
�4�!9����`�0e9�l/`0Ր����Fg�;���c9�P�Q������9iV:�ʓ޼��Ƽ�,�땟;q�����q��w�:�>��%�F5�#q�/ђ�h���k�D�*�!��p�d�C]�p7R�W�i�B����S�����\��>����L��ŕ�'.��)L����fM@b��YTC�t�K�J-]�tʒ���KB�/�G���G5\뚰ٺ��Ke0y.*���ǣr��Wnf�yȍ�Gf^s4d���T%�� h���Ǎ�y�ETC���3�'�ū!	%�Tu4$�2�d����/�&`��v'��	��*�[	hɯ�?ݿ�'?�~�a�tB��p�f�\�Lp��~�3@ɂ�Q�<t_�
���dzgՐ,6de�����p����jH��OV.L:��ጺE����o�Ak��`J�k9��R�%.��ӭ���?�L`Q�:( Ʉ�dJ����=�\����fY&Ls6�J沐��VCr�mY�b�ebҭ���->�1#a����#$y��Ր���6s��DIh��0����(��Gl���l��!z���F�ȶ����JR�G��t���6�׶h��0��+�'�}�\�LH��+ʶ�@���|�!>�D��Q.ٶf�"F��Q�j����ڂg7���b��R�Bc5Dg���j�� �Na��jH�W���������h�MsT��d�������������]c�x��M#y��3Lm#'rO���Y.w��ǾlgRO�d	O�ጩ�������y< �T�i��Ϧ'����I��H�n��K�#����\�'C��!�@���kb�nz:��#�j$�Xܩ�R�;*{���.��%ϕy�t�H�T{�����5}W׏eO�Їp~��`5�+s
��/{8�48<����������).Q��Nd�:%�U��G%��4��SC�]���9�PcƷ�е������R�	SW��q.a+�i f"u�4�%)d(/�CYW_'�穾Lc9���@�N�' ���j��=�7�)����V�Sf�r���#8��C�[�<����#�XS>���aj��]���OДS���\�V������b�i˱ކ>ԅ[��*6eTړE*��`x}<
ی�2�!\�9G�X{�\w���+4�j�V~�p�.�����e�֨��S�|U`�Li��#�V2�![;Ǌ���P��=6G���[�t!�i�|���t���̇��勸��쾆l[��^������Fzl�=�������-Жm��R���l�7�9k��~��_a��Z�n�Z���m��!Z8f����\y�)E��i:h��ܝ�����N��a��9���+��<O�+���E��!��bf���Ϟr�||L�\��TqR�������	ʢ|�/����� ���      �   G   x�3�tI-I��H-VH�W(JMNL��L,N� NGN##C]]#cNC DpͬL��L�����q��qqq ӡ+      �   \  x��Y�r�8}v�B?@�2�`��$J+#cj'5U[g;�M�f�~[2�L����!��A��ӧOϱ���/�h��e�1���nY�9�l;~/M���4�|��?�}�a��m=�7�|����_���זHr4S�Zf*Y���a�*����c;�a{� �w[��㮮����f�]ۆ�=������	>���ŝCӑԄ�i8.�K��j��`u��'�<�D�	���>/�\�~��L�0�b&g�R������9
9��}}������6 %"#N����V@�o��ʜ\RA�!GT�$B���1�|�nXc{.�O]Y��"	�X0!��LW+���k,�^�PGk�п����U���a!#�Z^�������=���"�'ј���6��j������i�x����M�vPM��ɀ�O���$9M�I��p@Ѝ`р�*UQ�m��#��\�+`�i�U�$B�g�H�SYI�${�uSK��d��K�ʗ��úZ4��h��G+g��E@&�0�+�P�Z1���l�MY�I�郤U>y+u�.$ ,.�%�G�m���B�6"+�����b��W4_�ec.��I�������XK-�T{����|�j}�������&+�]�	�잶u��d}��c�
��$�%X����~�$l�(�{�ׁ��n>�B6���*!�m�u��`�؈�c��B�a��Y)˼7S�_��8��WQ6އi���q��5��\;ķ>泶�C�P��$�3�N��@$Q�N�@� _t� >Va�_=Ր+�"8Z��G��?�x|�'�-����86n5l"����L-�4G���Rq`F^�u����m�}TH�W$D���!�T=%s�H�I��R�*���E��6��?�^-
�5P��T�Z8��.���T3A�*�O����]����� ����JL'���t����!��eA.�+9�-t+[(`��I��|!�iRLe�/T�`����7���u�R?����.�^�W�L%��>��I�]o� �dާd,�V3���Fˍ�L�������B�;�JS<B���'�*-C�
8�H8�u�L���Y���-v?��V[�� ,5�z���|���+�6�zKv����k/�N�9]\���d��� P���x���ψ�i\S4b�+t�Ő�V�'�,Q)��*~�7�e1W*M��bs[ԣ�Z�>v�M�m�jR�$��$�� �n�߰�Zn�n�T`�y�;��X�,9{H��y5��zq�㚯g^�5}�	K����/v��umm��]Ӵ5�����~�l���Ts��#<dO�E	l�/�݋�嫖j���������? rl      �   �   x�}��q!г:
X� ��l�qX`�˃G{~%$�JM��^�$U�Qǃ�H}��4�9u&�[����-��k�ƈsU6�":���G��퇟���4��!u�p+��\xs��ȥ﹜��FOr���o?��j���5u?H5ss��-�6�:2�pz\�f��+�l<�읺)���K�WD���D����
��xᶦWī���¨�+��M��o������}.|���� �jN�      �   �   x�m��j�0��~KN�اvhF����
Ť>dM�P�;�闱º1��_"<��M��OM[w/�ޮ�`}8���|r�z�]և	4q��HT��p�~��b?��v��"	H
Y	�8��BC��P�I�m�<�>��'�v�c�]���n˅�0A�O�������A�e�E��\xq�mZh���x#�=�8F&_��J����2��'�K+      �   b   x�3�,I-.I�,�
��CF\F��)��y$��i�7202�5��5�P02�22�2��(�2��M�M*ʧ�G�+�Z��X��[njejQ����� �M�      �      x������ � �      �      x������ � �      �     x�]�ъ� ���cG�����`��lj��5�&V��x�#�8�S
%cd�����^���/ޞ`�|��8�!]�׋��@�C�LX~�\��:;w����3e{;�l%"2�7�<��-�NǎJ@���o�D�u)��LU�S�h	���^��Ն�[�c���I%�.�� �{L�j�e[ ����G&-���jl3�,�(>�_H�Hb9�g^�5��S�a�c'��Mv���ü��1#+����u��¾��a����     