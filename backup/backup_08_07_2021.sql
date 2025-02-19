PGDMP     '    $                y            tenant    10.16    13.2 ^   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    31070    tenant    DATABASE     f   CREATE DATABASE tenant WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE tenant;
                postgres    false                        2615    31992 !   igreja_batista_blumenau/sc_100003    SCHEMA     3   CREATE SCHEMA "igreja_batista_blumenau/sc_100003";
 1   DROP SCHEMA "igreja_batista_blumenau/sc_100003";
                postgres    false                        2615    31823 &   igreja_batista_florianopolis/sc_100002    SCHEMA     8   CREATE SCHEMA "igreja_batista_florianopolis/sc_100002";
 6   DROP SCHEMA "igreja_batista_florianopolis/sc_100002";
                postgres    false                        2615    31993    igreja_batista_manaus/am_100004    SCHEMA     1   CREATE SCHEMA "igreja_batista_manaus/am_100004";
 /   DROP SCHEMA "igreja_batista_manaus/am_100004";
                postgres    false                        2615    31991 !   igreja_batista_sao_jose/sc_100001    SCHEMA     3   CREATE SCHEMA "igreja_batista_sao_jose/sc_100001";
 1   DROP SCHEMA "igreja_batista_sao_jose/sc_100001";
                postgres    false            o           1259    36157    balances    TABLE     �   CREATE TABLE "igreja_batista_blumenau/sc_100003".balances (
    id integer NOT NULL,
    user_id integer NOT NULL,
    amount double precision DEFAULT '0'::double precision NOT NULL
);
 9   DROP TABLE "igreja_batista_blumenau/sc_100003".balances;
    !   igreja_batista_blumenau/sc_100003            postgres    false    6            k           1259    36149    balances_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_blumenau/sc_100003".balances_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 C   DROP SEQUENCE "igreja_batista_blumenau/sc_100003".balances_id_seq;
    !   igreja_batista_blumenau/sc_100003          postgres    false    367    6            �           0    0    balances_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE "igreja_batista_blumenau/sc_100003".balances_id_seq OWNED BY "igreja_batista_blumenau/sc_100003".balances.id;
       !   igreja_batista_blumenau/sc_100003          postgres    false    363            l           1259    36151    config_meta_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_blumenau/sc_100003".config_meta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE "igreja_batista_blumenau/sc_100003".config_meta_seq;
    !   igreja_batista_blumenau/sc_100003          postgres    false    6            p           1259    36164    config_meta    TABLE     �  CREATE TABLE "igreja_batista_blumenau/sc_100003".config_meta (
    id bigint DEFAULT nextval('"igreja_batista_blumenau/sc_100003".config_meta_seq'::regclass) NOT NULL,
    visitante_mes integer DEFAULT 0,
    batismo_mes integer DEFAULT 0,
    conversao_mes integer DEFAULT 0,
    pessoa_mes integer DEFAULT 0,
    visualizacao_mes integer DEFAULT 0,
    comentario_mes integer DEFAULT 0,
    grupo_ativo_ano integer DEFAULT 0,
    visitante_ano integer DEFAULT 0,
    batismo_ano integer DEFAULT 0,
    conversao_ano integer DEFAULT 0,
    pessoa_ano integer DEFAULT 0,
    visualizacao_ano integer DEFAULT 0,
    comentario_ano integer DEFAULT 0,
    grupo_ativo_mes integer DEFAULT 0,
    updated_at timestamp(6) without time zone,
    publicacao_ano integer DEFAULT 0,
    publicacao_mes integer DEFAULT 0,
    ano character varying,
    fin_dizimo_mes integer DEFAULT 0,
    fin_oferta_mes integer DEFAULT 0,
    fin_despesa_mes integer DEFAULT 0,
    fin_acao_mes integer DEFAULT 0,
    fin_dizimo_ano integer DEFAULT 0,
    fin_oferta_ano integer DEFAULT 0,
    fin_acao_ano integer DEFAULT 0,
    fin_despesa_ano integer DEFAULT 0,
    created_at timestamp(0) without time zone,
    user_id integer
);
 <   DROP TABLE "igreja_batista_blumenau/sc_100003".config_meta;
    !   igreja_batista_blumenau/sc_100003            postgres    false    364    6            �            1259    31824    config_system_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_florianopolis/sc_100002".config_system_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE "igreja_batista_florianopolis/sc_100002".config_system_seq;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    5                       1259    32032    config_system    TABLE     �  CREATE TABLE "igreja_batista_blumenau/sc_100003".config_system (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".config_system_seq'::regclass) NOT NULL,
    delete_institution boolean DEFAULT true,
    delete_people boolean DEFAULT true,
    delete_note boolean DEFAULT true,
    delete_group boolean DEFAULT true,
    delete_financial boolean DEFAULT true,
    delete_calendar boolean DEFAULT true,
    view_periodo boolean DEFAULT true,
    view_dash boolean DEFAULT true,
    view_detail boolean DEFAULT true,
    add_people boolean DEFAULT true,
    add_institution boolean DEFAULT true,
    add_group boolean DEFAULT true,
    edit_people boolean DEFAULT true,
    updated_at timestamp(0) without time zone,
    edit_institution boolean DEFAULT true,
    created_at timestamp(0) without time zone,
    view_resumo_financeiro boolean DEFAULT true,
    user_id integer
);
 >   DROP TABLE "igreja_batista_blumenau/sc_100003".config_system;
    !   igreja_batista_blumenau/sc_100003            postgres    false    242    6                       1259    32002    config_system_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_blumenau/sc_100003".config_system_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE "igreja_batista_blumenau/sc_100003".config_system_seq;
    !   igreja_batista_blumenau/sc_100003          postgres    false    6                       1259    32004    domains_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_blumenau/sc_100003".domains_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 B   DROP SEQUENCE "igreja_batista_blumenau/sc_100003".domains_id_seq;
    !   igreja_batista_blumenau/sc_100003          postgres    false    6                        1259    31856    email_template    TABLE     1  CREATE TABLE "igreja_batista_florianopolis/sc_100002".email_template (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    content text NOT NULL,
    name character varying(255) NOT NULL,
    subject character varying(255) NOT NULL
);
 D   DROP TABLE "igreja_batista_florianopolis/sc_100002".email_template;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    5            �            1259    31828    email_template_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_florianopolis/sc_100002".email_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 N   DROP SEQUENCE "igreja_batista_florianopolis/sc_100002".email_template_id_seq;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    256    5            �           0    0    email_template_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "igreja_batista_florianopolis/sc_100002".email_template_id_seq OWNED BY "igreja_batista_florianopolis/sc_100002".email_template.id;
       &   igreja_batista_florianopolis/sc_100002          postgres    false    244                       1259    32036    email_template    TABLE     �  CREATE TABLE "igreja_batista_blumenau/sc_100003".email_template (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".email_template_id_seq'::regclass) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    content text NOT NULL,
    name character varying(255) NOT NULL,
    subject character varying(255) NOT NULL
);
 ?   DROP TABLE "igreja_batista_blumenau/sc_100003".email_template;
    !   igreja_batista_blumenau/sc_100003            postgres    false    244    6                       1259    32006    email_template_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_blumenau/sc_100003".email_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE "igreja_batista_blumenau/sc_100003".email_template_id_seq;
    !   igreja_batista_blumenau/sc_100003          postgres    false    6    283            �           0    0    email_template_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "igreja_batista_blumenau/sc_100003".email_template_id_seq OWNED BY "igreja_batista_blumenau/sc_100003".email_template.id;
       !   igreja_batista_blumenau/sc_100003          postgres    false    270                       1259    31996    events    TABLE       CREATE TABLE "igreja_batista_florianopolis/sc_100002".events (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    start date NOT NULL,
    "end" date NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 <   DROP TABLE "igreja_batista_florianopolis/sc_100002".events;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    5            
           1259    31994    events_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_florianopolis/sc_100002".events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE "igreja_batista_florianopolis/sc_100002".events_id_seq;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    267    5            �           0    0    events_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "igreja_batista_florianopolis/sc_100002".events_id_seq OWNED BY "igreja_batista_florianopolis/sc_100002".events.id;
       &   igreja_batista_florianopolis/sc_100002          postgres    false    266                       1259    32043    events    TABLE     c  CREATE TABLE "igreja_batista_blumenau/sc_100003".events (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".events_id_seq'::regclass) NOT NULL,
    title character varying(255) NOT NULL,
    start date NOT NULL,
    "end" date NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 7   DROP TABLE "igreja_batista_blumenau/sc_100003".events;
    !   igreja_batista_blumenau/sc_100003            postgres    false    266    6                       1259    32008    events_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_blumenau/sc_100003".events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE "igreja_batista_blumenau/sc_100003".events_id_seq;
    !   igreja_batista_blumenau/sc_100003          postgres    false    284    6            �           0    0    events_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE "igreja_batista_blumenau/sc_100003".events_id_seq OWNED BY "igreja_batista_blumenau/sc_100003".events.id;
       !   igreja_batista_blumenau/sc_100003          postgres    false    271                       1259    31863    example    TABLE     3  CREATE TABLE "igreja_batista_florianopolis/sc_100002".example (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    name character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    status_id integer NOT NULL
);
 =   DROP TABLE "igreja_batista_florianopolis/sc_100002".example;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    5            �            1259    31830    example_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_florianopolis/sc_100002".example_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE "igreja_batista_florianopolis/sc_100002".example_id_seq;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    257    5            �           0    0    example_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "igreja_batista_florianopolis/sc_100002".example_id_seq OWNED BY "igreja_batista_florianopolis/sc_100002".example.id;
       &   igreja_batista_florianopolis/sc_100002          postgres    false    245                       1259    32047    example    TABLE     �  CREATE TABLE "igreja_batista_blumenau/sc_100003".example (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".example_id_seq'::regclass) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    name character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    status_id integer NOT NULL
);
 8   DROP TABLE "igreja_batista_blumenau/sc_100003".example;
    !   igreja_batista_blumenau/sc_100003            postgres    false    245    6                       1259    32010    example_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_blumenau/sc_100003".example_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE "igreja_batista_blumenau/sc_100003".example_id_seq;
    !   igreja_batista_blumenau/sc_100003          postgres    false    6    285            �           0    0    example_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE "igreja_batista_blumenau/sc_100003".example_id_seq OWNED BY "igreja_batista_blumenau/sc_100003".example.id;
       !   igreja_batista_blumenau/sc_100003          postgres    false    272                       1259    31870    failed_jobs    TABLE       CREATE TABLE "igreja_batista_florianopolis/sc_100002".failed_jobs (
    id bigint NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
 A   DROP TABLE "igreja_batista_florianopolis/sc_100002".failed_jobs;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    5            �            1259    31832    failed_jobs_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_florianopolis/sc_100002".failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 K   DROP SEQUENCE "igreja_batista_florianopolis/sc_100002".failed_jobs_id_seq;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    5    258            �           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "igreja_batista_florianopolis/sc_100002".failed_jobs_id_seq OWNED BY "igreja_batista_florianopolis/sc_100002".failed_jobs.id;
       &   igreja_batista_florianopolis/sc_100002          postgres    false    246                       1259    32054    failed_jobs    TABLE     r  CREATE TABLE "igreja_batista_blumenau/sc_100003".failed_jobs (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".failed_jobs_id_seq'::regclass) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
 <   DROP TABLE "igreja_batista_blumenau/sc_100003".failed_jobs;
    !   igreja_batista_blumenau/sc_100003            postgres    false    246    6                       1259    32012    failed_jobs_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_blumenau/sc_100003".failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE "igreja_batista_blumenau/sc_100003".failed_jobs_id_seq;
    !   igreja_batista_blumenau/sc_100003          postgres    false    6    286            �           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "igreja_batista_blumenau/sc_100003".failed_jobs_id_seq OWNED BY "igreja_batista_blumenau/sc_100003".failed_jobs.id;
       !   igreja_batista_blumenau/sc_100003          postgres    false    273                       1259    31878    folder    TABLE       CREATE TABLE "igreja_batista_florianopolis/sc_100002".folder (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    name character varying(255) NOT NULL,
    folder_id integer,
    resource boolean
);
 <   DROP TABLE "igreja_batista_florianopolis/sc_100002".folder;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    5            �            1259    31834    folder_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_florianopolis/sc_100002".folder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE "igreja_batista_florianopolis/sc_100002".folder_id_seq;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    5    259            �           0    0    folder_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "igreja_batista_florianopolis/sc_100002".folder_id_seq OWNED BY "igreja_batista_florianopolis/sc_100002".folder.id;
       &   igreja_batista_florianopolis/sc_100002          postgres    false    247                       1259    32062    folder    TABLE     ]  CREATE TABLE "igreja_batista_blumenau/sc_100003".folder (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".folder_id_seq'::regclass) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    name character varying(255) NOT NULL,
    folder_id integer,
    resource boolean
);
 7   DROP TABLE "igreja_batista_blumenau/sc_100003".folder;
    !   igreja_batista_blumenau/sc_100003            postgres    false    247    6                       1259    32014    folder_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_blumenau/sc_100003".folder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE "igreja_batista_blumenau/sc_100003".folder_id_seq;
    !   igreja_batista_blumenau/sc_100003          postgres    false    6    287            �           0    0    folder_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE "igreja_batista_blumenau/sc_100003".folder_id_seq OWNED BY "igreja_batista_blumenau/sc_100003".folder.id;
       !   igreja_batista_blumenau/sc_100003          postgres    false    274                       1259    31882    form    TABLE     �  CREATE TABLE "igreja_batista_florianopolis/sc_100002".form (
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
 :   DROP TABLE "igreja_batista_florianopolis/sc_100002".form;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    5            �            1259    31838    form_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_florianopolis/sc_100002".form_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE "igreja_batista_florianopolis/sc_100002".form_id_seq;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    5    260            �           0    0    form_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE "igreja_batista_florianopolis/sc_100002".form_id_seq OWNED BY "igreja_batista_florianopolis/sc_100002".form.id;
       &   igreja_batista_florianopolis/sc_100002          postgres    false    249                        1259    32066    form    TABLE     �  CREATE TABLE "igreja_batista_blumenau/sc_100003".form (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".form_id_seq'::regclass) NOT NULL,
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
 5   DROP TABLE "igreja_batista_blumenau/sc_100003".form;
    !   igreja_batista_blumenau/sc_100003            postgres    false    249    6                       1259    31889 
   form_field    TABLE     "  CREATE TABLE "igreja_batista_florianopolis/sc_100002".form_field (
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
 @   DROP TABLE "igreja_batista_florianopolis/sc_100002".form_field;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    5            �            1259    31836    form_field_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_florianopolis/sc_100002".form_field_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE "igreja_batista_florianopolis/sc_100002".form_field_id_seq;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    5    261                        0    0    form_field_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "igreja_batista_florianopolis/sc_100002".form_field_id_seq OWNED BY "igreja_batista_florianopolis/sc_100002".form_field.id;
       &   igreja_batista_florianopolis/sc_100002          postgres    false    248            !           1259    32073 
   form_field    TABLE     u  CREATE TABLE "igreja_batista_blumenau/sc_100003".form_field (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".form_field_id_seq'::regclass) NOT NULL,
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
 ;   DROP TABLE "igreja_batista_blumenau/sc_100003".form_field;
    !   igreja_batista_blumenau/sc_100003            postgres    false    248    6                       1259    32016    form_field_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_blumenau/sc_100003".form_field_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE "igreja_batista_blumenau/sc_100003".form_field_id_seq;
    !   igreja_batista_blumenau/sc_100003          postgres    false    6    289                       0    0    form_field_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "igreja_batista_blumenau/sc_100003".form_field_id_seq OWNED BY "igreja_batista_blumenau/sc_100003".form_field.id;
       !   igreja_batista_blumenau/sc_100003          postgres    false    275                       1259    32018    form_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_blumenau/sc_100003".form_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE "igreja_batista_blumenau/sc_100003".form_id_seq;
    !   igreja_batista_blumenau/sc_100003          postgres    false    288    6                       0    0    form_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE "igreja_batista_blumenau/sc_100003".form_id_seq OWNED BY "igreja_batista_blumenau/sc_100003".form.id;
       !   igreja_batista_blumenau/sc_100003          postgres    false    276            q           1259    36193    group    TABLE     �   CREATE TABLE "igreja_batista_blumenau/sc_100003"."group" (
    id bigint NOT NULL,
    name_group character varying(255) NOT NULL,
    user_id character varying(255) NOT NULL,
    type character varying(64)
);
 8   DROP TABLE "igreja_batista_blumenau/sc_100003"."group";
    !   igreja_batista_blumenau/sc_100003            postgres    false    6            r           1259    36201 	   historics    TABLE     �  CREATE TABLE "igreja_batista_blumenau/sc_100003".historics (
    id integer NOT NULL,
    user_id integer NOT NULL,
    type character varying(255) NOT NULL,
    amount double precision NOT NULL,
    total_before double precision NOT NULL,
    total_after double precision NOT NULL,
    user_id_transaction integer,
    date date NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    tipo character varying(255),
    observacao character varying(255),
    pag character varying(255),
    CONSTRAINT historics_type_check CHECK (((type)::text = ANY (ARRAY[('I'::character varying)::text, ('O'::character varying)::text, ('T'::character varying)::text])))
);
 :   DROP TABLE "igreja_batista_blumenau/sc_100003".historics;
    !   igreja_batista_blumenau/sc_100003            postgres    false    6            m           1259    36153    historics_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_blumenau/sc_100003".historics_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 D   DROP SEQUENCE "igreja_batista_blumenau/sc_100003".historics_id_seq;
    !   igreja_batista_blumenau/sc_100003          postgres    false    6    370                       0    0    historics_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE "igreja_batista_blumenau/sc_100003".historics_id_seq OWNED BY "igreja_batista_blumenau/sc_100003".historics.id;
       !   igreja_batista_blumenau/sc_100003          postgres    false    365                       1259    32020    institutions_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_blumenau/sc_100003".institutions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE "igreja_batista_blumenau/sc_100003".institutions_id_seq;
    !   igreja_batista_blumenau/sc_100003          postgres    false    6                       1259    31903    media    TABLE     �  CREATE TABLE "igreja_batista_florianopolis/sc_100002".media (
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
 ;   DROP TABLE "igreja_batista_florianopolis/sc_100002".media;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    5            �            1259    31842    media_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_florianopolis/sc_100002".media_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE "igreja_batista_florianopolis/sc_100002".media_id_seq;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    262    5                       0    0    media_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "igreja_batista_florianopolis/sc_100002".media_id_seq OWNED BY "igreja_batista_florianopolis/sc_100002".media.id;
       &   igreja_batista_florianopolis/sc_100002          postgres    false    251            "           1259    32087    media    TABLE       CREATE TABLE "igreja_batista_blumenau/sc_100003".media (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".media_id_seq'::regclass) NOT NULL,
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
 6   DROP TABLE "igreja_batista_blumenau/sc_100003".media;
    !   igreja_batista_blumenau/sc_100003            postgres    false    251    6                       1259    32022    media_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_blumenau/sc_100003".media_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE "igreja_batista_blumenau/sc_100003".media_id_seq;
    !   igreja_batista_blumenau/sc_100003          postgres    false    6    290                       0    0    media_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE "igreja_batista_blumenau/sc_100003".media_id_seq OWNED BY "igreja_batista_blumenau/sc_100003".media.id;
       !   igreja_batista_blumenau/sc_100003          postgres    false    278                       1259    31910 
   migrations    TABLE     �   CREATE TABLE "igreja_batista_florianopolis/sc_100002".migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
 @   DROP TABLE "igreja_batista_florianopolis/sc_100002".migrations;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    5            �            1259    31844    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_florianopolis/sc_100002".migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 J   DROP SEQUENCE "igreja_batista_florianopolis/sc_100002".migrations_id_seq;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    5    263                       0    0    migrations_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "igreja_batista_florianopolis/sc_100002".migrations_id_seq OWNED BY "igreja_batista_florianopolis/sc_100002".migrations.id;
       &   igreja_batista_florianopolis/sc_100002          postgres    false    252            #           1259    32094 
   migrations    TABLE     �   CREATE TABLE "igreja_batista_blumenau/sc_100003".migrations (
    id integer DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".migrations_id_seq'::regclass) NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
 ;   DROP TABLE "igreja_batista_blumenau/sc_100003".migrations;
    !   igreja_batista_blumenau/sc_100003            postgres    false    252    6                       1259    32024    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_blumenau/sc_100003".migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 E   DROP SEQUENCE "igreja_batista_blumenau/sc_100003".migrations_id_seq;
    !   igreja_batista_blumenau/sc_100003          postgres    false    291    6                       0    0    migrations_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "igreja_batista_blumenau/sc_100003".migrations_id_seq OWNED BY "igreja_batista_blumenau/sc_100003".migrations.id;
       !   igreja_batista_blumenau/sc_100003          postgres    false    279                       1259    31914    notes    TABLE     �  CREATE TABLE "igreja_batista_florianopolis/sc_100002".notes (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    note_type character varying(255) NOT NULL,
    applies_to_date date NOT NULL,
    users_id integer NOT NULL,
    status_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 ;   DROP TABLE "igreja_batista_florianopolis/sc_100002".notes;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    5            �            1259    31846    notes_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_florianopolis/sc_100002".notes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE "igreja_batista_florianopolis/sc_100002".notes_id_seq;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    264    5                       0    0    notes_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "igreja_batista_florianopolis/sc_100002".notes_id_seq OWNED BY "igreja_batista_florianopolis/sc_100002".notes.id;
       &   igreja_batista_florianopolis/sc_100002          postgres    false    253            $           1259    32098    notes    TABLE     �  CREATE TABLE "igreja_batista_blumenau/sc_100003".notes (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".notes_id_seq'::regclass) NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    note_type character varying(255) NOT NULL,
    applies_to_date date NOT NULL,
    users_id integer NOT NULL,
    status_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 6   DROP TABLE "igreja_batista_blumenau/sc_100003".notes;
    !   igreja_batista_blumenau/sc_100003            postgres    false    253    6                       1259    32026    notes_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_blumenau/sc_100003".notes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE "igreja_batista_blumenau/sc_100003".notes_id_seq;
    !   igreja_batista_blumenau/sc_100003          postgres    false    6    292            	           0    0    notes_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE "igreja_batista_blumenau/sc_100003".notes_id_seq OWNED BY "igreja_batista_blumenau/sc_100003".notes.id;
       !   igreja_batista_blumenau/sc_100003          postgres    false    280            �            1259    31848    people_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_florianopolis/sc_100002".people_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE "igreja_batista_florianopolis/sc_100002".people_id_seq;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    5            %           1259    32105    people    TABLE       CREATE TABLE "igreja_batista_blumenau/sc_100003".people (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".people_id_seq'::regclass) NOT NULL,
    name character varying(255),
    email character varying(255),
    mobile character varying(255),
    birth_at date,
    address character varying(255),
    country character varying(255),
    state character varying(255),
    city character varying(255),
    role character varying(255),
    is_active boolean DEFAULT true,
    is_verify boolean,
    is_visitor boolean,
    is_transferred boolean,
    is_responsible boolean,
    is_conversion boolean,
    is_baptism boolean,
    is_newvisitor boolean,
    note character varying(255),
    username character varying(255),
    password character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    status_id integer,
    cep character varying(10),
    sex character varying(1) DEFAULT NULL::character varying
);
 7   DROP TABLE "igreja_batista_blumenau/sc_100003".people;
    !   igreja_batista_blumenau/sc_100003            postgres    false    254    6                       1259    32028    people_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_blumenau/sc_100003".people_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE "igreja_batista_blumenau/sc_100003".people_id_seq;
    !   igreja_batista_blumenau/sc_100003          postgres    false    6            s           1259    36211    posts    TABLE     �   CREATE TABLE "igreja_batista_blumenau/sc_100003".posts (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 6   DROP TABLE "igreja_batista_blumenau/sc_100003".posts;
    !   igreja_batista_blumenau/sc_100003            postgres    false    6            n           1259    36155    posts_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_blumenau/sc_100003".posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 @   DROP SEQUENCE "igreja_batista_blumenau/sc_100003".posts_id_seq;
    !   igreja_batista_blumenau/sc_100003          postgres    false    6    371            
           0    0    posts_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE "igreja_batista_blumenau/sc_100003".posts_id_seq OWNED BY "igreja_batista_blumenau/sc_100003".posts.id;
       !   igreja_batista_blumenau/sc_100003          postgres    false    366            `           1259    33061    balances    TABLE     �   CREATE TABLE "igreja_batista_florianopolis/sc_100002".balances (
    id integer NOT NULL,
    user_id integer NOT NULL,
    amount double precision DEFAULT '0'::double precision NOT NULL
);
 >   DROP TABLE "igreja_batista_florianopolis/sc_100002".balances;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    5            ^           1259    33057    balances_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_florianopolis/sc_100002".balances_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 H   DROP SEQUENCE "igreja_batista_florianopolis/sc_100002".balances_id_seq;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    352    5                       0    0    balances_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "igreja_batista_florianopolis/sc_100002".balances_id_seq OWNED BY "igreja_batista_florianopolis/sc_100002".balances.id;
       &   igreja_batista_florianopolis/sc_100002          postgres    false    350            h           1259    33178    config_meta_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_florianopolis/sc_100002".config_meta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE "igreja_batista_florianopolis/sc_100002".config_meta_seq;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    5            \           1259    32483    config_meta    TABLE     �  CREATE TABLE "igreja_batista_florianopolis/sc_100002".config_meta (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".config_meta_seq'::regclass) NOT NULL,
    visitante_mes integer DEFAULT 0,
    batismo_mes integer DEFAULT 0,
    conversao_mes integer DEFAULT 0,
    pessoa_mes integer DEFAULT 0,
    visualizacao_mes integer DEFAULT 0,
    comentario_mes integer DEFAULT 0,
    grupo_ativo_ano integer DEFAULT 0,
    visitante_ano integer DEFAULT 0,
    batismo_ano integer DEFAULT 0,
    conversao_ano integer DEFAULT 0,
    pessoa_ano integer DEFAULT 0,
    visualizacao_ano integer DEFAULT 0,
    comentario_ano integer DEFAULT 0,
    grupo_ativo_mes integer DEFAULT 0,
    updated_at timestamp without time zone,
    publicacao_ano integer DEFAULT 0,
    publicacao_mes integer DEFAULT 0,
    ano character varying,
    fin_dizimo_mes integer DEFAULT 0,
    fin_oferta_mes integer DEFAULT 0,
    fin_despesa_mes integer DEFAULT 0,
    fin_acao_mes integer DEFAULT 0,
    fin_dizimo_ano integer DEFAULT 0,
    fin_oferta_ano integer DEFAULT 0,
    fin_acao_ano integer DEFAULT 0,
    fin_despesa_ano integer DEFAULT 0,
    created_at timestamp(0) without time zone,
    user_id integer
);
 A   DROP TABLE "igreja_batista_florianopolis/sc_100002".config_meta;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    360    5            �            1259    31852    config_system    TABLE     �  CREATE TABLE "igreja_batista_florianopolis/sc_100002".config_system (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".config_system_seq'::regclass) NOT NULL,
    delete_institution boolean DEFAULT true,
    delete_people boolean DEFAULT true,
    delete_note boolean DEFAULT true,
    delete_group boolean DEFAULT true,
    delete_financial boolean DEFAULT true,
    delete_calendar boolean DEFAULT true,
    view_periodo boolean DEFAULT true,
    view_dash boolean DEFAULT true,
    view_detail boolean DEFAULT true,
    add_people boolean DEFAULT true,
    add_institution boolean DEFAULT true,
    add_group boolean DEFAULT true,
    edit_people boolean DEFAULT true,
    created_at timestamp(0) without time zone,
    edit_institution boolean DEFAULT true,
    updated_at timestamp(0) without time zone,
    view_resumo_financeiro boolean DEFAULT true,
    user_id integer
);
 C   DROP TABLE "igreja_batista_florianopolis/sc_100002".config_system;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    242    5            �            1259    31826    domains_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_florianopolis/sc_100002".domains_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 G   DROP SEQUENCE "igreja_batista_florianopolis/sc_100002".domains_id_seq;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    5            ]           1259    32894    group    TABLE     �   CREATE TABLE "igreja_batista_florianopolis/sc_100002"."group" (
    id bigint NOT NULL,
    name_group character varying(255) NOT NULL,
    user_id character varying(255) NOT NULL,
    type character varying(64)
);
 =   DROP TABLE "igreja_batista_florianopolis/sc_100002"."group";
    &   igreja_batista_florianopolis/sc_100002            postgres    false    5            a           1259    33066 	   historics    TABLE     �  CREATE TABLE "igreja_batista_florianopolis/sc_100002".historics (
    id integer NOT NULL,
    user_id integer NOT NULL,
    type character varying(255) NOT NULL,
    amount double precision NOT NULL,
    total_before double precision NOT NULL,
    total_after double precision NOT NULL,
    user_id_transaction integer,
    date date NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    tipo character varying(255),
    observacao character varying(255),
    pag character varying(255),
    CONSTRAINT historics_type_check CHECK (((type)::text = ANY (ARRAY[('I'::character varying)::text, ('O'::character varying)::text, ('T'::character varying)::text])))
);
 ?   DROP TABLE "igreja_batista_florianopolis/sc_100002".historics;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    5            _           1259    33059    historics_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_florianopolis/sc_100002".historics_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 I   DROP SEQUENCE "igreja_batista_florianopolis/sc_100002".historics_id_seq;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    353    5                       0    0    historics_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "igreja_batista_florianopolis/sc_100002".historics_id_seq OWNED BY "igreja_batista_florianopolis/sc_100002".historics.id;
       &   igreja_batista_florianopolis/sc_100002          postgres    false    351            �            1259    31840    institutions_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_florianopolis/sc_100002".institutions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE "igreja_batista_florianopolis/sc_100002".institutions_id_seq;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    5            	           1259    31921    people    TABLE       CREATE TABLE "igreja_batista_florianopolis/sc_100002".people (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".people_id_seq'::regclass) NOT NULL,
    name character varying(255),
    email character varying(255),
    mobile character varying(255),
    birth_at date,
    address character varying(255),
    country character varying(255),
    state character varying(255),
    city character varying(255),
    role character varying(255),
    is_active boolean DEFAULT true,
    is_verify boolean,
    is_visitor boolean,
    is_transferred boolean,
    is_responsible boolean,
    is_conversion boolean,
    is_baptism boolean,
    is_newvisitor boolean,
    note character varying(255),
    username character varying(255),
    password character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    status_id integer,
    cep character varying(10),
    sex character varying(1) DEFAULT NULL::character varying
);
 <   DROP TABLE "igreja_batista_florianopolis/sc_100002".people;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    254    5            c           1259    33119    posts    TABLE     �   CREATE TABLE "igreja_batista_florianopolis/sc_100002".posts (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 ;   DROP TABLE "igreja_batista_florianopolis/sc_100002".posts;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    5            b           1259    33115    posts_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_florianopolis/sc_100002".posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 E   DROP SEQUENCE "igreja_batista_florianopolis/sc_100002".posts_id_seq;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    5    355                       0    0    posts_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "igreja_batista_florianopolis/sc_100002".posts_id_seq OWNED BY "igreja_batista_florianopolis/sc_100002".posts.id;
       &   igreja_batista_florianopolis/sc_100002          postgres    false    354            �           1259    36291    balances    TABLE     �   CREATE TABLE "igreja_batista_manaus/am_100004".balances (
    id integer NOT NULL,
    user_id integer NOT NULL,
    amount double precision DEFAULT '0'::double precision NOT NULL
);
 7   DROP TABLE "igreja_batista_manaus/am_100004".balances;
       igreja_batista_manaus/am_100004            postgres    false    11            }           1259    36283    balances_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_manaus/am_100004".balances_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 A   DROP SEQUENCE "igreja_batista_manaus/am_100004".balances_id_seq;
       igreja_batista_manaus/am_100004          postgres    false    11    385                       0    0    balances_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE "igreja_batista_manaus/am_100004".balances_id_seq OWNED BY "igreja_batista_manaus/am_100004".balances.id;
          igreja_batista_manaus/am_100004          postgres    false    381            ~           1259    36285    config_meta_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_manaus/am_100004".config_meta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE "igreja_batista_manaus/am_100004".config_meta_seq;
       igreja_batista_manaus/am_100004          postgres    false    11            �           1259    36298    config_meta    TABLE     �  CREATE TABLE "igreja_batista_manaus/am_100004".config_meta (
    id bigint DEFAULT nextval('"igreja_batista_manaus/am_100004".config_meta_seq'::regclass) NOT NULL,
    visitante_mes integer DEFAULT 0,
    batismo_mes integer DEFAULT 0,
    conversao_mes integer DEFAULT 0,
    pessoa_mes integer DEFAULT 0,
    visualizacao_mes integer DEFAULT 0,
    comentario_mes integer DEFAULT 0,
    grupo_ativo_ano integer DEFAULT 0,
    visitante_ano integer DEFAULT 0,
    batismo_ano integer DEFAULT 0,
    conversao_ano integer DEFAULT 0,
    pessoa_ano integer DEFAULT 0,
    visualizacao_ano integer DEFAULT 0,
    comentario_ano integer DEFAULT 0,
    grupo_ativo_mes integer DEFAULT 0,
    updated_at timestamp(6) without time zone,
    publicacao_ano integer DEFAULT 0,
    publicacao_mes integer DEFAULT 0,
    ano character varying,
    fin_dizimo_mes integer DEFAULT 0,
    fin_oferta_mes integer DEFAULT 0,
    fin_despesa_mes integer DEFAULT 0,
    fin_acao_mes integer DEFAULT 0,
    fin_dizimo_ano integer DEFAULT 0,
    fin_oferta_ano integer DEFAULT 0,
    fin_acao_ano integer DEFAULT 0,
    fin_despesa_ano integer DEFAULT 0,
    created_at timestamp(0) without time zone,
    user_id integer
);
 :   DROP TABLE "igreja_batista_manaus/am_100004".config_meta;
       igreja_batista_manaus/am_100004            postgres    false    382    11            N           1259    32333    config_system    TABLE     �  CREATE TABLE "igreja_batista_manaus/am_100004".config_system (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".config_system_seq'::regclass) NOT NULL,
    delete_institution boolean DEFAULT true,
    delete_people boolean DEFAULT true,
    delete_note boolean DEFAULT true,
    delete_group boolean DEFAULT true,
    delete_financial boolean DEFAULT true,
    delete_calendar boolean DEFAULT true,
    view_periodo boolean DEFAULT true,
    view_dash boolean DEFAULT true,
    view_detail boolean DEFAULT true,
    add_people boolean DEFAULT true,
    add_institution boolean DEFAULT true,
    add_group boolean DEFAULT true,
    edit_people boolean DEFAULT true,
    updated_at timestamp(0) without time zone,
    edit_institution boolean DEFAULT true,
    created_at timestamp(0) without time zone,
    view_resumo_financeiro boolean DEFAULT true,
    user_id integer
);
 <   DROP TABLE "igreja_batista_manaus/am_100004".config_system;
       igreja_batista_manaus/am_100004            postgres    false    242    11            @           1259    32303    config_system_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_manaus/am_100004".config_system_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE "igreja_batista_manaus/am_100004".config_system_seq;
       igreja_batista_manaus/am_100004          postgres    false    11            A           1259    32305    domains_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_manaus/am_100004".domains_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 @   DROP SEQUENCE "igreja_batista_manaus/am_100004".domains_id_seq;
       igreja_batista_manaus/am_100004          postgres    false    11            O           1259    32337    email_template    TABLE     �  CREATE TABLE "igreja_batista_manaus/am_100004".email_template (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".email_template_id_seq'::regclass) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    content text NOT NULL,
    name character varying(255) NOT NULL,
    subject character varying(255) NOT NULL
);
 =   DROP TABLE "igreja_batista_manaus/am_100004".email_template;
       igreja_batista_manaus/am_100004            postgres    false    244    11            B           1259    32307    email_template_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_manaus/am_100004".email_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE "igreja_batista_manaus/am_100004".email_template_id_seq;
       igreja_batista_manaus/am_100004          postgres    false    335    11                       0    0    email_template_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "igreja_batista_manaus/am_100004".email_template_id_seq OWNED BY "igreja_batista_manaus/am_100004".email_template.id;
          igreja_batista_manaus/am_100004          postgres    false    322            P           1259    32344    events    TABLE     a  CREATE TABLE "igreja_batista_manaus/am_100004".events (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".events_id_seq'::regclass) NOT NULL,
    title character varying(255) NOT NULL,
    start date NOT NULL,
    "end" date NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 5   DROP TABLE "igreja_batista_manaus/am_100004".events;
       igreja_batista_manaus/am_100004            postgres    false    266    11            C           1259    32309    events_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_manaus/am_100004".events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE "igreja_batista_manaus/am_100004".events_id_seq;
       igreja_batista_manaus/am_100004          postgres    false    336    11                       0    0    events_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE "igreja_batista_manaus/am_100004".events_id_seq OWNED BY "igreja_batista_manaus/am_100004".events.id;
          igreja_batista_manaus/am_100004          postgres    false    323            Q           1259    32348    example    TABLE     �  CREATE TABLE "igreja_batista_manaus/am_100004".example (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".example_id_seq'::regclass) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    name character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    status_id integer NOT NULL
);
 6   DROP TABLE "igreja_batista_manaus/am_100004".example;
       igreja_batista_manaus/am_100004            postgres    false    245    11            D           1259    32311    example_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_manaus/am_100004".example_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE "igreja_batista_manaus/am_100004".example_id_seq;
       igreja_batista_manaus/am_100004          postgres    false    337    11                       0    0    example_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE "igreja_batista_manaus/am_100004".example_id_seq OWNED BY "igreja_batista_manaus/am_100004".example.id;
          igreja_batista_manaus/am_100004          postgres    false    324            R           1259    32355    failed_jobs    TABLE     p  CREATE TABLE "igreja_batista_manaus/am_100004".failed_jobs (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".failed_jobs_id_seq'::regclass) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
 :   DROP TABLE "igreja_batista_manaus/am_100004".failed_jobs;
       igreja_batista_manaus/am_100004            postgres    false    246    11            E           1259    32313    failed_jobs_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_manaus/am_100004".failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE "igreja_batista_manaus/am_100004".failed_jobs_id_seq;
       igreja_batista_manaus/am_100004          postgres    false    11    338                       0    0    failed_jobs_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE "igreja_batista_manaus/am_100004".failed_jobs_id_seq OWNED BY "igreja_batista_manaus/am_100004".failed_jobs.id;
          igreja_batista_manaus/am_100004          postgres    false    325            S           1259    32363    folder    TABLE     [  CREATE TABLE "igreja_batista_manaus/am_100004".folder (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".folder_id_seq'::regclass) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    name character varying(255) NOT NULL,
    folder_id integer,
    resource boolean
);
 5   DROP TABLE "igreja_batista_manaus/am_100004".folder;
       igreja_batista_manaus/am_100004            postgres    false    247    11            F           1259    32315    folder_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_manaus/am_100004".folder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE "igreja_batista_manaus/am_100004".folder_id_seq;
       igreja_batista_manaus/am_100004          postgres    false    339    11                       0    0    folder_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE "igreja_batista_manaus/am_100004".folder_id_seq OWNED BY "igreja_batista_manaus/am_100004".folder.id;
          igreja_batista_manaus/am_100004          postgres    false    326            T           1259    32367    form    TABLE     �  CREATE TABLE "igreja_batista_manaus/am_100004".form (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".form_id_seq'::regclass) NOT NULL,
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
 3   DROP TABLE "igreja_batista_manaus/am_100004".form;
       igreja_batista_manaus/am_100004            postgres    false    249    11            U           1259    32374 
   form_field    TABLE     s  CREATE TABLE "igreja_batista_manaus/am_100004".form_field (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".form_field_id_seq'::regclass) NOT NULL,
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
 9   DROP TABLE "igreja_batista_manaus/am_100004".form_field;
       igreja_batista_manaus/am_100004            postgres    false    248    11            G           1259    32317    form_field_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_manaus/am_100004".form_field_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE "igreja_batista_manaus/am_100004".form_field_id_seq;
       igreja_batista_manaus/am_100004          postgres    false    341    11                       0    0    form_field_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE "igreja_batista_manaus/am_100004".form_field_id_seq OWNED BY "igreja_batista_manaus/am_100004".form_field.id;
          igreja_batista_manaus/am_100004          postgres    false    327            H           1259    32319    form_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_manaus/am_100004".form_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE "igreja_batista_manaus/am_100004".form_id_seq;
       igreja_batista_manaus/am_100004          postgres    false    11    340                       0    0    form_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE "igreja_batista_manaus/am_100004".form_id_seq OWNED BY "igreja_batista_manaus/am_100004".form.id;
          igreja_batista_manaus/am_100004          postgres    false    328            �           1259    36327    group    TABLE     �   CREATE TABLE "igreja_batista_manaus/am_100004"."group" (
    id bigint NOT NULL,
    name_group character varying(255) NOT NULL,
    user_id character varying(255) NOT NULL,
    type character varying(64)
);
 6   DROP TABLE "igreja_batista_manaus/am_100004"."group";
       igreja_batista_manaus/am_100004            postgres    false    11            �           1259    36335 	   historics    TABLE     �  CREATE TABLE "igreja_batista_manaus/am_100004".historics (
    id integer NOT NULL,
    user_id integer NOT NULL,
    type character varying(255) NOT NULL,
    amount double precision NOT NULL,
    total_before double precision NOT NULL,
    total_after double precision NOT NULL,
    user_id_transaction integer,
    date date NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    tipo character varying(255),
    observacao character varying(255),
    pag character varying(255),
    CONSTRAINT historics_type_check CHECK (((type)::text = ANY (ARRAY[('I'::character varying)::text, ('O'::character varying)::text, ('T'::character varying)::text])))
);
 8   DROP TABLE "igreja_batista_manaus/am_100004".historics;
       igreja_batista_manaus/am_100004            postgres    false    11                       1259    36287    historics_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_manaus/am_100004".historics_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 B   DROP SEQUENCE "igreja_batista_manaus/am_100004".historics_id_seq;
       igreja_batista_manaus/am_100004          postgres    false    388    11                       0    0    historics_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE "igreja_batista_manaus/am_100004".historics_id_seq OWNED BY "igreja_batista_manaus/am_100004".historics.id;
          igreja_batista_manaus/am_100004          postgres    false    383            I           1259    32321    institutions_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_manaus/am_100004".institutions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE "igreja_batista_manaus/am_100004".institutions_id_seq;
       igreja_batista_manaus/am_100004          postgres    false    11            V           1259    32388    media    TABLE       CREATE TABLE "igreja_batista_manaus/am_100004".media (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".media_id_seq'::regclass) NOT NULL,
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
 4   DROP TABLE "igreja_batista_manaus/am_100004".media;
       igreja_batista_manaus/am_100004            postgres    false    251    11            J           1259    32323    media_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_manaus/am_100004".media_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE "igreja_batista_manaus/am_100004".media_id_seq;
       igreja_batista_manaus/am_100004          postgres    false    342    11                       0    0    media_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE "igreja_batista_manaus/am_100004".media_id_seq OWNED BY "igreja_batista_manaus/am_100004".media.id;
          igreja_batista_manaus/am_100004          postgres    false    330            W           1259    32395 
   migrations    TABLE     �   CREATE TABLE "igreja_batista_manaus/am_100004".migrations (
    id integer DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".migrations_id_seq'::regclass) NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
 9   DROP TABLE "igreja_batista_manaus/am_100004".migrations;
       igreja_batista_manaus/am_100004            postgres    false    252    11            K           1259    32325    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_manaus/am_100004".migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 C   DROP SEQUENCE "igreja_batista_manaus/am_100004".migrations_id_seq;
       igreja_batista_manaus/am_100004          postgres    false    343    11                       0    0    migrations_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE "igreja_batista_manaus/am_100004".migrations_id_seq OWNED BY "igreja_batista_manaus/am_100004".migrations.id;
          igreja_batista_manaus/am_100004          postgres    false    331            X           1259    32399    notes    TABLE     �  CREATE TABLE "igreja_batista_manaus/am_100004".notes (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".notes_id_seq'::regclass) NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    note_type character varying(255) NOT NULL,
    applies_to_date date NOT NULL,
    users_id integer NOT NULL,
    status_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 4   DROP TABLE "igreja_batista_manaus/am_100004".notes;
       igreja_batista_manaus/am_100004            postgres    false    253    11            L           1259    32327    notes_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_manaus/am_100004".notes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE "igreja_batista_manaus/am_100004".notes_id_seq;
       igreja_batista_manaus/am_100004          postgres    false    344    11                       0    0    notes_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE "igreja_batista_manaus/am_100004".notes_id_seq OWNED BY "igreja_batista_manaus/am_100004".notes.id;
          igreja_batista_manaus/am_100004          postgres    false    332            Y           1259    32406    people    TABLE       CREATE TABLE "igreja_batista_manaus/am_100004".people (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".people_id_seq'::regclass) NOT NULL,
    name character varying(255),
    email character varying(255),
    mobile character varying(255),
    birth_at date,
    address character varying(255),
    country character varying(255),
    state character varying(255),
    city character varying(255),
    role character varying(255),
    is_active boolean DEFAULT true,
    is_verify boolean,
    is_visitor boolean,
    is_transferred boolean,
    is_responsible boolean,
    is_conversion boolean,
    is_baptism boolean,
    is_newvisitor boolean,
    note character varying(255),
    username character varying(255),
    password character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    status_id integer,
    cep character varying(10),
    sex character varying(1) DEFAULT NULL::character varying
);
 5   DROP TABLE "igreja_batista_manaus/am_100004".people;
       igreja_batista_manaus/am_100004            postgres    false    254    11            M           1259    32329    people_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_manaus/am_100004".people_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE "igreja_batista_manaus/am_100004".people_id_seq;
       igreja_batista_manaus/am_100004          postgres    false    11            �           1259    36345    posts    TABLE     �   CREATE TABLE "igreja_batista_manaus/am_100004".posts (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 4   DROP TABLE "igreja_batista_manaus/am_100004".posts;
       igreja_batista_manaus/am_100004            postgres    false    11            �           1259    36289    posts_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_manaus/am_100004".posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 >   DROP SEQUENCE "igreja_batista_manaus/am_100004".posts_id_seq;
       igreja_batista_manaus/am_100004          postgres    false    11    389                       0    0    posts_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE "igreja_batista_manaus/am_100004".posts_id_seq OWNED BY "igreja_batista_manaus/am_100004".posts.id;
          igreja_batista_manaus/am_100004          postgres    false    384            x           1259    36224    balances    TABLE     �   CREATE TABLE "igreja_batista_sao_jose/sc_100001".balances (
    id integer NOT NULL,
    user_id integer NOT NULL,
    amount double precision DEFAULT '0'::double precision NOT NULL
);
 9   DROP TABLE "igreja_batista_sao_jose/sc_100001".balances;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    7            t           1259    36216    balances_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_sao_jose/sc_100001".balances_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 C   DROP SEQUENCE "igreja_batista_sao_jose/sc_100001".balances_id_seq;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    376    7                       0    0    balances_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE "igreja_batista_sao_jose/sc_100001".balances_id_seq OWNED BY "igreja_batista_sao_jose/sc_100001".balances.id;
       !   igreja_batista_sao_jose/sc_100001          postgres    false    372            u           1259    36218    config_meta_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_sao_jose/sc_100001".config_meta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE "igreja_batista_sao_jose/sc_100001".config_meta_seq;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    7            y           1259    36231    config_meta    TABLE     �  CREATE TABLE "igreja_batista_sao_jose/sc_100001".config_meta (
    id bigint DEFAULT nextval('"igreja_batista_sao_jose/sc_100001".config_meta_seq'::regclass) NOT NULL,
    visitante_mes integer DEFAULT 0,
    batismo_mes integer DEFAULT 0,
    conversao_mes integer DEFAULT 0,
    pessoa_mes integer DEFAULT 0,
    visualizacao_mes integer DEFAULT 0,
    comentario_mes integer DEFAULT 0,
    grupo_ativo_ano integer DEFAULT 0,
    visitante_ano integer DEFAULT 0,
    batismo_ano integer DEFAULT 0,
    conversao_ano integer DEFAULT 0,
    pessoa_ano integer DEFAULT 0,
    visualizacao_ano integer DEFAULT 0,
    comentario_ano integer DEFAULT 0,
    grupo_ativo_mes integer DEFAULT 0,
    updated_at timestamp(6) without time zone,
    publicacao_ano integer DEFAULT 0,
    publicacao_mes integer DEFAULT 0,
    ano character varying,
    fin_dizimo_mes integer DEFAULT 0,
    fin_oferta_mes integer DEFAULT 0,
    fin_despesa_mes integer DEFAULT 0,
    fin_acao_mes integer DEFAULT 0,
    fin_dizimo_ano integer DEFAULT 0,
    fin_oferta_ano integer DEFAULT 0,
    fin_acao_ano integer DEFAULT 0,
    fin_despesa_ano integer DEFAULT 0,
    created_at timestamp(0) without time zone,
    user_id integer
);
 <   DROP TABLE "igreja_batista_sao_jose/sc_100001".config_meta;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    373    7            4           1259    32181    config_system    TABLE     �  CREATE TABLE "igreja_batista_sao_jose/sc_100001".config_system (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".config_system_seq'::regclass) NOT NULL,
    delete_institution boolean DEFAULT true,
    delete_people boolean DEFAULT true,
    delete_note boolean DEFAULT true,
    delete_group boolean DEFAULT true,
    delete_financial boolean DEFAULT true,
    delete_calendar boolean DEFAULT true,
    view_periodo boolean DEFAULT true,
    view_dash boolean DEFAULT true,
    view_detail boolean DEFAULT true,
    add_people boolean DEFAULT true,
    add_institution boolean DEFAULT true,
    add_group boolean DEFAULT true,
    edit_people boolean DEFAULT true,
    updated_at timestamp(0) without time zone,
    edit_institution boolean DEFAULT true,
    created_at timestamp(0) without time zone,
    view_resumo_financeiro boolean DEFAULT true,
    user_id integer
);
 >   DROP TABLE "igreja_batista_sao_jose/sc_100001".config_system;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    242    7            &           1259    32151    config_system_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_sao_jose/sc_100001".config_system_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE "igreja_batista_sao_jose/sc_100001".config_system_seq;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    7            '           1259    32153    domains_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_sao_jose/sc_100001".domains_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 B   DROP SEQUENCE "igreja_batista_sao_jose/sc_100001".domains_id_seq;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    7            5           1259    32185    email_template    TABLE     �  CREATE TABLE "igreja_batista_sao_jose/sc_100001".email_template (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".email_template_id_seq'::regclass) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    content text NOT NULL,
    name character varying(255) NOT NULL,
    subject character varying(255) NOT NULL
);
 ?   DROP TABLE "igreja_batista_sao_jose/sc_100001".email_template;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    244    7            (           1259    32155    email_template_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_sao_jose/sc_100001".email_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE "igreja_batista_sao_jose/sc_100001".email_template_id_seq;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    309    7                       0    0    email_template_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "igreja_batista_sao_jose/sc_100001".email_template_id_seq OWNED BY "igreja_batista_sao_jose/sc_100001".email_template.id;
       !   igreja_batista_sao_jose/sc_100001          postgres    false    296            6           1259    32192    events    TABLE     c  CREATE TABLE "igreja_batista_sao_jose/sc_100001".events (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".events_id_seq'::regclass) NOT NULL,
    title character varying(255) NOT NULL,
    start date NOT NULL,
    "end" date NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 7   DROP TABLE "igreja_batista_sao_jose/sc_100001".events;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    266    7            )           1259    32157    events_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_sao_jose/sc_100001".events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE "igreja_batista_sao_jose/sc_100001".events_id_seq;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    7    310                       0    0    events_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE "igreja_batista_sao_jose/sc_100001".events_id_seq OWNED BY "igreja_batista_sao_jose/sc_100001".events.id;
       !   igreja_batista_sao_jose/sc_100001          postgres    false    297            7           1259    32196    example    TABLE     �  CREATE TABLE "igreja_batista_sao_jose/sc_100001".example (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".example_id_seq'::regclass) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    name character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    status_id integer NOT NULL
);
 8   DROP TABLE "igreja_batista_sao_jose/sc_100001".example;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    245    7            *           1259    32159    example_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_sao_jose/sc_100001".example_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE "igreja_batista_sao_jose/sc_100001".example_id_seq;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    311    7                       0    0    example_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE "igreja_batista_sao_jose/sc_100001".example_id_seq OWNED BY "igreja_batista_sao_jose/sc_100001".example.id;
       !   igreja_batista_sao_jose/sc_100001          postgres    false    298            8           1259    32203    failed_jobs    TABLE     r  CREATE TABLE "igreja_batista_sao_jose/sc_100001".failed_jobs (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".failed_jobs_id_seq'::regclass) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
 <   DROP TABLE "igreja_batista_sao_jose/sc_100001".failed_jobs;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    246    7            +           1259    32161    failed_jobs_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_sao_jose/sc_100001".failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE "igreja_batista_sao_jose/sc_100001".failed_jobs_id_seq;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    7    312                       0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "igreja_batista_sao_jose/sc_100001".failed_jobs_id_seq OWNED BY "igreja_batista_sao_jose/sc_100001".failed_jobs.id;
       !   igreja_batista_sao_jose/sc_100001          postgres    false    299            9           1259    32211    folder    TABLE     ]  CREATE TABLE "igreja_batista_sao_jose/sc_100001".folder (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".folder_id_seq'::regclass) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    name character varying(255) NOT NULL,
    folder_id integer,
    resource boolean
);
 7   DROP TABLE "igreja_batista_sao_jose/sc_100001".folder;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    247    7            ,           1259    32163    folder_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_sao_jose/sc_100001".folder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE "igreja_batista_sao_jose/sc_100001".folder_id_seq;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    7    313                        0    0    folder_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE "igreja_batista_sao_jose/sc_100001".folder_id_seq OWNED BY "igreja_batista_sao_jose/sc_100001".folder.id;
       !   igreja_batista_sao_jose/sc_100001          postgres    false    300            :           1259    32215    form    TABLE     �  CREATE TABLE "igreja_batista_sao_jose/sc_100001".form (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".form_id_seq'::regclass) NOT NULL,
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
 5   DROP TABLE "igreja_batista_sao_jose/sc_100001".form;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    249    7            ;           1259    32222 
   form_field    TABLE     u  CREATE TABLE "igreja_batista_sao_jose/sc_100001".form_field (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".form_field_id_seq'::regclass) NOT NULL,
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
 ;   DROP TABLE "igreja_batista_sao_jose/sc_100001".form_field;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    248    7            -           1259    32165    form_field_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_sao_jose/sc_100001".form_field_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE "igreja_batista_sao_jose/sc_100001".form_field_id_seq;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    7    315            !           0    0    form_field_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "igreja_batista_sao_jose/sc_100001".form_field_id_seq OWNED BY "igreja_batista_sao_jose/sc_100001".form_field.id;
       !   igreja_batista_sao_jose/sc_100001          postgres    false    301            .           1259    32167    form_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_sao_jose/sc_100001".form_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE "igreja_batista_sao_jose/sc_100001".form_id_seq;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    314    7            "           0    0    form_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE "igreja_batista_sao_jose/sc_100001".form_id_seq OWNED BY "igreja_batista_sao_jose/sc_100001".form.id;
       !   igreja_batista_sao_jose/sc_100001          postgres    false    302            z           1259    36260    group    TABLE     �   CREATE TABLE "igreja_batista_sao_jose/sc_100001"."group" (
    id bigint NOT NULL,
    name_group character varying(255) NOT NULL,
    user_id character varying(255) NOT NULL,
    type character varying(64)
);
 8   DROP TABLE "igreja_batista_sao_jose/sc_100001"."group";
    !   igreja_batista_sao_jose/sc_100001            postgres    false    7            {           1259    36268 	   historics    TABLE     �  CREATE TABLE "igreja_batista_sao_jose/sc_100001".historics (
    id integer NOT NULL,
    user_id integer NOT NULL,
    type character varying(255) NOT NULL,
    amount double precision NOT NULL,
    total_before double precision NOT NULL,
    total_after double precision NOT NULL,
    user_id_transaction integer,
    date date NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    tipo character varying(255),
    observacao character varying(255),
    pag character varying(255),
    CONSTRAINT historics_type_check CHECK (((type)::text = ANY (ARRAY[('I'::character varying)::text, ('O'::character varying)::text, ('T'::character varying)::text])))
);
 :   DROP TABLE "igreja_batista_sao_jose/sc_100001".historics;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    7            v           1259    36220    historics_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_sao_jose/sc_100001".historics_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 D   DROP SEQUENCE "igreja_batista_sao_jose/sc_100001".historics_id_seq;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    7    379            #           0    0    historics_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE "igreja_batista_sao_jose/sc_100001".historics_id_seq OWNED BY "igreja_batista_sao_jose/sc_100001".historics.id;
       !   igreja_batista_sao_jose/sc_100001          postgres    false    374            /           1259    32169    institutions_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_sao_jose/sc_100001".institutions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE "igreja_batista_sao_jose/sc_100001".institutions_id_seq;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    7            <           1259    32236    media    TABLE       CREATE TABLE "igreja_batista_sao_jose/sc_100001".media (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".media_id_seq'::regclass) NOT NULL,
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
 6   DROP TABLE "igreja_batista_sao_jose/sc_100001".media;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    251    7            0           1259    32171    media_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_sao_jose/sc_100001".media_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE "igreja_batista_sao_jose/sc_100001".media_id_seq;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    316    7            $           0    0    media_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE "igreja_batista_sao_jose/sc_100001".media_id_seq OWNED BY "igreja_batista_sao_jose/sc_100001".media.id;
       !   igreja_batista_sao_jose/sc_100001          postgres    false    304            =           1259    32243 
   migrations    TABLE     �   CREATE TABLE "igreja_batista_sao_jose/sc_100001".migrations (
    id integer DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".migrations_id_seq'::regclass) NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
 ;   DROP TABLE "igreja_batista_sao_jose/sc_100001".migrations;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    252    7            1           1259    32173    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_sao_jose/sc_100001".migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 E   DROP SEQUENCE "igreja_batista_sao_jose/sc_100001".migrations_id_seq;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    317    7            %           0    0    migrations_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "igreja_batista_sao_jose/sc_100001".migrations_id_seq OWNED BY "igreja_batista_sao_jose/sc_100001".migrations.id;
       !   igreja_batista_sao_jose/sc_100001          postgres    false    305            >           1259    32247    notes    TABLE     �  CREATE TABLE "igreja_batista_sao_jose/sc_100001".notes (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".notes_id_seq'::regclass) NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    note_type character varying(255) NOT NULL,
    applies_to_date date NOT NULL,
    users_id integer NOT NULL,
    status_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 6   DROP TABLE "igreja_batista_sao_jose/sc_100001".notes;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    253    7            2           1259    32175    notes_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_sao_jose/sc_100001".notes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE "igreja_batista_sao_jose/sc_100001".notes_id_seq;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    318    7            &           0    0    notes_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE "igreja_batista_sao_jose/sc_100001".notes_id_seq OWNED BY "igreja_batista_sao_jose/sc_100001".notes.id;
       !   igreja_batista_sao_jose/sc_100001          postgres    false    306            ?           1259    32254    people    TABLE       CREATE TABLE "igreja_batista_sao_jose/sc_100001".people (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".people_id_seq'::regclass) NOT NULL,
    name character varying(255),
    email character varying(255),
    mobile character varying(255),
    birth_at date,
    address character varying(255),
    country character varying(255),
    state character varying(255),
    city character varying(255),
    role character varying(255),
    is_active boolean DEFAULT true,
    is_verify boolean,
    is_visitor boolean,
    is_transferred boolean,
    is_responsible boolean,
    is_conversion boolean,
    is_baptism boolean,
    is_newvisitor boolean,
    note character varying(255),
    username character varying(255),
    password character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    status_id integer,
    cep character varying(10),
    sex character varying(1) DEFAULT NULL::character varying
);
 7   DROP TABLE "igreja_batista_sao_jose/sc_100001".people;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    254    7            3           1259    32177    people_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_sao_jose/sc_100001".people_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE "igreja_batista_sao_jose/sc_100001".people_id_seq;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    7            |           1259    36278    posts    TABLE     �   CREATE TABLE "igreja_batista_sao_jose/sc_100001".posts (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 6   DROP TABLE "igreja_batista_sao_jose/sc_100001".posts;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    7            w           1259    36222    posts_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_sao_jose/sc_100001".posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 @   DROP SEQUENCE "igreja_batista_sao_jose/sc_100001".posts_id_seq;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    380    7            '           0    0    posts_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE "igreja_batista_sao_jose/sc_100001".posts_id_seq OWNED BY "igreja_batista_sao_jose/sc_100001".posts.id;
       !   igreja_batista_sao_jose/sc_100001          postgres    false    375            �            1259    31071    config_system_seq    SEQUENCE     z   CREATE SEQUENCE public.config_system_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.config_system_seq;
       public          postgres    false            �            1259    31115    email_template    TABLE       CREATE TABLE public.email_template (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    content text NOT NULL,
    name character varying(255) NOT NULL,
    subject character varying(255) NOT NULL
);
 "   DROP TABLE public.email_template;
       public            postgres    false            �            1259    31073    email_template_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.email_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.email_template_id_seq;
       public          postgres    false    220            (           0    0    email_template_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.email_template_id_seq OWNED BY public.email_template.id;
          public          postgres    false    201            �            1259    31122    example    TABLE       CREATE TABLE public.example (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    name character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    status_id integer NOT NULL
);
    DROP TABLE public.example;
       public            postgres    false            �            1259    31075    example_id_seq    SEQUENCE     w   CREATE SEQUENCE public.example_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.example_id_seq;
       public          postgres    false    221            )           0    0    example_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.example_id_seq OWNED BY public.example.id;
          public          postgres    false    202            �            1259    31129    failed_jobs    TABLE     �   CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public            postgres    false            �            1259    31077    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    222            *           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    203            �            1259    31137    folder    TABLE     �   CREATE TABLE public.folder (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    name character varying(255) NOT NULL,
    folder_id integer,
    resource boolean
);
    DROP TABLE public.folder;
       public            postgres    false            �            1259    31079    folder_id_seq    SEQUENCE     v   CREATE SEQUENCE public.folder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.folder_id_seq;
       public          postgres    false    223            +           0    0    folder_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.folder_id_seq OWNED BY public.folder.id;
          public          postgres    false    204            �            1259    31141    form    TABLE     {  CREATE TABLE public.form (
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
    DROP TABLE public.form;
       public            postgres    false            �            1259    31148 
   form_field    TABLE        CREATE TABLE public.form_field (
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
    DROP TABLE public.form_field;
       public            postgres    false            �            1259    31081    form_field_id_seq    SEQUENCE     z   CREATE SEQUENCE public.form_field_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.form_field_id_seq;
       public          postgres    false    225            ,           0    0    form_field_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.form_field_id_seq OWNED BY public.form_field.id;
          public          postgres    false    205            �            1259    31083    form_id_seq    SEQUENCE     t   CREATE SEQUENCE public.form_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.form_id_seq;
       public          postgres    false    224            -           0    0    form_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.form_id_seq OWNED BY public.form.id;
          public          postgres    false    206            �            1259    31085    institutions_id_seq    SEQUENCE     |   CREATE SEQUENCE public.institutions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.institutions_id_seq;
       public          postgres    false            �            1259    31155    institution    TABLE     �  CREATE TABLE public.institution (
    id bigint DEFAULT nextval('public.institutions_id_seq'::regclass) NOT NULL,
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
    DROP TABLE public.institution;
       public            postgres    false    207            g           1259    33175    user_likes_id_seq    SEQUENCE     z   CREATE SEQUENCE public.user_likes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.user_likes_id_seq;
       public          postgres    false            d           1259    33159    likes    TABLE     F  CREATE TABLE public.likes (
    id integer DEFAULT nextval('public.user_likes_id_seq'::regclass) NOT NULL,
    user_id bigint NOT NULL,
    likeable_id bigint NOT NULL,
    likeable_type character varying,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    account_id integer
);
    DROP TABLE public.likes;
       public            postgres    false    359            �            1259    31162    media    TABLE     �  CREATE TABLE public.media (
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
       public            postgres    false            �            1259    31087    media_id_seq    SEQUENCE     u   CREATE SEQUENCE public.media_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.media_id_seq;
       public          postgres    false    227            .           0    0    media_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.media_id_seq OWNED BY public.media.id;
          public          postgres    false    208            �            1259    31169 	   menu_role    TABLE     �   CREATE TABLE public.menu_role (
    id bigint NOT NULL,
    role_name character varying(255) NOT NULL,
    menus_id integer NOT NULL
);
    DROP TABLE public.menu_role;
       public            postgres    false            �            1259    31089    menu_role_id_seq    SEQUENCE     y   CREATE SEQUENCE public.menu_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.menu_role_id_seq;
       public          postgres    false    228            /           0    0    menu_role_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.menu_role_id_seq OWNED BY public.menu_role.id;
          public          postgres    false    209            �            1259    31173    menulist    TABLE     c   CREATE TABLE public.menulist (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);
    DROP TABLE public.menulist;
       public            postgres    false            �            1259    31091    menulist_id_seq    SEQUENCE     x   CREATE SEQUENCE public.menulist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.menulist_id_seq;
       public          postgres    false    229            0           0    0    menulist_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.menulist_id_seq OWNED BY public.menulist.id;
          public          postgres    false    210            �            1259    31177    menus    TABLE     1  CREATE TABLE public.menus (
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
    DROP TABLE public.menus;
       public            postgres    false            �            1259    31093    menus_id_seq    SEQUENCE     u   CREATE SEQUENCE public.menus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.menus_id_seq;
       public          postgres    false    230            1           0    0    menus_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.menus_id_seq OWNED BY public.menus.id;
          public          postgres    false    211            �            1259    31184 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public            postgres    false            �            1259    31095    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    231            2           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    212            �            1259    31188    model_has_permissions    TABLE     �   CREATE TABLE public.model_has_permissions (
    permission_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL
);
 )   DROP TABLE public.model_has_permissions;
       public            postgres    false            �            1259    31191    model_has_roles    TABLE     �   CREATE TABLE public.model_has_roles (
    role_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL
);
 #   DROP TABLE public.model_has_roles;
       public            postgres    false            �            1259    31194    notes1    TABLE     l  CREATE TABLE public.notes1 (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    note_type character varying(255) NOT NULL,
    applies_to_date date NOT NULL,
    users_id integer NOT NULL,
    status_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.notes1;
       public            postgres    false            �            1259    31097    notes_id_seq    SEQUENCE     u   CREATE SEQUENCE public.notes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.notes_id_seq;
       public          postgres    false    234            3           0    0    notes_id_seq    SEQUENCE OWNED BY     >   ALTER SEQUENCE public.notes_id_seq OWNED BY public.notes1.id;
          public          postgres    false    213            �            1259    31201    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public            postgres    false            �            1259    31099    people_id_seq    SEQUENCE     v   CREATE SEQUENCE public.people_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.people_id_seq;
       public          postgres    false            �            1259    31216    permissions    TABLE     �   CREATE TABLE public.permissions (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.permissions;
       public            postgres    false            �            1259    31101    permissions_id_seq    SEQUENCE     {   CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.permissions_id_seq;
       public          postgres    false    236            4           0    0    permissions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;
          public          postgres    false    215            f           1259    33169    posts    TABLE     (  CREATE TABLE public.posts (
    id integer DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".posts_id_seq'::regclass) NOT NULL,
    title character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    user_id integer
);
    DROP TABLE public.posts;
       public            postgres    false    354            e           1259    33167    posts_id_seq    SEQUENCE     }   CREATE SEQUENCE public.posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 #   DROP SEQUENCE public.posts_id_seq;
       public          postgres    false    358            5           0    0    posts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;
          public          postgres    false    357            j           1259    36075 	   reactions    TABLE     .  CREATE TABLE public.reactions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    reactable_type character varying(255) NOT NULL,
    reactable_id bigint NOT NULL,
    type character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.reactions;
       public            postgres    false            i           1259    36073    reactions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reactions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.reactions_id_seq;
       public          postgres    false    362            6           0    0    reactions_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.reactions_id_seq OWNED BY public.reactions.id;
          public          postgres    false    361            [           1259    32477 
   rev_id_seq    SEQUENCE     s   CREATE SEQUENCE public.rev_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.rev_id_seq;
       public          postgres    false            �            1259    31223    role_has_permissions    TABLE     m   CREATE TABLE public.role_has_permissions (
    permission_id bigint NOT NULL,
    role_id bigint NOT NULL
);
 (   DROP TABLE public.role_has_permissions;
       public            postgres    false            �            1259    31226    role_hierarchy    TABLE     }   CREATE TABLE public.role_hierarchy (
    id bigint NOT NULL,
    role_id integer NOT NULL,
    hierarchy integer NOT NULL
);
 "   DROP TABLE public.role_hierarchy;
       public            postgres    false            �            1259    31103    role_hierarchy_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.role_hierarchy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.role_hierarchy_id_seq;
       public          postgres    false    238            7           0    0    role_hierarchy_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.role_hierarchy_id_seq OWNED BY public.role_hierarchy.id;
          public          postgres    false    216            �            1259    31230    roles    TABLE     �   CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.roles;
       public            postgres    false            �            1259    31105    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    239            8           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    217            �            1259    31237    status    TABLE     �   CREATE TABLE public.status (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    class character varying(255) NOT NULL,
    type character varying(64)
);
    DROP TABLE public.status;
       public            postgres    false            �            1259    31107    status_id_seq    SEQUENCE     v   CREATE SEQUENCE public.status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.status_id_seq;
       public          postgres    false    240            9           0    0    status_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.status_id_seq OWNED BY public.status.id;
          public          postgres    false    218            �            1259    31244    users    TABLE     �  CREATE TABLE public.users (
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
    theme_dark boolean DEFAULT true,
    sidebar_minimal boolean DEFAULT false,
    profile_image character varying,
    master boolean DEFAULT false
);
    DROP TABLE public.users;
       public            postgres    false            Z           1259    32464 	   users_aud    TABLE     �  CREATE TABLE public.users_aud (
    id bigint,
    name character varying(255),
    email character varying(255),
    email_verified_at timestamp(0) without time zone,
    password character varying(255),
    menuroles character varying(255),
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    mobile character varying(255),
    license bigint,
    doc character varying(255),
    expire time(0) without time zone,
    theme_dark boolean DEFAULT true,
    sidebar_minimal boolean DEFAULT true,
    image character varying(255),
    rev bigint DEFAULT nextval('public.rev_id_seq'::regclass)
);
    DROP TABLE public.users_aud;
       public            postgres    false    347            �            1259    31109    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    241            :           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    219            �           2604    36160    balances id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".balances ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_blumenau/sc_100003".balances_id_seq'::regclass);
 W   ALTER TABLE "igreja_batista_blumenau/sc_100003".balances ALTER COLUMN id DROP DEFAULT;
    !   igreja_batista_blumenau/sc_100003          postgres    false    367    363    367            �           2604    36204    historics id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".historics ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_blumenau/sc_100003".historics_id_seq'::regclass);
 X   ALTER TABLE "igreja_batista_blumenau/sc_100003".historics ALTER COLUMN id DROP DEFAULT;
    !   igreja_batista_blumenau/sc_100003          postgres    false    370    365    370            �           2604    33064    balances id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".balances ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".balances_id_seq'::regclass);
 \   ALTER TABLE "igreja_batista_florianopolis/sc_100002".balances ALTER COLUMN id DROP DEFAULT;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    352    350    352                       2604    31859    email_template id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".email_template ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".email_template_id_seq'::regclass);
 b   ALTER TABLE "igreja_batista_florianopolis/sc_100002".email_template ALTER COLUMN id DROP DEFAULT;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    244    256    256                       2604    31999 	   events id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".events ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".events_id_seq'::regclass);
 Z   ALTER TABLE "igreja_batista_florianopolis/sc_100002".events ALTER COLUMN id DROP DEFAULT;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    266    267    267                       2604    31866 
   example id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".example ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".example_id_seq'::regclass);
 [   ALTER TABLE "igreja_batista_florianopolis/sc_100002".example ALTER COLUMN id DROP DEFAULT;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    257    245    257            	           2604    31873    failed_jobs id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".failed_jobs ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".failed_jobs_id_seq'::regclass);
 _   ALTER TABLE "igreja_batista_florianopolis/sc_100002".failed_jobs ALTER COLUMN id DROP DEFAULT;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    246    258    258                       2604    31881 	   folder id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".folder ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".folder_id_seq'::regclass);
 Z   ALTER TABLE "igreja_batista_florianopolis/sc_100002".folder ALTER COLUMN id DROP DEFAULT;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    247    259    259                       2604    31885    form id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".form ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".form_id_seq'::regclass);
 X   ALTER TABLE "igreja_batista_florianopolis/sc_100002".form ALTER COLUMN id DROP DEFAULT;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    260    249    260                       2604    31892    form_field id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".form_field ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".form_field_id_seq'::regclass);
 ^   ALTER TABLE "igreja_batista_florianopolis/sc_100002".form_field ALTER COLUMN id DROP DEFAULT;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    248    261    261            �           2604    33069    historics id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".historics ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".historics_id_seq'::regclass);
 ]   ALTER TABLE "igreja_batista_florianopolis/sc_100002".historics ALTER COLUMN id DROP DEFAULT;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    353    351    353                       2604    31906    media id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".media ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".media_id_seq'::regclass);
 Y   ALTER TABLE "igreja_batista_florianopolis/sc_100002".media ALTER COLUMN id DROP DEFAULT;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    262    251    262                       2604    31913    migrations id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".migrations ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".migrations_id_seq'::regclass);
 ^   ALTER TABLE "igreja_batista_florianopolis/sc_100002".migrations ALTER COLUMN id DROP DEFAULT;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    252    263    263                       2604    31917    notes id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".notes ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".notes_id_seq'::regclass);
 Y   ALTER TABLE "igreja_batista_florianopolis/sc_100002".notes ALTER COLUMN id DROP DEFAULT;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    264    253    264            �           2604    36294    balances id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".balances ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_manaus/am_100004".balances_id_seq'::regclass);
 U   ALTER TABLE "igreja_batista_manaus/am_100004".balances ALTER COLUMN id DROP DEFAULT;
       igreja_batista_manaus/am_100004          postgres    false    381    385    385            �           2604    36338    historics id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".historics ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_manaus/am_100004".historics_id_seq'::regclass);
 V   ALTER TABLE "igreja_batista_manaus/am_100004".historics ALTER COLUMN id DROP DEFAULT;
       igreja_batista_manaus/am_100004          postgres    false    388    383    388            �           2604    36227    balances id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".balances ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_sao_jose/sc_100001".balances_id_seq'::regclass);
 W   ALTER TABLE "igreja_batista_sao_jose/sc_100001".balances ALTER COLUMN id DROP DEFAULT;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    372    376    376            �           2604    36271    historics id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".historics ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_sao_jose/sc_100001".historics_id_seq'::regclass);
 X   ALTER TABLE "igreja_batista_sao_jose/sc_100001".historics ALTER COLUMN id DROP DEFAULT;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    379    374    379            �           2604    31118    email_template id    DEFAULT     v   ALTER TABLE ONLY public.email_template ALTER COLUMN id SET DEFAULT nextval('public.email_template_id_seq'::regclass);
 @   ALTER TABLE public.email_template ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    201    220            �           2604    31125 
   example id    DEFAULT     h   ALTER TABLE ONLY public.example ALTER COLUMN id SET DEFAULT nextval('public.example_id_seq'::regclass);
 9   ALTER TABLE public.example ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    221    221            �           2604    31132    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    203    222            �           2604    31140 	   folder id    DEFAULT     f   ALTER TABLE ONLY public.folder ALTER COLUMN id SET DEFAULT nextval('public.folder_id_seq'::regclass);
 8   ALTER TABLE public.folder ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    223    223            �           2604    31144    form id    DEFAULT     b   ALTER TABLE ONLY public.form ALTER COLUMN id SET DEFAULT nextval('public.form_id_seq'::regclass);
 6   ALTER TABLE public.form ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    206    224            �           2604    31151    form_field id    DEFAULT     n   ALTER TABLE ONLY public.form_field ALTER COLUMN id SET DEFAULT nextval('public.form_field_id_seq'::regclass);
 <   ALTER TABLE public.form_field ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    225    225            �           2604    31165    media id    DEFAULT     d   ALTER TABLE ONLY public.media ALTER COLUMN id SET DEFAULT nextval('public.media_id_seq'::regclass);
 7   ALTER TABLE public.media ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    227    227            �           2604    31172    menu_role id    DEFAULT     l   ALTER TABLE ONLY public.menu_role ALTER COLUMN id SET DEFAULT nextval('public.menu_role_id_seq'::regclass);
 ;   ALTER TABLE public.menu_role ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    228    228            �           2604    31176    menulist id    DEFAULT     j   ALTER TABLE ONLY public.menulist ALTER COLUMN id SET DEFAULT nextval('public.menulist_id_seq'::regclass);
 :   ALTER TABLE public.menulist ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    229    229            �           2604    31180    menus id    DEFAULT     d   ALTER TABLE ONLY public.menus ALTER COLUMN id SET DEFAULT nextval('public.menus_id_seq'::regclass);
 7   ALTER TABLE public.menus ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    211    230            �           2604    31187    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    212    231            �           2604    31197 	   notes1 id    DEFAULT     e   ALTER TABLE ONLY public.notes1 ALTER COLUMN id SET DEFAULT nextval('public.notes_id_seq'::regclass);
 8   ALTER TABLE public.notes1 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    213    234            �           2604    31219    permissions id    DEFAULT     p   ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);
 =   ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    236    236            �           2604    36078    reactions id    DEFAULT     l   ALTER TABLE ONLY public.reactions ALTER COLUMN id SET DEFAULT nextval('public.reactions_id_seq'::regclass);
 ;   ALTER TABLE public.reactions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    362    361    362            �           2604    31229    role_hierarchy id    DEFAULT     v   ALTER TABLE ONLY public.role_hierarchy ALTER COLUMN id SET DEFAULT nextval('public.role_hierarchy_id_seq'::regclass);
 @   ALTER TABLE public.role_hierarchy ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    216    238            �           2604    31233    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    217    239            �           2604    31240 	   status id    DEFAULT     f   ALTER TABLE ONLY public.status ALTER COLUMN id SET DEFAULT nextval('public.status_id_seq'::regclass);
 8   ALTER TABLE public.status ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    218    240            �           2604    31247    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    219    241            �          0    36157    balances 
   TABLE DATA           T   COPY "igreja_batista_blumenau/sc_100003".balances (id, user_id, amount) FROM stdin;
 !   igreja_batista_blumenau/sc_100003          postgres    false    367   
�      �          0    36164    config_meta 
   TABLE DATA           �  COPY "igreja_batista_blumenau/sc_100003".config_meta (id, visitante_mes, batismo_mes, conversao_mes, pessoa_mes, visualizacao_mes, comentario_mes, grupo_ativo_ano, visitante_ano, batismo_ano, conversao_ano, pessoa_ano, visualizacao_ano, comentario_ano, grupo_ativo_mes, updated_at, publicacao_ano, publicacao_mes, ano, fin_dizimo_mes, fin_oferta_mes, fin_despesa_mes, fin_acao_mes, fin_dizimo_ano, fin_oferta_ano, fin_acao_ano, fin_despesa_ano, created_at, user_id) FROM stdin;
 !   igreja_batista_blumenau/sc_100003          postgres    false    368   '�      �          0    32032    config_system 
   TABLE DATA           O  COPY "igreja_batista_blumenau/sc_100003".config_system (id, delete_institution, delete_people, delete_note, delete_group, delete_financial, delete_calendar, view_periodo, view_dash, view_detail, add_people, add_institution, add_group, edit_people, updated_at, edit_institution, created_at, view_resumo_financeiro, user_id) FROM stdin;
 !   igreja_batista_blumenau/sc_100003          postgres    false    282   O�      �          0    32036    email_template 
   TABLE DATA           y   COPY "igreja_batista_blumenau/sc_100003".email_template (id, created_at, updated_at, content, name, subject) FROM stdin;
 !   igreja_batista_blumenau/sc_100003          postgres    false    283   ��      �          0    32043    events 
   TABLE DATA           n   COPY "igreja_batista_blumenau/sc_100003".events (id, title, start, "end", created_at, updated_at) FROM stdin;
 !   igreja_batista_blumenau/sc_100003          postgres    false    284   )�      �          0    32047    example 
   TABLE DATA           x   COPY "igreja_batista_blumenau/sc_100003".example (id, created_at, updated_at, name, description, status_id) FROM stdin;
 !   igreja_batista_blumenau/sc_100003          postgres    false    285   ��      �          0    32054    failed_jobs 
   TABLE DATA           x   COPY "igreja_batista_blumenau/sc_100003".failed_jobs (id, connection, queue, payload, exception, failed_at) FROM stdin;
 !   igreja_batista_blumenau/sc_100003          postgres    false    286   b�      �          0    32062    folder 
   TABLE DATA           t   COPY "igreja_batista_blumenau/sc_100003".folder (id, created_at, updated_at, name, folder_id, resource) FROM stdin;
 !   igreja_batista_blumenau/sc_100003          postgres    false    287   �      �          0    32066    form 
   TABLE DATA           �   COPY "igreja_batista_blumenau/sc_100003".form (id, created_at, updated_at, name, table_name, read, edit, add, delete, pagination) FROM stdin;
 !   igreja_batista_blumenau/sc_100003          postgres    false    288   ܌      �          0    32073 
   form_field 
   TABLE DATA           �   COPY "igreja_batista_blumenau/sc_100003".form_field (id, created_at, updated_at, name, type, browse, read, edit, add, relation_table, relation_column, form_id, column_name) FROM stdin;
 !   igreja_batista_blumenau/sc_100003          postgres    false    289   `�      �          0    36193    group 
   TABLE DATA           ]   COPY "igreja_batista_blumenau/sc_100003"."group" (id, name_group, user_id, type) FROM stdin;
 !   igreja_batista_blumenau/sc_100003          postgres    false    369   	�      �          0    36201 	   historics 
   TABLE DATA           �   COPY "igreja_batista_blumenau/sc_100003".historics (id, user_id, type, amount, total_before, total_after, user_id_transaction, date, created_at, updated_at, tipo, observacao, pag) FROM stdin;
 !   igreja_batista_blumenau/sc_100003          postgres    false    370   &�      �          0    32087    media 
   TABLE DATA             COPY "igreja_batista_blumenau/sc_100003".media (id, model_type, model_id, collection_name, name, file_name, mime_type, disk, conversions_disk, size, uuid, manipulations, custom_properties, responsive_images, order_column, created_at, updated_at) FROM stdin;
 !   igreja_batista_blumenau/sc_100003          postgres    false    290   C�      �          0    32094 
   migrations 
   TABLE DATA           W   COPY "igreja_batista_blumenau/sc_100003".migrations (id, migration, batch) FROM stdin;
 !   igreja_batista_blumenau/sc_100003          postgres    false    291   `�      �          0    32098    notes 
   TABLE DATA           �   COPY "igreja_batista_blumenau/sc_100003".notes (id, title, content, note_type, applies_to_date, users_id, status_id, created_at, updated_at) FROM stdin;
 !   igreja_batista_blumenau/sc_100003          postgres    false    292   }�      �          0    32105    people 
   TABLE DATA           D  COPY "igreja_batista_blumenau/sc_100003".people (id, name, email, mobile, birth_at, address, country, state, city, role, is_active, is_verify, is_visitor, is_transferred, is_responsible, is_conversion, is_baptism, is_newvisitor, note, username, password, created_at, updated_at, deleted_at, status_id, cep, sex) FROM stdin;
 !   igreja_batista_blumenau/sc_100003          postgres    false    293   �      �          0    36211    posts 
   TABLE DATA           _   COPY "igreja_batista_blumenau/sc_100003".posts (id, title, created_at, updated_at) FROM stdin;
 !   igreja_batista_blumenau/sc_100003          postgres    false    371   �      �          0    33061    balances 
   TABLE DATA           Y   COPY "igreja_batista_florianopolis/sc_100002".balances (id, user_id, amount) FROM stdin;
 &   igreja_batista_florianopolis/sc_100002          postgres    false    352   (�      �          0    32483    config_meta 
   TABLE DATA           �  COPY "igreja_batista_florianopolis/sc_100002".config_meta (id, visitante_mes, batismo_mes, conversao_mes, pessoa_mes, visualizacao_mes, comentario_mes, grupo_ativo_ano, visitante_ano, batismo_ano, conversao_ano, pessoa_ano, visualizacao_ano, comentario_ano, grupo_ativo_mes, updated_at, publicacao_ano, publicacao_mes, ano, fin_dizimo_mes, fin_oferta_mes, fin_despesa_mes, fin_acao_mes, fin_dizimo_ano, fin_oferta_ano, fin_acao_ano, fin_despesa_ano, created_at, user_id) FROM stdin;
 &   igreja_batista_florianopolis/sc_100002          postgres    false    348   Y�      g          0    31852    config_system 
   TABLE DATA           T  COPY "igreja_batista_florianopolis/sc_100002".config_system (id, delete_institution, delete_people, delete_note, delete_group, delete_financial, delete_calendar, view_periodo, view_dash, view_detail, add_people, add_institution, add_group, edit_people, created_at, edit_institution, updated_at, view_resumo_financeiro, user_id) FROM stdin;
 &   igreja_batista_florianopolis/sc_100002          postgres    false    255   �      h          0    31856    email_template 
   TABLE DATA           ~   COPY "igreja_batista_florianopolis/sc_100002".email_template (id, created_at, updated_at, content, name, subject) FROM stdin;
 &   igreja_batista_florianopolis/sc_100002          postgres    false    256   �      s          0    31996    events 
   TABLE DATA           s   COPY "igreja_batista_florianopolis/sc_100002".events (id, title, start, "end", created_at, updated_at) FROM stdin;
 &   igreja_batista_florianopolis/sc_100002          postgres    false    267   ��      i          0    31863    example 
   TABLE DATA           }   COPY "igreja_batista_florianopolis/sc_100002".example (id, created_at, updated_at, name, description, status_id) FROM stdin;
 &   igreja_batista_florianopolis/sc_100002          postgres    false    257   �      j          0    31870    failed_jobs 
   TABLE DATA           }   COPY "igreja_batista_florianopolis/sc_100002".failed_jobs (id, connection, queue, payload, exception, failed_at) FROM stdin;
 &   igreja_batista_florianopolis/sc_100002          postgres    false    258   ͝      k          0    31878    folder 
   TABLE DATA           y   COPY "igreja_batista_florianopolis/sc_100002".folder (id, created_at, updated_at, name, folder_id, resource) FROM stdin;
 &   igreja_batista_florianopolis/sc_100002          postgres    false    259   �      l          0    31882    form 
   TABLE DATA           �   COPY "igreja_batista_florianopolis/sc_100002".form (id, created_at, updated_at, name, table_name, read, edit, add, delete, pagination) FROM stdin;
 &   igreja_batista_florianopolis/sc_100002          postgres    false    260   G�      m          0    31889 
   form_field 
   TABLE DATA           �   COPY "igreja_batista_florianopolis/sc_100002".form_field (id, created_at, updated_at, name, type, browse, read, edit, add, relation_table, relation_column, form_id, column_name) FROM stdin;
 &   igreja_batista_florianopolis/sc_100002          postgres    false    261   ˞      �          0    32894    group 
   TABLE DATA           b   COPY "igreja_batista_florianopolis/sc_100002"."group" (id, name_group, user_id, type) FROM stdin;
 &   igreja_batista_florianopolis/sc_100002          postgres    false    349   t�      �          0    33066 	   historics 
   TABLE DATA           �   COPY "igreja_batista_florianopolis/sc_100002".historics (id, user_id, type, amount, total_before, total_after, user_id_transaction, date, created_at, updated_at, tipo, observacao, pag) FROM stdin;
 &   igreja_batista_florianopolis/sc_100002          postgres    false    353   ��      n          0    31903    media 
   TABLE DATA             COPY "igreja_batista_florianopolis/sc_100002".media (id, model_type, model_id, collection_name, name, file_name, mime_type, disk, conversions_disk, size, uuid, manipulations, custom_properties, responsive_images, order_column, created_at, updated_at) FROM stdin;
 &   igreja_batista_florianopolis/sc_100002          postgres    false    262   ��      o          0    31910 
   migrations 
   TABLE DATA           \   COPY "igreja_batista_florianopolis/sc_100002".migrations (id, migration, batch) FROM stdin;
 &   igreja_batista_florianopolis/sc_100002          postgres    false    263   ܧ      p          0    31914    notes 
   TABLE DATA           �   COPY "igreja_batista_florianopolis/sc_100002".notes (id, title, content, note_type, applies_to_date, users_id, status_id, created_at, updated_at) FROM stdin;
 &   igreja_batista_florianopolis/sc_100002          postgres    false    264   ��      q          0    31921    people 
   TABLE DATA           I  COPY "igreja_batista_florianopolis/sc_100002".people (id, name, email, mobile, birth_at, address, country, state, city, role, is_active, is_verify, is_visitor, is_transferred, is_responsible, is_conversion, is_baptism, is_newvisitor, note, username, password, created_at, updated_at, deleted_at, status_id, cep, sex) FROM stdin;
 &   igreja_batista_florianopolis/sc_100002          postgres    false    265   ��      �          0    33119    posts 
   TABLE DATA           d   COPY "igreja_batista_florianopolis/sc_100002".posts (id, title, created_at, updated_at) FROM stdin;
 &   igreja_batista_florianopolis/sc_100002          postgres    false    355   V�      �          0    36291    balances 
   TABLE DATA           R   COPY "igreja_batista_manaus/am_100004".balances (id, user_id, amount) FROM stdin;
    igreja_batista_manaus/am_100004          postgres    false    385   s�      �          0    36298    config_meta 
   TABLE DATA           �  COPY "igreja_batista_manaus/am_100004".config_meta (id, visitante_mes, batismo_mes, conversao_mes, pessoa_mes, visualizacao_mes, comentario_mes, grupo_ativo_ano, visitante_ano, batismo_ano, conversao_ano, pessoa_ano, visualizacao_ano, comentario_ano, grupo_ativo_mes, updated_at, publicacao_ano, publicacao_mes, ano, fin_dizimo_mes, fin_oferta_mes, fin_despesa_mes, fin_acao_mes, fin_dizimo_ano, fin_oferta_ano, fin_acao_ano, fin_despesa_ano, created_at, user_id) FROM stdin;
    igreja_batista_manaus/am_100004          postgres    false    386   ��      �          0    32333    config_system 
   TABLE DATA           M  COPY "igreja_batista_manaus/am_100004".config_system (id, delete_institution, delete_people, delete_note, delete_group, delete_financial, delete_calendar, view_periodo, view_dash, view_detail, add_people, add_institution, add_group, edit_people, updated_at, edit_institution, created_at, view_resumo_financeiro, user_id) FROM stdin;
    igreja_batista_manaus/am_100004          postgres    false    334   ��      �          0    32337    email_template 
   TABLE DATA           w   COPY "igreja_batista_manaus/am_100004".email_template (id, created_at, updated_at, content, name, subject) FROM stdin;
    igreja_batista_manaus/am_100004          postgres    false    335   �      �          0    32344    events 
   TABLE DATA           l   COPY "igreja_batista_manaus/am_100004".events (id, title, start, "end", created_at, updated_at) FROM stdin;
    igreja_batista_manaus/am_100004          postgres    false    336   ��      �          0    32348    example 
   TABLE DATA           v   COPY "igreja_batista_manaus/am_100004".example (id, created_at, updated_at, name, description, status_id) FROM stdin;
    igreja_batista_manaus/am_100004          postgres    false    337   >�      �          0    32355    failed_jobs 
   TABLE DATA           v   COPY "igreja_batista_manaus/am_100004".failed_jobs (id, connection, queue, payload, exception, failed_at) FROM stdin;
    igreja_batista_manaus/am_100004          postgres    false    338   ��      �          0    32363    folder 
   TABLE DATA           r   COPY "igreja_batista_manaus/am_100004".folder (id, created_at, updated_at, name, folder_id, resource) FROM stdin;
    igreja_batista_manaus/am_100004          postgres    false    339   �      �          0    32367    form 
   TABLE DATA           �   COPY "igreja_batista_manaus/am_100004".form (id, created_at, updated_at, name, table_name, read, edit, add, delete, pagination) FROM stdin;
    igreja_batista_manaus/am_100004          postgres    false    340   t�      �          0    32374 
   form_field 
   TABLE DATA           �   COPY "igreja_batista_manaus/am_100004".form_field (id, created_at, updated_at, name, type, browse, read, edit, add, relation_table, relation_column, form_id, column_name) FROM stdin;
    igreja_batista_manaus/am_100004          postgres    false    341   ��      �          0    36327    group 
   TABLE DATA           [   COPY "igreja_batista_manaus/am_100004"."group" (id, name_group, user_id, type) FROM stdin;
    igreja_batista_manaus/am_100004          postgres    false    387   ��      �          0    36335 	   historics 
   TABLE DATA           �   COPY "igreja_batista_manaus/am_100004".historics (id, user_id, type, amount, total_before, total_after, user_id_transaction, date, created_at, updated_at, tipo, observacao, pag) FROM stdin;
    igreja_batista_manaus/am_100004          postgres    false    388   ��      �          0    32388    media 
   TABLE DATA              COPY "igreja_batista_manaus/am_100004".media (id, model_type, model_id, collection_name, name, file_name, mime_type, disk, conversions_disk, size, uuid, manipulations, custom_properties, responsive_images, order_column, created_at, updated_at) FROM stdin;
    igreja_batista_manaus/am_100004          postgres    false    342   ��      �          0    32395 
   migrations 
   TABLE DATA           U   COPY "igreja_batista_manaus/am_100004".migrations (id, migration, batch) FROM stdin;
    igreja_batista_manaus/am_100004          postgres    false    343   ��      �          0    32399    notes 
   TABLE DATA           �   COPY "igreja_batista_manaus/am_100004".notes (id, title, content, note_type, applies_to_date, users_id, status_id, created_at, updated_at) FROM stdin;
    igreja_batista_manaus/am_100004          postgres    false    344   �      �          0    32406    people 
   TABLE DATA           B  COPY "igreja_batista_manaus/am_100004".people (id, name, email, mobile, birth_at, address, country, state, city, role, is_active, is_verify, is_visitor, is_transferred, is_responsible, is_conversion, is_baptism, is_newvisitor, note, username, password, created_at, updated_at, deleted_at, status_id, cep, sex) FROM stdin;
    igreja_batista_manaus/am_100004          postgres    false    345   ��      �          0    36345    posts 
   TABLE DATA           ]   COPY "igreja_batista_manaus/am_100004".posts (id, title, created_at, updated_at) FROM stdin;
    igreja_batista_manaus/am_100004          postgres    false    389   >�      �          0    36224    balances 
   TABLE DATA           T   COPY "igreja_batista_sao_jose/sc_100001".balances (id, user_id, amount) FROM stdin;
 !   igreja_batista_sao_jose/sc_100001          postgres    false    376   [�      �          0    36231    config_meta 
   TABLE DATA           �  COPY "igreja_batista_sao_jose/sc_100001".config_meta (id, visitante_mes, batismo_mes, conversao_mes, pessoa_mes, visualizacao_mes, comentario_mes, grupo_ativo_ano, visitante_ano, batismo_ano, conversao_ano, pessoa_ano, visualizacao_ano, comentario_ano, grupo_ativo_mes, updated_at, publicacao_ano, publicacao_mes, ano, fin_dizimo_mes, fin_oferta_mes, fin_despesa_mes, fin_acao_mes, fin_dizimo_ano, fin_oferta_ano, fin_acao_ano, fin_despesa_ano, created_at, user_id) FROM stdin;
 !   igreja_batista_sao_jose/sc_100001          postgres    false    377   ��      �          0    32181    config_system 
   TABLE DATA           O  COPY "igreja_batista_sao_jose/sc_100001".config_system (id, delete_institution, delete_people, delete_note, delete_group, delete_financial, delete_calendar, view_periodo, view_dash, view_detail, add_people, add_institution, add_group, edit_people, updated_at, edit_institution, created_at, view_resumo_financeiro, user_id) FROM stdin;
 !   igreja_batista_sao_jose/sc_100001          postgres    false    308   ��      �          0    32185    email_template 
   TABLE DATA           y   COPY "igreja_batista_sao_jose/sc_100001".email_template (id, created_at, updated_at, content, name, subject) FROM stdin;
 !   igreja_batista_sao_jose/sc_100001          postgres    false    309   ��      �          0    32192    events 
   TABLE DATA           n   COPY "igreja_batista_sao_jose/sc_100001".events (id, title, start, "end", created_at, updated_at) FROM stdin;
 !   igreja_batista_sao_jose/sc_100001          postgres    false    310   ��      �          0    32196    example 
   TABLE DATA           x   COPY "igreja_batista_sao_jose/sc_100001".example (id, created_at, updated_at, name, description, status_id) FROM stdin;
 !   igreja_batista_sao_jose/sc_100001          postgres    false    311   �      �          0    32203    failed_jobs 
   TABLE DATA           x   COPY "igreja_batista_sao_jose/sc_100001".failed_jobs (id, connection, queue, payload, exception, failed_at) FROM stdin;
 !   igreja_batista_sao_jose/sc_100001          postgres    false    312   �       �          0    32211    folder 
   TABLE DATA           t   COPY "igreja_batista_sao_jose/sc_100001".folder (id, created_at, updated_at, name, folder_id, resource) FROM stdin;
 !   igreja_batista_sao_jose/sc_100001          postgres    false    313   �       �          0    32215    form 
   TABLE DATA           �   COPY "igreja_batista_sao_jose/sc_100001".form (id, created_at, updated_at, name, table_name, read, edit, add, delete, pagination) FROM stdin;
 !   igreja_batista_sao_jose/sc_100001          postgres    false    314   J      �          0    32222 
   form_field 
   TABLE DATA           �   COPY "igreja_batista_sao_jose/sc_100001".form_field (id, created_at, updated_at, name, type, browse, read, edit, add, relation_table, relation_column, form_id, column_name) FROM stdin;
 !   igreja_batista_sao_jose/sc_100001          postgres    false    315   �      �          0    36260    group 
   TABLE DATA           ]   COPY "igreja_batista_sao_jose/sc_100001"."group" (id, name_group, user_id, type) FROM stdin;
 !   igreja_batista_sao_jose/sc_100001          postgres    false    378   w      �          0    36268 	   historics 
   TABLE DATA           �   COPY "igreja_batista_sao_jose/sc_100001".historics (id, user_id, type, amount, total_before, total_after, user_id_transaction, date, created_at, updated_at, tipo, observacao, pag) FROM stdin;
 !   igreja_batista_sao_jose/sc_100001          postgres    false    379   �      �          0    32236    media 
   TABLE DATA             COPY "igreja_batista_sao_jose/sc_100001".media (id, model_type, model_id, collection_name, name, file_name, mime_type, disk, conversions_disk, size, uuid, manipulations, custom_properties, responsive_images, order_column, created_at, updated_at) FROM stdin;
 !   igreja_batista_sao_jose/sc_100001          postgres    false    316   �      �          0    32243 
   migrations 
   TABLE DATA           W   COPY "igreja_batista_sao_jose/sc_100001".migrations (id, migration, batch) FROM stdin;
 !   igreja_batista_sao_jose/sc_100001          postgres    false    317   �      �          0    32247    notes 
   TABLE DATA           �   COPY "igreja_batista_sao_jose/sc_100001".notes (id, title, content, note_type, applies_to_date, users_id, status_id, created_at, updated_at) FROM stdin;
 !   igreja_batista_sao_jose/sc_100001          postgres    false    318         �          0    32254    people 
   TABLE DATA           D  COPY "igreja_batista_sao_jose/sc_100001".people (id, name, email, mobile, birth_at, address, country, state, city, role, is_active, is_verify, is_visitor, is_transferred, is_responsible, is_conversion, is_baptism, is_newvisitor, note, username, password, created_at, updated_at, deleted_at, status_id, cep, sex) FROM stdin;
 !   igreja_batista_sao_jose/sc_100001          postgres    false    319   �!      �          0    36278    posts 
   TABLE DATA           _   COPY "igreja_batista_sao_jose/sc_100001".posts (id, title, created_at, updated_at) FROM stdin;
 !   igreja_batista_sao_jose/sc_100001          postgres    false    380   #      D          0    31115    email_template 
   TABLE DATA           \   COPY public.email_template (id, created_at, updated_at, content, name, subject) FROM stdin;
    public          postgres    false    220   �#      E          0    31122    example 
   TABLE DATA           [   COPY public.example (id, created_at, updated_at, name, description, status_id) FROM stdin;
    public          postgres    false    221   ?'      F          0    31129    failed_jobs 
   TABLE DATA           [   COPY public.failed_jobs (id, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    222   �+      G          0    31137    folder 
   TABLE DATA           W   COPY public.folder (id, created_at, updated_at, name, folder_id, resource) FROM stdin;
    public          postgres    false    223   ,      H          0    31141    form 
   TABLE DATA           q   COPY public.form (id, created_at, updated_at, name, table_name, read, edit, add, delete, pagination) FROM stdin;
    public          postgres    false    224   u,      I          0    31148 
   form_field 
   TABLE DATA           �   COPY public.form_field (id, created_at, updated_at, name, type, browse, read, edit, add, relation_table, relation_column, form_id, column_name) FROM stdin;
    public          postgres    false    225   �,      J          0    31155    institution 
   TABLE DATA           �   COPY public.institution (id, name_company, integrador, email, mobile, address1, address2, created_at, tenant, status_id, deleted_at, doc, cep, state, city, country, updated_at, expired) FROM stdin;
    public          postgres    false    226   �/      �          0    33159    likes 
   TABLE DATA           l   COPY public.likes (id, user_id, likeable_id, likeable_type, created_at, updated_at, account_id) FROM stdin;
    public          postgres    false    356   �1      K          0    31162    media 
   TABLE DATA           �   COPY public.media (id, model_type, model_id, collection_name, name, file_name, mime_type, disk, conversions_disk, size, uuid, manipulations, custom_properties, responsive_images, order_column, created_at, updated_at) FROM stdin;
    public          postgres    false    227   02      L          0    31169 	   menu_role 
   TABLE DATA           <   COPY public.menu_role (id, role_name, menus_id) FROM stdin;
    public          postgres    false    228   M2      M          0    31173    menulist 
   TABLE DATA           ,   COPY public.menulist (id, name) FROM stdin;
    public          postgres    false    229   13      N          0    31177    menus 
   TABLE DATA           ^   COPY public.menus (id, name, href, icon, slug, parent_id, menu_id, sequence, new) FROM stdin;
    public          postgres    false    230   c3      O          0    31184 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    231   �5      P          0    31188    model_has_permissions 
   TABLE DATA           T   COPY public.model_has_permissions (permission_id, model_type, model_id) FROM stdin;
    public          postgres    false    232   �9      Q          0    31191    model_has_roles 
   TABLE DATA           H   COPY public.model_has_roles (role_id, model_type, model_id) FROM stdin;
    public          postgres    false    233   �9      R          0    31194    notes1 
   TABLE DATA           }   COPY public.notes1 (id, title, content, note_type, applies_to_date, users_id, status_id, created_at, updated_at) FROM stdin;
    public          postgres    false    234   P:      S          0    31201    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    235   'W      T          0    31216    permissions 
   TABLE DATA           S   COPY public.permissions (id, name, guard_name, created_at, updated_at) FROM stdin;
    public          postgres    false    236   DW      �          0    33169    posts 
   TABLE DATA           K   COPY public.posts (id, title, created_at, updated_at, user_id) FROM stdin;
    public          postgres    false    358   X      �          0    36075 	   reactions 
   TABLE DATA           l   COPY public.reactions (id, user_id, reactable_type, reactable_id, type, created_at, updated_at) FROM stdin;
    public          postgres    false    362   �X      U          0    31223    role_has_permissions 
   TABLE DATA           F   COPY public.role_has_permissions (permission_id, role_id) FROM stdin;
    public          postgres    false    237   �X      V          0    31226    role_hierarchy 
   TABLE DATA           @   COPY public.role_hierarchy (id, role_id, hierarchy) FROM stdin;
    public          postgres    false    238   #Y      W          0    31230    roles 
   TABLE DATA           M   COPY public.roles (id, name, guard_name, created_at, updated_at) FROM stdin;
    public          postgres    false    239   XY      X          0    31237    status 
   TABLE DATA           7   COPY public.status (id, name, class, type) FROM stdin;
    public          postgres    false    240   �Y      Y          0    31244    users 
   TABLE DATA           �   COPY public.users (id, name, email, email_verified_at, password, menuroles, remember_token, created_at, updated_at, deleted_at, mobile, license, doc, theme_dark, sidebar_minimal, profile_image, master) FROM stdin;
    public          postgres    false    241   [      �          0    32464 	   users_aud 
   TABLE DATA           �   COPY public.users_aud (id, name, email, email_verified_at, password, menuroles, remember_token, created_at, updated_at, deleted_at, mobile, license, doc, expire, theme_dark, sidebar_minimal, image, rev) FROM stdin;
    public          postgres    false    346   �^      ;           0    0    balances_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('"igreja_batista_blumenau/sc_100003".balances_id_seq', 2, true);
       !   igreja_batista_blumenau/sc_100003          postgres    false    363            <           0    0    config_meta_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('"igreja_batista_blumenau/sc_100003".config_meta_seq', 7, true);
       !   igreja_batista_blumenau/sc_100003          postgres    false    364            =           0    0    config_system_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('"igreja_batista_blumenau/sc_100003".config_system_seq', 18, true);
       !   igreja_batista_blumenau/sc_100003          postgres    false    268            >           0    0    domains_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('"igreja_batista_blumenau/sc_100003".domains_id_seq', 2, false);
       !   igreja_batista_blumenau/sc_100003          postgres    false    269            ?           0    0    email_template_id_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('"igreja_batista_blumenau/sc_100003".email_template_id_seq', 4, true);
       !   igreja_batista_blumenau/sc_100003          postgres    false    270            @           0    0    events_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('"igreja_batista_blumenau/sc_100003".events_id_seq', 55, true);
       !   igreja_batista_blumenau/sc_100003          postgres    false    271            A           0    0    example_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('"igreja_batista_blumenau/sc_100003".example_id_seq', 29, true);
       !   igreja_batista_blumenau/sc_100003          postgres    false    272            B           0    0    failed_jobs_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('"igreja_batista_blumenau/sc_100003".failed_jobs_id_seq', 4, false);
       !   igreja_batista_blumenau/sc_100003          postgres    false    273            C           0    0    folder_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('"igreja_batista_blumenau/sc_100003".folder_id_seq', 8, true);
       !   igreja_batista_blumenau/sc_100003          postgres    false    274            D           0    0    form_field_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('"igreja_batista_blumenau/sc_100003".form_field_id_seq', 48, true);
       !   igreja_batista_blumenau/sc_100003          postgres    false    275            E           0    0    form_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('"igreja_batista_blumenau/sc_100003".form_id_seq', 7, true);
       !   igreja_batista_blumenau/sc_100003          postgres    false    276            F           0    0    historics_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('"igreja_batista_blumenau/sc_100003".historics_id_seq', 53, true);
       !   igreja_batista_blumenau/sc_100003          postgres    false    365            G           0    0    institutions_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('"igreja_batista_blumenau/sc_100003".institutions_id_seq', 14, true);
       !   igreja_batista_blumenau/sc_100003          postgres    false    277            H           0    0    media_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('"igreja_batista_blumenau/sc_100003".media_id_seq', 4, false);
       !   igreja_batista_blumenau/sc_100003          postgres    false    278            I           0    0    migrations_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('"igreja_batista_blumenau/sc_100003".migrations_id_seq', 2, false);
       !   igreja_batista_blumenau/sc_100003          postgres    false    279            J           0    0    notes_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('"igreja_batista_blumenau/sc_100003".notes_id_seq', 103, true);
       !   igreja_batista_blumenau/sc_100003          postgres    false    280            K           0    0    people_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('"igreja_batista_blumenau/sc_100003".people_id_seq', 103, true);
       !   igreja_batista_blumenau/sc_100003          postgres    false    281            L           0    0    posts_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('"igreja_batista_blumenau/sc_100003".posts_id_seq', 2, false);
       !   igreja_batista_blumenau/sc_100003          postgres    false    366            M           0    0    balances_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('"igreja_batista_florianopolis/sc_100002".balances_id_seq', 2, true);
       &   igreja_batista_florianopolis/sc_100002          postgres    false    350            N           0    0    config_meta_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('"igreja_batista_florianopolis/sc_100002".config_meta_seq', 7, true);
       &   igreja_batista_florianopolis/sc_100002          postgres    false    360            O           0    0    config_system_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('"igreja_batista_florianopolis/sc_100002".config_system_seq', 18, true);
       &   igreja_batista_florianopolis/sc_100002          postgres    false    242            P           0    0    domains_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('"igreja_batista_florianopolis/sc_100002".domains_id_seq', 2, false);
       &   igreja_batista_florianopolis/sc_100002          postgres    false    243            Q           0    0    email_template_id_seq    SEQUENCE SET     e   SELECT pg_catalog.setval('"igreja_batista_florianopolis/sc_100002".email_template_id_seq', 4, true);
       &   igreja_batista_florianopolis/sc_100002          postgres    false    244            R           0    0    events_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('"igreja_batista_florianopolis/sc_100002".events_id_seq', 55, true);
       &   igreja_batista_florianopolis/sc_100002          postgres    false    266            S           0    0    example_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('"igreja_batista_florianopolis/sc_100002".example_id_seq', 29, true);
       &   igreja_batista_florianopolis/sc_100002          postgres    false    245            T           0    0    failed_jobs_id_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('"igreja_batista_florianopolis/sc_100002".failed_jobs_id_seq', 4, false);
       &   igreja_batista_florianopolis/sc_100002          postgres    false    246            U           0    0    folder_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('"igreja_batista_florianopolis/sc_100002".folder_id_seq', 8, true);
       &   igreja_batista_florianopolis/sc_100002          postgres    false    247            V           0    0    form_field_id_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('"igreja_batista_florianopolis/sc_100002".form_field_id_seq', 48, true);
       &   igreja_batista_florianopolis/sc_100002          postgres    false    248            W           0    0    form_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('"igreja_batista_florianopolis/sc_100002".form_id_seq', 7, true);
       &   igreja_batista_florianopolis/sc_100002          postgres    false    249            X           0    0    historics_id_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('"igreja_batista_florianopolis/sc_100002".historics_id_seq', 53, true);
       &   igreja_batista_florianopolis/sc_100002          postgres    false    351            Y           0    0    institutions_id_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('"igreja_batista_florianopolis/sc_100002".institutions_id_seq', 14, true);
       &   igreja_batista_florianopolis/sc_100002          postgres    false    250            Z           0    0    media_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('"igreja_batista_florianopolis/sc_100002".media_id_seq', 4, false);
       &   igreja_batista_florianopolis/sc_100002          postgres    false    251            [           0    0    migrations_id_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('"igreja_batista_florianopolis/sc_100002".migrations_id_seq', 2, false);
       &   igreja_batista_florianopolis/sc_100002          postgres    false    252            \           0    0    notes_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('"igreja_batista_florianopolis/sc_100002".notes_id_seq', 103, true);
       &   igreja_batista_florianopolis/sc_100002          postgres    false    253            ]           0    0    people_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('"igreja_batista_florianopolis/sc_100002".people_id_seq', 103, true);
       &   igreja_batista_florianopolis/sc_100002          postgres    false    254            ^           0    0    posts_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('"igreja_batista_florianopolis/sc_100002".posts_id_seq', 2, false);
       &   igreja_batista_florianopolis/sc_100002          postgres    false    354            _           0    0    balances_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('"igreja_batista_manaus/am_100004".balances_id_seq', 2, true);
          igreja_batista_manaus/am_100004          postgres    false    381            `           0    0    config_meta_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('"igreja_batista_manaus/am_100004".config_meta_seq', 7, true);
          igreja_batista_manaus/am_100004          postgres    false    382            a           0    0    config_system_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('"igreja_batista_manaus/am_100004".config_system_seq', 18, true);
          igreja_batista_manaus/am_100004          postgres    false    320            b           0    0    domains_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('"igreja_batista_manaus/am_100004".domains_id_seq', 2, false);
          igreja_batista_manaus/am_100004          postgres    false    321            c           0    0    email_template_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('"igreja_batista_manaus/am_100004".email_template_id_seq', 4, true);
          igreja_batista_manaus/am_100004          postgres    false    322            d           0    0    events_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('"igreja_batista_manaus/am_100004".events_id_seq', 55, true);
          igreja_batista_manaus/am_100004          postgres    false    323            e           0    0    example_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('"igreja_batista_manaus/am_100004".example_id_seq', 29, true);
          igreja_batista_manaus/am_100004          postgres    false    324            f           0    0    failed_jobs_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('"igreja_batista_manaus/am_100004".failed_jobs_id_seq', 4, false);
          igreja_batista_manaus/am_100004          postgres    false    325            g           0    0    folder_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('"igreja_batista_manaus/am_100004".folder_id_seq', 8, true);
          igreja_batista_manaus/am_100004          postgres    false    326            h           0    0    form_field_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('"igreja_batista_manaus/am_100004".form_field_id_seq', 48, true);
          igreja_batista_manaus/am_100004          postgres    false    327            i           0    0    form_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('"igreja_batista_manaus/am_100004".form_id_seq', 7, true);
          igreja_batista_manaus/am_100004          postgres    false    328            j           0    0    historics_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('"igreja_batista_manaus/am_100004".historics_id_seq', 53, true);
          igreja_batista_manaus/am_100004          postgres    false    383            k           0    0    institutions_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('"igreja_batista_manaus/am_100004".institutions_id_seq', 14, true);
          igreja_batista_manaus/am_100004          postgres    false    329            l           0    0    media_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('"igreja_batista_manaus/am_100004".media_id_seq', 4, false);
          igreja_batista_manaus/am_100004          postgres    false    330            m           0    0    migrations_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('"igreja_batista_manaus/am_100004".migrations_id_seq', 2, false);
          igreja_batista_manaus/am_100004          postgres    false    331            n           0    0    notes_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('"igreja_batista_manaus/am_100004".notes_id_seq', 103, true);
          igreja_batista_manaus/am_100004          postgres    false    332            o           0    0    people_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('"igreja_batista_manaus/am_100004".people_id_seq', 103, true);
          igreja_batista_manaus/am_100004          postgres    false    333            p           0    0    posts_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('"igreja_batista_manaus/am_100004".posts_id_seq', 2, false);
          igreja_batista_manaus/am_100004          postgres    false    384            q           0    0    balances_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('"igreja_batista_sao_jose/sc_100001".balances_id_seq', 3, true);
       !   igreja_batista_sao_jose/sc_100001          postgres    false    372            r           0    0    config_meta_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('"igreja_batista_sao_jose/sc_100001".config_meta_seq', 1, true);
       !   igreja_batista_sao_jose/sc_100001          postgres    false    373            s           0    0    config_system_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('"igreja_batista_sao_jose/sc_100001".config_system_seq', 1, true);
       !   igreja_batista_sao_jose/sc_100001          postgres    false    294            t           0    0    domains_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('"igreja_batista_sao_jose/sc_100001".domains_id_seq', 2, false);
       !   igreja_batista_sao_jose/sc_100001          postgres    false    295            u           0    0    email_template_id_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('"igreja_batista_sao_jose/sc_100001".email_template_id_seq', 4, true);
       !   igreja_batista_sao_jose/sc_100001          postgres    false    296            v           0    0    events_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('"igreja_batista_sao_jose/sc_100001".events_id_seq', 55, true);
       !   igreja_batista_sao_jose/sc_100001          postgres    false    297            w           0    0    example_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('"igreja_batista_sao_jose/sc_100001".example_id_seq', 29, true);
       !   igreja_batista_sao_jose/sc_100001          postgres    false    298            x           0    0    failed_jobs_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('"igreja_batista_sao_jose/sc_100001".failed_jobs_id_seq', 4, false);
       !   igreja_batista_sao_jose/sc_100001          postgres    false    299            y           0    0    folder_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('"igreja_batista_sao_jose/sc_100001".folder_id_seq', 8, true);
       !   igreja_batista_sao_jose/sc_100001          postgres    false    300            z           0    0    form_field_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('"igreja_batista_sao_jose/sc_100001".form_field_id_seq', 48, true);
       !   igreja_batista_sao_jose/sc_100001          postgres    false    301            {           0    0    form_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('"igreja_batista_sao_jose/sc_100001".form_id_seq', 7, true);
       !   igreja_batista_sao_jose/sc_100001          postgres    false    302            |           0    0    historics_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('"igreja_batista_sao_jose/sc_100001".historics_id_seq', 54, true);
       !   igreja_batista_sao_jose/sc_100001          postgres    false    374            }           0    0    institutions_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('"igreja_batista_sao_jose/sc_100001".institutions_id_seq', 14, true);
       !   igreja_batista_sao_jose/sc_100001          postgres    false    303            ~           0    0    media_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('"igreja_batista_sao_jose/sc_100001".media_id_seq', 4, false);
       !   igreja_batista_sao_jose/sc_100001          postgres    false    304                       0    0    migrations_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('"igreja_batista_sao_jose/sc_100001".migrations_id_seq', 2, false);
       !   igreja_batista_sao_jose/sc_100001          postgres    false    305            �           0    0    notes_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('"igreja_batista_sao_jose/sc_100001".notes_id_seq', 103, true);
       !   igreja_batista_sao_jose/sc_100001          postgres    false    306            �           0    0    people_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('"igreja_batista_sao_jose/sc_100001".people_id_seq', 103, true);
       !   igreja_batista_sao_jose/sc_100001          postgres    false    307            �           0    0    posts_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('"igreja_batista_sao_jose/sc_100001".posts_id_seq', 2, false);
       !   igreja_batista_sao_jose/sc_100001          postgres    false    375            �           0    0    config_system_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.config_system_seq', 2, false);
          public          postgres    false    200            �           0    0    email_template_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.email_template_id_seq', 2, true);
          public          postgres    false    201            �           0    0    example_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.example_id_seq', 27, true);
          public          postgres    false    202            �           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 2, false);
          public          postgres    false    203            �           0    0    folder_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.folder_id_seq', 6, true);
          public          postgres    false    204            �           0    0    form_field_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.form_field_id_seq', 46, true);
          public          postgres    false    205            �           0    0    form_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.form_id_seq', 5, true);
          public          postgres    false    206            �           0    0    institutions_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.institutions_id_seq', 46, true);
          public          postgres    false    207            �           0    0    media_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.media_id_seq', 2, false);
          public          postgres    false    208            �           0    0    menu_role_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.menu_role_id_seq', 249, true);
          public          postgres    false    209            �           0    0    menulist_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.menulist_id_seq', 3, true);
          public          postgres    false    210            �           0    0    menus_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.menus_id_seq', 80, true);
          public          postgres    false    211            �           0    0    migrations_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.migrations_id_seq', 104, true);
          public          postgres    false    212            �           0    0    notes_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.notes_id_seq', 101, true);
          public          postgres    false    213            �           0    0    people_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.people_id_seq', 109, true);
          public          postgres    false    214            �           0    0    permissions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.permissions_id_seq', 21, true);
          public          postgres    false    215            �           0    0    posts_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.posts_id_seq', 3, false);
          public          postgres    false    357            �           0    0    reactions_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.reactions_id_seq', 1, false);
          public          postgres    false    361            �           0    0 
   rev_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.rev_id_seq', 1, false);
          public          postgres    false    347            �           0    0    role_hierarchy_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.role_hierarchy_id_seq', 5, true);
          public          postgres    false    216            �           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 5, true);
          public          postgres    false    217            �           0    0    status_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.status_id_seq', 10, true);
          public          postgres    false    218            �           0    0    user_likes_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.user_likes_id_seq', 32, true);
          public          postgres    false    359            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 12, true);
          public          postgres    false    219            �           2606    36163    balances balances_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".balances
    ADD CONSTRAINT balances_pkey PRIMARY KEY (id);
 ]   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".balances DROP CONSTRAINT balances_pkey;
    !   igreja_batista_blumenau/sc_100003            postgres    false    367            �           2606    36188 $   config_meta config_system_copy1_pkey 
   CONSTRAINT        ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".config_meta
    ADD CONSTRAINT config_system_copy1_pkey PRIMARY KEY (id);
 k   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".config_meta DROP CONSTRAINT config_system_copy1_pkey;
    !   igreja_batista_blumenau/sc_100003            postgres    false    368            6           2606    32124 "   email_template email_template_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".email_template
    ADD CONSTRAINT email_template_pkey PRIMARY KEY (id);
 i   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".email_template DROP CONSTRAINT email_template_pkey;
    !   igreja_batista_blumenau/sc_100003            postgres    false    283            8           2606    32126    events events_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 Y   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".events DROP CONSTRAINT events_pkey;
    !   igreja_batista_blumenau/sc_100003            postgres    false    284            :           2606    32128    example example_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".example
    ADD CONSTRAINT example_pkey PRIMARY KEY (id);
 [   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".example DROP CONSTRAINT example_pkey;
    !   igreja_batista_blumenau/sc_100003            postgres    false    285            <           2606    32130    failed_jobs failed_jobs_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 c   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".failed_jobs DROP CONSTRAINT failed_jobs_pkey;
    !   igreja_batista_blumenau/sc_100003            postgres    false    286            >           2606    32132    folder folder_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".folder
    ADD CONSTRAINT folder_pkey PRIMARY KEY (id);
 Y   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".folder DROP CONSTRAINT folder_pkey;
    !   igreja_batista_blumenau/sc_100003            postgres    false    287            B           2606    32136    form_field form_field_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".form_field
    ADD CONSTRAINT form_field_pkey PRIMARY KEY (id);
 a   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".form_field DROP CONSTRAINT form_field_pkey;
    !   igreja_batista_blumenau/sc_100003            postgres    false    289            @           2606    32134    form form_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".form
    ADD CONSTRAINT form_pkey PRIMARY KEY (id);
 U   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".form DROP CONSTRAINT form_pkey;
    !   igreja_batista_blumenau/sc_100003            postgres    false    288            �           2606    36210    historics historics_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".historics
    ADD CONSTRAINT historics_pkey PRIMARY KEY (id);
 _   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".historics DROP CONSTRAINT historics_pkey;
    !   igreja_batista_blumenau/sc_100003            postgres    false    370            E           2606    32142    media media_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".media
    ADD CONSTRAINT media_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".media DROP CONSTRAINT media_pkey;
    !   igreja_batista_blumenau/sc_100003            postgres    false    290            G           2606    32144    migrations migrations_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 a   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".migrations DROP CONSTRAINT migrations_pkey;
    !   igreja_batista_blumenau/sc_100003            postgres    false    291            I           2606    32146    notes notes_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".notes
    ADD CONSTRAINT notes_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".notes DROP CONSTRAINT notes_pkey;
    !   igreja_batista_blumenau/sc_100003            postgres    false    292            K           2606    32148    people people_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".people
    ADD CONSTRAINT people_pkey PRIMARY KEY (id);
 Y   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".people DROP CONSTRAINT people_pkey;
    !   igreja_batista_blumenau/sc_100003            postgres    false    293            �           2606    36215    posts posts_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".posts DROP CONSTRAINT posts_pkey;
    !   igreja_batista_blumenau/sc_100003            postgres    false    371            4           2606    32122    config_system status_copy1_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".config_system
    ADD CONSTRAINT status_copy1_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".config_system DROP CONSTRAINT status_copy1_pkey;
    !   igreja_batista_blumenau/sc_100003            postgres    false    282            �           2606    36200    group status_copy1_pkey1 
   CONSTRAINT     u   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003"."group"
    ADD CONSTRAINT status_copy1_pkey1 PRIMARY KEY (id);
 a   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003"."group" DROP CONSTRAINT status_copy1_pkey1;
    !   igreja_batista_blumenau/sc_100003            postgres    false    369            �           2606    33071    balances balances_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".balances
    ADD CONSTRAINT balances_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".balances DROP CONSTRAINT balances_pkey;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    352            �           2606    32488 $   config_meta config_system_copy1_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".config_meta
    ADD CONSTRAINT config_system_copy1_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".config_meta DROP CONSTRAINT config_system_copy1_pkey;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    348                       2606    31940 "   email_template email_template_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".email_template
    ADD CONSTRAINT email_template_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".email_template DROP CONSTRAINT email_template_pkey;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    256            2           2606    32001    events events_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".events DROP CONSTRAINT events_pkey;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    267                       2606    31942    example example_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".example
    ADD CONSTRAINT example_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".example DROP CONSTRAINT example_pkey;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    257            !           2606    31944    failed_jobs failed_jobs_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".failed_jobs DROP CONSTRAINT failed_jobs_pkey;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    258            #           2606    31946    folder folder_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".folder
    ADD CONSTRAINT folder_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".folder DROP CONSTRAINT folder_pkey;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    259            '           2606    31950    form_field form_field_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".form_field
    ADD CONSTRAINT form_field_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".form_field DROP CONSTRAINT form_field_pkey;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    261            %           2606    31948    form form_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".form
    ADD CONSTRAINT form_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".form DROP CONSTRAINT form_pkey;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    260            �           2606    33074    historics historics_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".historics
    ADD CONSTRAINT historics_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".historics DROP CONSTRAINT historics_pkey;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    353            *           2606    31956    media media_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".media
    ADD CONSTRAINT media_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".media DROP CONSTRAINT media_pkey;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    262            ,           2606    31958    migrations migrations_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".migrations DROP CONSTRAINT migrations_pkey;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    263            .           2606    31960    notes notes_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".notes
    ADD CONSTRAINT notes_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".notes DROP CONSTRAINT notes_pkey;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    264            0           2606    31962    people people_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".people
    ADD CONSTRAINT people_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".people DROP CONSTRAINT people_pkey;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    265            �           2606    33128    posts posts_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".posts DROP CONSTRAINT posts_pkey;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    355                       2606    31938    config_system status_copy1_pkey 
   CONSTRAINT        ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".config_system
    ADD CONSTRAINT status_copy1_pkey PRIMARY KEY (id);
 k   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".config_system DROP CONSTRAINT status_copy1_pkey;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    255            �           2606    32901    group status_copy1_pkey1 
   CONSTRAINT     z   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002"."group"
    ADD CONSTRAINT status_copy1_pkey1 PRIMARY KEY (id);
 f   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002"."group" DROP CONSTRAINT status_copy1_pkey1;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    349            �           2606    36297    balances balances_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".balances
    ADD CONSTRAINT balances_pkey PRIMARY KEY (id);
 [   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".balances DROP CONSTRAINT balances_pkey;
       igreja_batista_manaus/am_100004            postgres    false    385            �           2606    36322 $   config_meta config_system_copy1_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".config_meta
    ADD CONSTRAINT config_system_copy1_pkey PRIMARY KEY (id);
 i   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".config_meta DROP CONSTRAINT config_system_copy1_pkey;
       igreja_batista_manaus/am_100004            postgres    false    386            h           2606    32425 "   email_template email_template_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".email_template
    ADD CONSTRAINT email_template_pkey PRIMARY KEY (id);
 g   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".email_template DROP CONSTRAINT email_template_pkey;
       igreja_batista_manaus/am_100004            postgres    false    335            j           2606    32427    events events_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".events DROP CONSTRAINT events_pkey;
       igreja_batista_manaus/am_100004            postgres    false    336            l           2606    32429    example example_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".example
    ADD CONSTRAINT example_pkey PRIMARY KEY (id);
 Y   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".example DROP CONSTRAINT example_pkey;
       igreja_batista_manaus/am_100004            postgres    false    337            n           2606    32431    failed_jobs failed_jobs_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 a   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       igreja_batista_manaus/am_100004            postgres    false    338            p           2606    32433    folder folder_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".folder
    ADD CONSTRAINT folder_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".folder DROP CONSTRAINT folder_pkey;
       igreja_batista_manaus/am_100004            postgres    false    339            t           2606    32437    form_field form_field_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".form_field
    ADD CONSTRAINT form_field_pkey PRIMARY KEY (id);
 _   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".form_field DROP CONSTRAINT form_field_pkey;
       igreja_batista_manaus/am_100004            postgres    false    341            r           2606    32435    form form_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".form
    ADD CONSTRAINT form_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".form DROP CONSTRAINT form_pkey;
       igreja_batista_manaus/am_100004            postgres    false    340            �           2606    36344    historics historics_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".historics
    ADD CONSTRAINT historics_pkey PRIMARY KEY (id);
 ]   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".historics DROP CONSTRAINT historics_pkey;
       igreja_batista_manaus/am_100004            postgres    false    388            w           2606    32443    media media_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".media
    ADD CONSTRAINT media_pkey PRIMARY KEY (id);
 U   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".media DROP CONSTRAINT media_pkey;
       igreja_batista_manaus/am_100004            postgres    false    342            y           2606    32445    migrations migrations_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 _   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".migrations DROP CONSTRAINT migrations_pkey;
       igreja_batista_manaus/am_100004            postgres    false    343            {           2606    32447    notes notes_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".notes
    ADD CONSTRAINT notes_pkey PRIMARY KEY (id);
 U   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".notes DROP CONSTRAINT notes_pkey;
       igreja_batista_manaus/am_100004            postgres    false    344            }           2606    32449    people people_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".people
    ADD CONSTRAINT people_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".people DROP CONSTRAINT people_pkey;
       igreja_batista_manaus/am_100004            postgres    false    345            �           2606    36349    posts posts_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 U   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".posts DROP CONSTRAINT posts_pkey;
       igreja_batista_manaus/am_100004            postgres    false    389            f           2606    32423    config_system status_copy1_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".config_system
    ADD CONSTRAINT status_copy1_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".config_system DROP CONSTRAINT status_copy1_pkey;
       igreja_batista_manaus/am_100004            postgres    false    334            �           2606    36334    group status_copy1_pkey1 
   CONSTRAINT     s   ALTER TABLE ONLY "igreja_batista_manaus/am_100004"."group"
    ADD CONSTRAINT status_copy1_pkey1 PRIMARY KEY (id);
 _   ALTER TABLE ONLY "igreja_batista_manaus/am_100004"."group" DROP CONSTRAINT status_copy1_pkey1;
       igreja_batista_manaus/am_100004            postgres    false    387            �           2606    36230    balances balances_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".balances
    ADD CONSTRAINT balances_pkey PRIMARY KEY (id);
 ]   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".balances DROP CONSTRAINT balances_pkey;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    376            �           2606    36255 $   config_meta config_system_copy1_pkey 
   CONSTRAINT        ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".config_meta
    ADD CONSTRAINT config_system_copy1_pkey PRIMARY KEY (id);
 k   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".config_meta DROP CONSTRAINT config_system_copy1_pkey;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    377            O           2606    32273 "   email_template email_template_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".email_template
    ADD CONSTRAINT email_template_pkey PRIMARY KEY (id);
 i   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".email_template DROP CONSTRAINT email_template_pkey;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    309            Q           2606    32275    events events_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 Y   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".events DROP CONSTRAINT events_pkey;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    310            S           2606    32277    example example_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".example
    ADD CONSTRAINT example_pkey PRIMARY KEY (id);
 [   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".example DROP CONSTRAINT example_pkey;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    311            U           2606    32279    failed_jobs failed_jobs_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 c   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".failed_jobs DROP CONSTRAINT failed_jobs_pkey;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    312            W           2606    32281    folder folder_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".folder
    ADD CONSTRAINT folder_pkey PRIMARY KEY (id);
 Y   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".folder DROP CONSTRAINT folder_pkey;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    313            [           2606    32285    form_field form_field_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".form_field
    ADD CONSTRAINT form_field_pkey PRIMARY KEY (id);
 a   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".form_field DROP CONSTRAINT form_field_pkey;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    315            Y           2606    32283    form form_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".form
    ADD CONSTRAINT form_pkey PRIMARY KEY (id);
 U   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".form DROP CONSTRAINT form_pkey;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    314            �           2606    36277    historics historics_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".historics
    ADD CONSTRAINT historics_pkey PRIMARY KEY (id);
 _   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".historics DROP CONSTRAINT historics_pkey;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    379            ^           2606    32291    media media_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".media
    ADD CONSTRAINT media_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".media DROP CONSTRAINT media_pkey;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    316            `           2606    32293    migrations migrations_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 a   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".migrations DROP CONSTRAINT migrations_pkey;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    317            b           2606    32295    notes notes_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".notes
    ADD CONSTRAINT notes_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".notes DROP CONSTRAINT notes_pkey;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    318            d           2606    32297    people people_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".people
    ADD CONSTRAINT people_pkey PRIMARY KEY (id);
 Y   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".people DROP CONSTRAINT people_pkey;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    319            �           2606    36282    posts posts_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".posts DROP CONSTRAINT posts_pkey;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    380            M           2606    32271    config_system status_copy1_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".config_system
    ADD CONSTRAINT status_copy1_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".config_system DROP CONSTRAINT status_copy1_pkey;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    308            �           2606    36267    group status_copy1_pkey1 
   CONSTRAINT     u   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001"."group"
    ADD CONSTRAINT status_copy1_pkey1 PRIMARY KEY (id);
 a   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001"."group" DROP CONSTRAINT status_copy1_pkey1;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    378            �           2606    31267    institution companies_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.institution
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.institution DROP CONSTRAINT companies_pkey;
       public            postgres    false    226            �           2606    31254 "   email_template email_template_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.email_template
    ADD CONSTRAINT email_template_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.email_template DROP CONSTRAINT email_template_pkey;
       public            postgres    false    220            �           2606    31256    example example_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.example
    ADD CONSTRAINT example_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.example DROP CONSTRAINT example_pkey;
       public            postgres    false    221            �           2606    31258    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    222            �           2606    31260    folder folder_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.folder
    ADD CONSTRAINT folder_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.folder DROP CONSTRAINT folder_pkey;
       public            postgres    false    223            �           2606    31264    form_field form_field_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.form_field
    ADD CONSTRAINT form_field_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.form_field DROP CONSTRAINT form_field_pkey;
       public            postgres    false    225            �           2606    31262    form form_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.form
    ADD CONSTRAINT form_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.form DROP CONSTRAINT form_pkey;
       public            postgres    false    224            �           2606    33182    likes likes_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.likes DROP CONSTRAINT likes_pkey;
       public            postgres    false    356            �           2606    31270    media media_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.media
    ADD CONSTRAINT media_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.media DROP CONSTRAINT media_pkey;
       public            postgres    false    227            �           2606    31272    menu_role menu_role_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.menu_role
    ADD CONSTRAINT menu_role_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.menu_role DROP CONSTRAINT menu_role_pkey;
       public            postgres    false    228            �           2606    31274    menulist menulist_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.menulist
    ADD CONSTRAINT menulist_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.menulist DROP CONSTRAINT menulist_pkey;
       public            postgres    false    229                        2606    31276    menus menus_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.menus DROP CONSTRAINT menus_pkey;
       public            postgres    false    230                       2606    31278    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    231                       2606    31281 0   model_has_permissions model_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_pkey PRIMARY KEY (permission_id, model_id, model_type);
 Z   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_pkey;
       public            postgres    false    232    232    232                       2606    31284 $   model_has_roles model_has_roles_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_pkey PRIMARY KEY (role_id, model_id, model_type);
 N   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_pkey;
       public            postgres    false    233    233    233            
           2606    31286    notes1 notes_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.notes1
    ADD CONSTRAINT notes_pkey PRIMARY KEY (id);
 ;   ALTER TABLE ONLY public.notes1 DROP CONSTRAINT notes_pkey;
       public            postgres    false    234                       2606    31291    permissions permissions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public            postgres    false    236            �           2606    33174    posts posts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
       public            postgres    false    358            �           2606    36086    reactions react_user_unique 
   CONSTRAINT     w   ALTER TABLE ONLY public.reactions
    ADD CONSTRAINT react_user_unique UNIQUE (reactable_type, reactable_id, user_id);
 E   ALTER TABLE ONLY public.reactions DROP CONSTRAINT react_user_unique;
       public            postgres    false    362    362    362            �           2606    36083    reactions reactions_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.reactions
    ADD CONSTRAINT reactions_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.reactions DROP CONSTRAINT reactions_pkey;
       public            postgres    false    362                       2606    31293 .   role_has_permissions role_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_pkey PRIMARY KEY (permission_id, role_id);
 X   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_pkey;
       public            postgres    false    237    237                       2606    31295 "   role_hierarchy role_hierarchy_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.role_hierarchy
    ADD CONSTRAINT role_hierarchy_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.role_hierarchy DROP CONSTRAINT role_hierarchy_pkey;
       public            postgres    false    238                       2606    31297    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    239                       2606    31299    status status_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.status
    ADD CONSTRAINT status_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.status DROP CONSTRAINT status_pkey;
       public            postgres    false    240                       2606    32476    users_aud users_copy1_email_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.users_aud
    ADD CONSTRAINT users_copy1_email_key UNIQUE (email);
 I   ALTER TABLE ONLY public.users_aud DROP CONSTRAINT users_copy1_email_key;
       public            postgres    false    346                       2606    31301    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    241                       2606    31303    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    241            C           1259    32140    media_model_type_model_id_index    INDEX     ~   CREATE INDEX media_model_type_model_id_index ON "igreja_batista_blumenau/sc_100003".media USING btree (model_type, model_id);
 P   DROP INDEX "igreja_batista_blumenau/sc_100003".media_model_type_model_id_index;
    !   igreja_batista_blumenau/sc_100003            postgres    false    290    290            (           1259    31954    media_model_type_model_id_index    INDEX     �   CREATE INDEX media_model_type_model_id_index ON "igreja_batista_florianopolis/sc_100002".media USING btree (model_type, model_id);
 U   DROP INDEX "igreja_batista_florianopolis/sc_100002".media_model_type_model_id_index;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    262    262            u           1259    32441    media_model_type_model_id_index    INDEX     |   CREATE INDEX media_model_type_model_id_index ON "igreja_batista_manaus/am_100004".media USING btree (model_type, model_id);
 N   DROP INDEX "igreja_batista_manaus/am_100004".media_model_type_model_id_index;
       igreja_batista_manaus/am_100004            postgres    false    342    342            \           1259    32289    media_model_type_model_id_index    INDEX     ~   CREATE INDEX media_model_type_model_id_index ON "igreja_batista_sao_jose/sc_100001".media USING btree (model_type, model_id);
 P   DROP INDEX "igreja_batista_sao_jose/sc_100001".media_model_type_model_id_index;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    316    316            �           1259    31265    institution_id    INDEX     K   CREATE UNIQUE INDEX institution_id ON public.institution USING btree (id);
 "   DROP INDEX public.institution_id;
       public            postgres    false    226            �           1259    31268    media_model_type_model_id_index    INDEX     a   CREATE INDEX media_model_type_model_id_index ON public.media USING btree (model_type, model_id);
 3   DROP INDEX public.media_model_type_model_id_index;
       public            postgres    false    227    227                       1259    31279 /   model_has_permissions_model_id_model_type_index    INDEX     �   CREATE INDEX model_has_permissions_model_id_model_type_index ON public.model_has_permissions USING btree (model_id, model_type);
 C   DROP INDEX public.model_has_permissions_model_id_model_type_index;
       public            postgres    false    232    232                       1259    31282 )   model_has_roles_model_id_model_type_index    INDEX     u   CREATE INDEX model_has_roles_model_id_model_type_index ON public.model_has_roles USING btree (model_id, model_type);
 =   DROP INDEX public.model_has_roles_model_id_model_type_index;
       public            postgres    false    233    233                       1259    31287    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    235            �           1259    36084 +   reactions_reactable_type_reactable_id_index    INDEX     y   CREATE INDEX reactions_reactable_type_reactable_id_index ON public.reactions USING btree (reactable_type, reactable_id);
 ?   DROP INDEX public.reactions_reactable_type_reactable_id_index;
       public            postgres    false    362    362            �           1259    36087    reactions_user_id_index    INDEX     P   CREATE INDEX reactions_user_id_index ON public.reactions USING btree (user_id);
 +   DROP INDEX public.reactions_user_id_index;
       public            postgres    false    362            �           2606    31967 (   institution integrador_tenant_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.institution
    ADD CONSTRAINT integrador_tenant_id_foreign FOREIGN KEY (integrador) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.institution DROP CONSTRAINT integrador_tenant_id_foreign;
       public          postgres    false    241    3609    226            �           2606    31304 A   model_has_permissions model_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_permission_id_foreign;
       public          postgres    false    236    3597    232            �           2606    31309 /   model_has_roles model_has_roles_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_role_id_foreign;
       public          postgres    false    233    239    3603            �           2606    31314 ?   role_has_permissions role_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_permission_id_foreign;
       public          postgres    false    3597    237    236            �           2606    31319 9   role_has_permissions role_has_permissions_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_role_id_foreign;
       public          postgres    false    239    3603    237            �      x������ � �      �      x�3�4�c�`^����� ���      �   '   x�3�,�	��u�u���(�A\1z\\\ �x      �   �  x��XMo7=ǿb�Fo^I��&P%E�C���!Z���]¯rIYN����J����&� ��83��43����_�s����^����5l�ѫ�pe��Z�����m�a�B=yҞ��V��H�*_>���
��bGx�]�Hg#Z��&�K�;�X���P�}�%�-�?�w?����"�F㽸o�KT5+�ؾ�k,5���F�X�\0"F�uO^����z/YL�N�&���q���h��|_��*��.�O���i��h�C���5�9��D�n�����c�x�To��g���[q���X��1��l6Ρ���|D�,�ӟ��u���p�%��� � �6#�;�Vj��|oG���h��c�a��%r1t�~�6�B�Q���8b�x-n�@��x��|�iY�>�{3��vAa(�P��9\�H���9��6�Y`T�����B�WXǅ�:������F��SA���ŅP�WP��n��v��E��F��M�,n�Kw�j=��_\@�d@e4����.Wo��Ab4�{jd��~o�{��;�gɀP`(���V�3���0�MI�1H�-��F:pX8و��)ib'�ƀ"���l����\)D�|�'�ι�v��9p�D��1 }�-Z�-c�o�N��C�_�[<\ H��9LP��D�o��+�&��4�{�>b
А��(9�L���9"��#Ń�4ɶIɤ��@��*�$@a�!��s�"#N�op&3�%t�����#3$��g�eDƔ�D�ɍ2�	*v �
�r��<�-��b���VI�TF'��AO���p�Јڊ��D/Ny}1e?Rt����zx��9���m��6�Zm�Tq߈�X����%�(��<|V!����<�ZϷc1�I�c�꜠X����gǟ�.� �`{r5999�<���      �   m   x����� Dk<E ����9R�I�d%i E�����D��Y�!���X�p�LN�����E;�Cra��t���؎������L��o{��1r��5`�B�ND)�>�      �   �  x�]V�n�6<�|�@�����hd'����&���Hm���E��秺IJ� �G�duUu�N����ͻ!�a�K���]�;��<'J<��H~�$�L3�r��b�����3�#.�-��p:��C�r�%��0rLBх9Ip2cqw�Vw%��[w<c�y�%�A�����seqo9�W�=�=��������kXf@�*���p���I��Ȯ'����DZ���ZQXF�ǻ��}�y�	w�
p�x�Q���&\���>�1�iR|B��q`!ׇi
��f�� }s�T���ߋ��{Hد�2�wQ�6�m�>��o<�����[TF2q�ě.Jq�ͬ����z6���n(�3b�V�^�{X�y2���x	�ї���U@�k���Q�o��Po�t�R���08� �{l�]ԗ���n��YvC������Ԥ��B����{�����a:RQ=�JD�tO��s�e�՚
�f���I���\-��$�SXM=�EQ�΄͟��qw<�TO��x�n]����5)�W;xy�q���y�WSu�l�V�O$[{���P������jbTd���¯8�a���',)��`���cޒ������a��5��[�5�C��>ςZ�[E��X*��$�E=��B���m�J�I���,�cg� �;����d���Qz�
����M)RsYs�(Ⱦ�֕�DS<-d�Em��R9Ŗ��1���Y=�#慐��u���s��Ӛ�*]*B��Z�j�r�*5Pm��V������F��j|�]>0fv6�a=�Nӫ��<�y�|����i*�X�0٩_V�4�0)F���c���3 ��F`���R���˰�:�,sj�ZX��-r~��,C9`����0K�������z��:�m�Y,��V\˗�u�!�.?'7�E�N$o�`]���\	 �k^�PZ���~h���$S
nZ����5_Tγ�>�$6�*+�@�޻i��T�^��c�LЧ��@Ym���
�}V�C��*�>d˨*��E�r���|�3Բ�6)w�˷�%[�~7�Wi��ҝw�^Q���Ko��!1i7V"[l^ǬMF3�T�%�JV�%�z{�ËX�'.�
o`:pk/�T���fx.�z��<��{^�nr�*�nY���w������u�W{�iE�7?u�k��>��e���j � PCM��A���x�͹ܺ      �      x������ � �      �   M   x�3��������&�Z�_Z���i�Y�eL�O.�M�+)�՚@�Ӌ22����P�����"�P� A�Z      �   t   x�3��!׊�܂�T�T(]��\F�FF��f��F
FV��V��(b�V@dl��Z\��X�Y���0"��Ѐ�M����������)�g^qIfIiIf~^1g&�5lZ� `-�      �   �  x����n�0Eל���0):튶�.�M� ��8!"QI���%)K�eK���a�^�$g��X	~���^eW�6�d��a���<�{ֿ�3�93�As�DWZ��5��BYTg�jtA6����;f�V�X8���q��	��W�+�b�qq�������9_��UeѹPhͶ	�=�(��42�*Ot7C�ݑ�?�f����L�������oO "_���~�L0�W��o-+��|ٴ�b�:� ��
�[e���j�~�	�� �Z��&�Х�| V��ּ�uq�)?���'�7*�{�,�GL�'cc��2��DF���Q���(��d�o_��Q�^=*I �d�N9���*N:��
/�/Aܐ۩���]fD�(�ڴ�]�*z��_� =ve�p�U\�U�r�u��Q��E�}Ym�u~S?Y��R���{��!X��\y��&��(��r��>i�M�:O�m<>YU�-�d �b:����rEF�j�����a���ɰ?�F�;F=�#ɚ$=�1y�Sޫ@�9��t�u=�g��MaZf���p0 =�m���)�W��p5܅.��A��cto����;����f����o����R���~$�v�U���+�̪���d�9;�;pz<�e��~,���8=%����f��� ���      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   a   x�3�I-.IUHIU((M��LN<����|�h�Bnf^F�BAQfnjfQ"��DNCKK#]]#KNCCNc�?N##C]s]c##+c#+Ss�=... �x |      �      x������ � �      �      x������ � �      �   !   x�3�4�446152�2�4�4200������ 0��      �   �   x����	�@��u�,��o���!2A������BzI@D<���&��T���*�jdBU�]-�D1�<��.� Y#�u���˜�Oe�e����#̺�^�]7�D/D�H�Rn�0!�>�1���>��"�0�x:�o�|�1	�@={�����@���D�2i^��^����`      g   �   x�����0E��)X��6I��	���G�HG�Gvt��4?F����A�<J�G�����|���
U�V��T̂,�mU+ͪ����*�4�s�qUmiVխ�B�K*�YEx0��Pt��EW����|"�I�쎮}���.}������W~M���+��(&UU��K�ijd��j_�dBCQ_٤� ^�S�E      h   �  x��XMo7=ǿb�Fo^I��&P%E�C���!Z���]¯rIYN����J����&� ��83��43����_�s����^����5l�ѫ�pe��Z�����m�a�B=yҞ��V��H�*_>���
��bGx�]�Hg#Z��&�K�;�X���P�}�%�-�?�w?����"�F㽸o�KT5+�ؾ�k,5���F�X�\0"F�uO^����z/YL�N�&���q���h��|_��*��.�O���i��h�C���5�9��D�n�����c�x�To��g���[q���X��1��l6Ρ���|D�,�ӟ��u���p�%��� � �6#�;�Vj��|oG���h��c�a��%r1t�~�6�B�Q���8b�x-n�@��x��|�iY�>�{3��vAa(�P��9\�H���9��6�Y`T�����B�WXǅ�:������F��SA���ŅP�WP��n��v��E��F��M�,n�Kw�j=��_\@�d@e4����.Wo��Ab4�{jd��~o�{��;�gɀP`(���V�3���0�MI�1H�-��F:pX8و��)ib'�ƀ"���l����\)D�|�'�ι�v��9p�D��1 }�-Z�-c�o�N��C�_�[<\ H��9LP��D�o��+�&��4�{�>b
А��(9�L���9"��#Ń�4ɶIɤ��@��*�$@a�!��s�"#N�op&3�%t�����#3$��g�eDƔ�D�ɍ2�	*v �
�r��<�-��b���VI�TF'��AO���p�Јڊ��D/Ny}1e?Rt����zx��9���m��6�Zm�Tq߈�X����%�(��<|V!����<�ZϷc1�I�c�꜠X����gǟ�.� �`{r5999�<���      s   q  x���Kn�@���S�.�)��+���������@��B]� �Xi�Ѽ8;�7���ϡ%;2ɥX�r���J[HU[Ki��xz=�>�?
�C��T5/)b�����=���O_JE����ZJJiX�vz�}.�O���_��/�/��!&|�J��jYEi K֮<D�P�	�����\F���$*Ji�]p�C����@YE���cH�.4����X�	D��%X���Oc���
��0w[�Ĭp��J0w��7誁�)�wB50�i�L���1�S�2���Eح��%F�8oU�=N�&��X��9�������T)'�SAc(�,3�{'3��re�j�E̱~-���U�4В=�v�g�O�iIj�U�~��U��������@1��@�c���1/e@�v�ݒԐ�C�g*��&��C����4Ж�����P<�i7��D��c�Φ�@W��M����\��\�8_��/;ǘ/�7r� �N�ܺ�i7���(=��%#"�خ�>(�P������n�i�i�ݪ�Ʈ�����J6;Q��Vn�C��X`� 6h�/]�G{�Ow�1l�\�s۶���0�q�4|�_�b��8C�7s��� ���|      i   �  x�]V�n�6<�|�@�����hd'����&���Hm���E��秺IJ� �G�duUu�N����ͻ!�a�K���]�;��<'J<��H~�$�L3�r��b�����3�#.�-��p:��C�r�%��0rLBх9Ip2cqw�Vw%��[w<c�y�%�A�����seqo9�W�=�=��������kXf@�*���p���I��Ȯ'����DZ���ZQXF�ǻ��}�y�	w�
p�x�Q���&\���>�1�iR|B��q`!ׇi
��f�� }s�T���ߋ��{Hد�2�wQ�6�m�>��o<�����[TF2q�ě.Jq�ͬ����z6���n(�3b�V�^�{X�y2���x	�ї���U@�k���Q�o��Po�t�R���08� �{l�]ԗ���n��YvC������Ԥ��B����{�����a:RQ=�JD�tO��s�e�՚
�f���I���\-��$�SXM=�EQ�΄͟��qw<�TO��x�n]����5)�W;xy�q���y�WSu�l�V�O$[{���P������jbTd���¯8�a���',)��`���cޒ������a��5��[�5�C��>ςZ�[E��X*��$�E=��B���m�J�I���,�cg� �;����d���Qz�
����M)RsYs�(Ⱦ�֕�DS<-d�Em��R9Ŗ��1���Y=�#慐��u���s��Ӛ�*]*B��Z�j�r�*5Pm��V������F��j|�]>0fv6�a=�Nӫ��<�y�|����i*�X�0٩_V�4�0)F���c���3 ��F`���R���˰�:�,sj�ZX��-r~��,C9`����0K�������z��:�m�Y,��V\˗�u�!�.?'7�E�N$o�`]���\	 �k^�PZ���~h���$S
nZ����5_Tγ�>�$6�*+�@�޻i��T�^��c�LЧ��@Ym���
�}V�C��*�>d˨*��E�r���|�3Բ�6)w�˷�%[�~7�Wi��ҝw�^Q���Ko��!1i7V"[l^ǬMF3�T�%�JV�%�z{�ËX�'.�
o`:pk/�T���fx.�z��<��{^�nr�*�nY���w������u�W{�iE�7?u�k��>��e���j � PCM��A���x�͹ܺ      j      x������ � �      k   M   x�3��������&�Z�_Z���i�Y�eL�O.�M�+)�՚@�Ӌ22����P�����"�P� A�Z      l   t   x�3��!׊�܂�T�T(]��\F�FF��f��F
FV��V��(b�V@dl��Z\��X�Y���0"��Ѐ�M����������)�g^qIfIiIf~^1g&�5lZ� `-�      m   �  x����n�0Eל���0):튶�.�M� ��8!"QI���%)K�eK���a�^�$g��X	~���^eW�6�d��a���<�{ֿ�3�93�As�DWZ��5��BYTg�jtA6����;f�V�X8���q��	��W�+�b�qq�������9_��UeѹPhͶ	�=�(��42�*Ot7C�ݑ�?�f����L�������oO "_���~�L0�W��o-+��|ٴ�b�:� ��
�[e���j�~�	�� �Z��&�Х�| V��ּ�uq�)?���'�7*�{�,�GL�'cc��2��DF���Q���(��d�o_��Q�^=*I �d�N9���*N:��
/�/Aܐ۩���]fD�(�ڴ�]�*z��_� =ve�p�U\�U�r�u��Q��E�}Ym�u~S?Y��R���{��!X��\y��&��(��r��>i�M�:O�m<>YU�-�d �b:����rEF�j�����a���ɰ?�F�;F=�#ɚ$=�1y�Sޫ@�9��t�u=�g��MaZf���p0 =�m���)�W��p5܅.��A��cto����;����f����o����R���~$�v�U���+�̪���d�9;�;pz<�e��~,���8=%����f��� ���      �   5   x�3�I-.I�44�4�2B�#sL�9��3d�92��c��14@���qqq X[I      �   �  x���K��6���)j�	0v��D�HLz��,��ۢ�ȒG�i$��Qr�E=ʲ�������T��I	��/�؆�D������;�xL�ǩ)[�8���r��O�t��y���~�1�l�A�T�Tī���'z��7~+�ש�n1Ol~�!v��B�^���6�m���H��*!�-7�+d�U�I[�0�o�i݆�-�z�\!4��)�olHrr4^<^��$s�,���P=}�b�/ߛ���V�	�ց��!\��T�T�U�l�9�z6��q�Ie���:�v���0��	�k��"6ǈ��H�8T,ÊWB�C��{{��{��&�EO�sɍp��Wu��hUjm(7_
������1���_-KU��M������1_֒q��t	�Y-/RB�J8:9Ԛ�$Z�vB/�E�G-44rC_�3~��e��)�eC���U���=p�jI�b���zilA��b�6�DB�B��/3��V�	�+��8x��T�ڊ1:ye��6�C<׃0���B�[ʤbYA�x���[���VD����S��
�\lD3�c�[�)8��8N�Xհ�6<�
E�Q�Ɨ������0�f���B��m-0���V�6��i>��EI��Q�qʖ��i�N(V-+�&��%Ѹ�P���0D��s	��=݁,#��lr��(��/�h�K��j����}}���|��ᳯ@ɧ��H�R���oM����.V��Ɋ��s�;\�LʨMI��6�n�תf6Ysl�c�Vt�@��3z<�ڜ	M�q�&x����$Ԫ�KTi�Ȏ(;	ls'_��j��S�
���w�2�� Ր�_��6�/JN�D+�HT�<�7�(%�9�^�#X8�M�߿�?�*b!!��5n����תz��q��h��1�mْW��)-z��Z~�jw���t'Ȫ����[�'�~�CU6�к���f�9oy����=��jW]��"�
� �=�[��;{�]q�Zۺ=<v��wy�au�t�\�l	?Њ���0p:�
�
��Op<��`[h���fy	'�R�yݩ��0	r-���v�G�p�X]����s8Y�J���G�TE{Z�����|�s�6��:�=-C�{�!�1�v4,���y��4rLN��4O�"��[ؤR�j�'�rLۄ�٢G�;�gg�����ne�k�I�+T�R����v�l��������
b�^Y\�|���b4\����C53�P�U����I}Ǖ%�kU3x���&h"���W��R�JDЦ�vE�if?{��������������	�J6�Ȼ^i��5�����T�B�;�=��_��Z8�yf�;�Et���������-����[���}�������}�Y4Bj��>?w��ϵ-�`�pt� "<!r�3�������N(���u'�������[fPVm~pN�ΊcJ|rp�/���y6'[�ʪ{y�����P	�c]�p��G�atVW�zCO��۹�[���q(+4��4�m��֐��>������Ӱ      n      x������ � �      o      x������ � �      p      x�u\ے�F�|���?0}��۬4���,�l?���d1�/�!��� �[��Dx��L7�* �D�E�g9�cK�U����&���v��o�X��m�<�x9�������?�O�-C��i־����~������k��?������v�~��Է�8kNӱ�LC�8�����Ь�U���/��}9�k?��$��u��(��J�ҵ�m�.�$#]�=N痎�ڵ�6��ۙC����k���v?�Ki���K�g��-��6��ӥ�t]{y���:k������7��Ky�JW���O\�.B��M����y����_g=�S�Z�n�0_?�W��׹j��^_�*�,�;���]�5\O���ؿ�/�����}/�t���Uξ��'�������=��ɦ�����ڻ�V��?���M��:���Yп�r���ƴ��{x鏽���?��[{���~B�����1�Dzc����N����f9����M�!Cc���n?��5k>O��Xo2ˍtm�������>����?���g�]�q;�r�|Wh�i�؅������j�l��>ئ�0����?O���C�Y䅴�m�?����[�奜����"�6��Ա�]�g����8�W����1�ҽ���_��:v}p��i�`��]�.�a�����F��?�♸�<c����g�'l3�
Y�+��v�ۓ3��;/ө��qP��zrꁖ8vl��݉�;z�ǧ��D&/�����4�'/ww"��Ս��A�˦o1������x%�*[����4k���!��lH��]�^0��H!���͚�b6�-?�ِ6�p�'`�c���g�A�J7��Kg`�~!��?�#��`��������;�};��M,�_����Z��6]=o֔��zX,�?��9���R�/G�+�֘5≧ ��< B}��@�-�x����Jm�����l��8yǮ��E"u�v�峆<Ja�0�>,�p��D6���ZfrŞ��}$/T�+;�PN��r�����Z�S&��ӛ�����R�?ɕ㋶��i��1մ*�<� Y�<��<�E�͘5��|Z��� r�,�nF����f�U�[o(���;|�劕��/7�NZ�� >�~�x��{���Y��>�yB�TZy��qD�GI��M/�]
���ͩ�s�ųf}�h�l1^�0<_P~�mYP${�-?��.-�;k�E�=z��^|��+S���?��/�����SZE���WN@[�ۈh�i��xB
�;q1�5{���>`ɐ⚈R�5)]���XşFa�7�K�����s�^�p���L�F+2� {)�b�f
K���%�;�<�B`rF��ŉ*6�7l�0�=,3���^F&JW�� p`<�g��HB��䍷Y�o���4v4�]�M�V ^&z|�?{}�&�50?�x�rC��^7��������f�oK�ѡ4��q��[�ן�� P,�t�"^ ��ӂ䳋w���ei��:�a�r��댠��I��v��3uچM�^�!�������z��X�a�Ѳ;V�6U)�������y���/	�;U\1#�~J�Q��󙝜W5k��f��������=�6�ϒ5�bO��96gZ���Zr�#���?p�J�2a"�ƞRB7��:
Li�esĭ�Ή%�/�=�,�zB�z���ܟ/E�Ǩ�`���+;�m�󙢑���X��-Fkl�E��-�,�H^y���j���ף8��V,0�m�!.��^����K��U/%�����	�TّA���OZ���x1�����I���&2A�ʠ*mj�k*����GR���[m$��>���l�>4��6�UA��h�rzq<)��rZR�ʺ��-q*qA�/(<�hR(f��Mcg�dԛ?�V\m.s����K�a9�7ذ�N7����E�8F���Dj���Bs־�k��iȲ#�˯�U$3�-+%���Z��Y� &��%�u�+w��y��GV4�4:pI͐�Aj��^����F^��s�DR$P����3�dQ�8zw'Gᜃg��+C�ys#.�U<-o�5�NV������!☖� (FOP~C8�~���ƌ�A���B�q֨i�ꮥ�['�KU�g6�g0b����p>�T����h��'0��9���i���h��kkQ�h�<:�6DԂ$}/�[.D��S\��a7���M�b�kIU�"T���^�Xҗ�t1d
��g?��qQ����+�,�a��2�Ϳ�HN\���J�璉���Ίl#iNQ>�o�^
�y� �_\XeH�LɁ��~��jU�K��v�	?�T'ZH�	�p�ZR�q�>�'w's�gn�m�U ��xn>��B͡��Y�G��W@>�{�j.�$��H�9T5��}fS�h'.(Q���X	5���it=&L0V�sH!!��'S�;��PN
��㨂$_�a�!<.����b'�bc��;�*9�˰�0+#�Qq�<�*��S�D26���>%$��IA5$����-3��vcN��_:*i4��RRh�jp��A��A)�JL1�͚��8���x��s>?4�p�|����" ^���0W��41\~�s[`c�:=1B�YP&g7l����֖k|sHJe��J�����o�shvp���Z�u�T�������|��3}�)����*�7ݥ;�b`+�́��R�j�5lb%(��!�r�m�]&��g�.�ha�����v��d/������%����Y�(��:%2Rq)�5`�,M��B�Z6��<RA���l���P��=k��Pn2�-̑� �&���H��yc�X\���;�����ʑ��>�2��j��1�m��"�yAֆ���N"UE8�S��+��B?#�N7�c��(r������fp7���݅>��̀ڡ�Ch)ͶY;��֮M�"���#sjJ��M�/;��LZ�~�l���J<Ai�R$'�v�L���!*-�DK��c%��#���4kw�ü4�LqX���>�V���� �H�D_[a�ȇ)sVq�)wo!�b���8:�\oK�؃smb��[wU��D�(�ʟM�I�Yh��c�笓�]�u�Ej	e;u�Ɔ�p�nR
��P�U��|�k>���_6�h"ZBЧ��~�gUjDw����PN��F18G��g��I�U���A�M� V{gb�R�.�����.vw��D)���SH�WR�p[�85�]��IGj,{�������)f DnAR��4��A���D����l��9��c��2���b��U!�X���ȴ�#�ZMR�"u;�P�B7b�#�Ja�WN�(mR\���6YI}9�.*�h���hﻲ�s]�3f�|R6�|B�Ӵ��<h�t��?�kHp+UqO'�i8gK˞%'�;V\�Qݴ���E�v���.��	�;��U����(~�� ��V�W���ÝN=h
z29Ҷ���B�K���l0�v�+X���]/�[x�b�jk��j���1�p#(Se��)i�-h# ��<�����~ӝT��s�o�j ^J�3?e� "� �48�m=QH*����/���^�1��:�z�Z�0�('����B	=4�C�zu��Q���с�!|w1*ޥ� �8ZYn�-�O�u���=��?�=���ɽ��/	j�W!W��4m�$#9��ۂ�~��G?�T�Ukɟ�f��*LD�ת]3�}t�b���X?k��E�J�%�+2TkSLI�AC��v��F�$Rus���!v[��&�h��q��F<b<������d/f�!)��8�˦y��jįV�}�-w̾����7���6C�)=�s9�4�o���BK��9W�O�yJ��<5�B�Y���eX���^�W�ؒ`��j��Od�G��G)�s�Ӯz˓B��l�ƪ��uZ�"����p�h��E,�$4���2f�J�y�&���3P[�	���*e��h�;���Ns����P��͔Ac�8�&ZP���J��f�|a�N��n��=��n�$��X��h"98����`��۟�M��1�۵ꡑA�����QL+7՚��p/l��2A���i�幠�l�,|:�̓�7A �  8�(f�{��r�kM��*�A�,���E�M������8��8+�Yo�,c4���4�f!�2P)�K0��cV���U0��2��:gXa5�j!\M����峩�w5�hˏ��P�y�p��8��m��m�Ѩ0�)r�ϕ\�3���G�)�T�R����y44�Bc��j~�C�MC�>a�5�]��F�p�������WgI�
��h:�b�Tu�X��z��Zz�մܩWy©�S�>me>��m�^�S%|�4�i�km��6�MC`�U!��^�lC��C��X����b�]���l�f��Nw1��Y�Gt=���z�T�IA�
��}�o�~���Hm3B�c���M����)E�N�@�ͿkO���K��)��H���g����-7����9��I��Y�J;���E�c�[���}�:��
	�����d��C�0���]�`��Y:%���Q�:�r���1�l�u�XU�S!<�q�����U�٫$뚄h`�'By@����i�����QU�I��Ph��Ut�KeFLl�`��
�C�ٷ��e'�Ӈ2ї�sPr;�-���O���8��\���Q7tR���&Ft�.ʤq,��c����b��׳�_�L�6�W��$��J��\�?E{V�M2d㭌Tm�ga�*�l�L�.�4,��w�ɐ�˼o\k���*ޠ�,s٬�yh��8`LRȊ�ϖڵ�Z�l�O紶ƪ�lW��мx�����"�^��1��P��0�"o�O��s�U�m���T�4���A�)�)�-��}�����m��|��"o����&=���N�k��!,�.�9Xg����S�	��ci�PW�� �mrF:8Ơ�5�$��i͉kn���]);+����ńC�Ƽ?��jz�Ƣ���Jݢ(�cǦ�Ej��v��������Z�Qw�6��]
u1�����NzxĻ��5J�+ ^�@��us�$�e΀�:��tJ�����e�h܊��>�wfP�˩���h��b� Ϡ��hF%L�]>��)�.��Ϫ�)z����rS?S��LQ�'�O��|$�!j^�����	9C'p:Ki��)�iw�������i��P�S+ �r�?�b������� �(��̩RB�KX�.6ƣb�G��ฮ1@.Fp�����1*��Tض������dA^���&\��#��-H��{�K��`Ռ��O��㤛��4����Uj����(���
�J�m��/^�ȑ2I*����'I;���X����g�H�ߋ��K*�nA�@:�v1�R""C�0"��88h��ҙ�o�ޓ�)CG��-g��R�.�%�u�O�#r�̉(5���NU���r��y�Tz������HZ�ԀHK���c�&��}��E��L�ТvK6�7SJ\� �j�������{�h��I~VG�BM2�ӓ�FvoX��Nv�)�|o}sh>-�"G�N/���] ��������S��`����%�!M��.�u�b+�VR��#W�>ǖx�o�[7q(�L1�0k~�����)�%�J�H�N<����[5������;n�����%�b��3�Δr��p$.��E�mma��Ck$�,<��璤��pU����0br�����ׂ{����\��Q͕�ڇT��ڍTL�YN_�D�������&��S$����X�mկ+Hr�d�0�M�Y�\��ҝ�
ݻw, y�Xzj���ڝ�D�X�e�\o� ��gӨ��=n����T�y��Գ�|)�T���c9 ��6�<��󌽩�C��a(��~§]�H�� 
��ġ�����=���I�����y���S{t�w|a�_��!�{�U^-� ��AK|T�8�%5_$O�	������6�,Q�1fG�s�TA�8��O���wyBEM���!v�:�N�a��\�~��2�4��2 ��0�M���1=yC�$��=g6�^}7�~D�n ���|����7�.p�'�BeY��P�U��$k��+�'�޾%$��Ul^�\`7�Ʀ�o��q�-��
���8�2�+c��1�f����N	�n��.W3J�2����� ��O��scq4��������棂�T��"�9����� /�U��Ѡ���7��X��h&�~�Ͷrj�DK'����0IP�>��Yۯ+���`x��Y;Ά�!Ɩ8�>�g���$ڨtع�[��}vP�t�{�}S6�o]`m̏U�;��N���s�Z�D���� �"���T(��'t�쑜�N��
�wsKrl��-uJ��:��L�/"�����UPW?�d��]���s8^�
�Q̔O���ptQ��2��N�9��xC�թi0�־=ݻח6Esr��s���>����Rg�Q����5��|W�����-5���/���U��������Ov�xI�7�s�ԡ��I�d�ln�Ɛ�~�hiw�C���һ{���~�G�޽����Qc�T�Y������<�MJ�� ���\�m	C0c<����2���D��a#���*ԅL,W��~�7��q>��%X����R�VxU��~�%K���D��wMIc�j>x��̒�wЉw�Z,Dv=,e��mL�#��g?��L�����6�� UI��*r�6Np�J���p���Op�	Ӫ�2{���'d����"'�� ����-�H���`���s���V�2z��!��8ō����/X��D�P�8f�!vJ��G���;��Q{�Y����m*8kգ���	�|��U�U�2d�'|oRX�S��sV���C)��������Ħ�X��`[x���L��@ފ1_�p�O�A��Z 3u��{��_hU��=���K�����?tj� p��C򪕷-�-$c��C�m��B�Bwi�� 8��t�"�;ރ(�d�(��U#@_m�Bz��a��;�Ҹ�)a�Zr�zA�*�M6JW�O��g�*I�[��1���kIp���xM���s�F���þy���X��a��&;��t1��!�������WM?D+��rS}�+�1{�Y�?���mJT0�<L±�tvu��/��zԉ�k�7so�X��Z�*�t�~�Hw�,���S��t��0�!Z^B�[�*O~���x���!�q2��8�d��-������FגZ�Y����=��&U�86T�4����W	I��j۵�!f��{c�x��AD�6����b�����/��_~��� ���      q   g  x��W�r�H}�|E?���hn⓭b��%�$V��Zi�i0G�h�c~l�=g�8U�R4R4{��X{�( ������q���ߣx��/C��N��dMrm����Y7�'�l��џP�5A�i�,Q�� אV=���&N��^����>Ii�g@�D{[�ߋ$��&"(�Ek � �ř* 7�W4��xBӂ�l{)!	}i`"��iI��)M��@U�saa���tԬ�~+Y�&h5Q��*pV�qJ�'+r�\�:�q1��lFR'$$iL�d���zsB
Q���Uٟ����MX��Ea5�âx�|C�o��My�Y}����#�=��Γ�1�	�6�\w��i]@��u�u7�cy�pH���]%a��&tG۫f8MRZ��`	5Qӵ��S��4gtkТ+NB��O�ʲ��4Hゆ�/HA��0��a��Mg�2����$w}�Ěs>��W����^/
W�f��$�]<�z���,�|8N�"��TWq���y�%_st&��a�m�D���('�$f�Ŝ�������$-�9aO���v�D�[Q��Q���Md^^����l=$m+hu�W���|(7,��L�0�3	���x�u`@˴0�i/K����$	+xR/E��"�tM�I;���e��a��T���m#]ߗ����}	�vo���N՜�X�`�d�WI	ۤķ*'�۬na�0�wBm�Za��a��¼b);��"�j*��6ɓSj*?����aq����X<9���Ȳ��$%<��J%8�{J�z\u>����ld�w}�˵g��	3U�&�bM�31�g�F�9ˊ��f�$�V�?ʺ�m�3���Hx4
-<s}�b0>aU��[E��2]�cg��2/�8c$-2��F�ZBl��I��,+hc��2�.H�	a��n{q8���K�s\�̋m`������!CDQ�| ߏa�o�+��T�?�P`4q��r��\N�^ʩ�����n�T�������U��9��3.Mn0N����%/v\x�[�30,@^�&q��UBux�T�!�W�÷�[�ݝ�� �Ґ���n��˗$|���/����ahO/�R��aT�А����AWx�7�2���S��6Gԑ( ���7�9���C$5D�!�@�ב��+��Q� ���G����8��&�س�ۓV|�O~(�ƔE�^�q2s�J�O7����.9�fleܼ�Z1�\�]uжp��jc���Sv;Y �mZ����À��W������N /�����0�g��һ��[�b����킸t��ظo�B�U��\Z2nǽ���}S&�~U��A�T���]1���6H������?�`Ar���.[�O
������_&��8      �      x������ � �      �      x������ � �      �   +   x�3�4���u,�H�������ЄX��F�1~\1z\\\ ���      �   C   x�3�,A�iP�FF���F
V`�� .C�����ͬL-�Lp�r��qqq =��      �   �  x��XMo7=ǿb�Fo^I��&P%E�C���!Z���]¯rIYN����J����&� ��83��43����_�s����^����5l�ѫ�pe��Z�����m�a�B=yҞ��V��H�*_>���
��bGx�]�Hg#Z��&�K�;�X���P�}�%�-�?�w?����"�F㽸o�KT5+�ؾ�k,5���F�X�\0"F�uO^����z/YL�N�&���q���h��|_��*��.�O���i��h�C���5�9��D�n�����c�x�To��g���[q���X��1��l6Ρ���|D�,�ӟ��u���p�%��� � �6#�;�Vj��|oG���h��c�a��%r1t�~�6�B�Q���8b�x-n�@��x��|�iY�>�{3��vAa(�P��9\�H���9��6�Y`T�����B�WXǅ�:������F��SA���ŅP�WP��n��v��E��F��M�,n�Kw�j=��_\@�d@e4����.Wo��Ab4�{jd��~o�{��;�gɀP`(���V�3���0�MI�1H�-��F:pX8و��)ib'�ƀ"���l����\)D�|�'�ι�v��9p�D��1 }�-Z�-c�o�N��C�_�[<\ H��9LP��D�o��+�&��4�{�>b
А��(9�L���9"��#Ń�4ɶIɤ��@��*�$@a�!��s�"#N�op&3�%t�����#3$��g�eDƔ�D�ɍ2�	*v �
�r��<�-��b���VI�TF'��AO���p�Јڊ��D/Ny}1e?Rt����zx��9���m��6�Zm�Tq߈�X����%�(��<|V!����<�ZϷc1�I�c�꜠X����gǟ�.� �`{r5999�<���      �   m   x����� Dk<E ����9R�I�d%i E�����D��Y�!���X�p�LN�����E;�Cra��t���؎������L��o{��1r��5`�B�ND)�>�      �   �  x�]V�n�6<�|�@�����hd'����&���Hm���E��秺IJ� �G�duUu�N����ͻ!�a�K���]�;��<'J<��H~�$�L3�r��b�����3�#.�-��p:��C�r�%��0rLBх9Ip2cqw�Vw%��[w<c�y�%�A�����seqo9�W�=�=��������kXf@�*���p���I��Ȯ'����DZ���ZQXF�ǻ��}�y�	w�
p�x�Q���&\���>�1�iR|B��q`!ׇi
��f�� }s�T���ߋ��{Hد�2�wQ�6�m�>��o<�����[TF2q�ě.Jq�ͬ����z6���n(�3b�V�^�{X�y2���x	�ї���U@�k���Q�o��Po�t�R���08� �{l�]ԗ���n��YvC������Ԥ��B����{�����a:RQ=�JD�tO��s�e�՚
�f���I���\-��$�SXM=�EQ�΄͟��qw<�TO��x�n]����5)�W;xy�q���y�WSu�l�V�O$[{���P������jbTd���¯8�a���',)��`���cޒ������a��5��[�5�C��>ςZ�[E��X*��$�E=��B���m�J�I���,�cg� �;����d���Qz�
����M)RsYs�(Ⱦ�֕�DS<-d�Em��R9Ŗ��1���Y=�#慐��u���s��Ӛ�*]*B��Z�j�r�*5Pm��V������F��j|�]>0fv6�a=�Nӫ��<�y�|����i*�X�0٩_V�4�0)F���c���3 ��F`���R���˰�:�,sj�ZX��-r~��,C9`����0K�������z��:�m�Y,��V\˗�u�!�.?'7�E�N$o�`]���\	 �k^�PZ���~h���$S
nZ����5_Tγ�>�$6�*+�@�޻i��T�^��c�LЧ��@Ym���
�}V�C��*�>d˨*��E�r���|�3Բ�6)w�˷�%[�~7�Wi��ҝw�^Q���Ko��!1i7V"[l^ǬMF3�T�%�JV�%�z{�ËX�'.�
o`:pk/�T���fx.�z��<��{^�nr�*�nY���w������u�W{�iE�7?u�k��>��e���j � PCM��A���x�͹ܺ      �      x������ � �      �   M   x�3��������&�Z�_Z���i�Y�eL�O.�M�+)�՚@�Ӌ22����P�����"�P� A�Z      �   t   x�3��!׊�܂�T�T(]��\F�FF��f��F
FV��V��(b�V@dl��Z\��X�Y���0"��Ѐ�M����������)�g^qIfIiIf~^1g&�5lZ� `-�      �   �  x����n�0Eל���0):튶�.�M� ��8!"QI���%)K�eK���a�^�$g��X	~���^eW�6�d��a���<�{ֿ�3�93�As�DWZ��5��BYTg�jtA6����;f�V�X8���q��	��W�+�b�qq�������9_��UeѹPhͶ	�=�(��42�*Ot7C�ݑ�?�f����L�������oO "_���~�L0�W��o-+��|ٴ�b�:� ��
�[e���j�~�	�� �Z��&�Х�| V��ּ�uq�)?���'�7*�{�,�GL�'cc��2��DF���Q���(��d�o_��Q�^=*I �d�N9���*N:��
/�/Aܐ۩���]fD�(�ڴ�]�*z��_� =ve�p�U\�U�r�u��Q��E�}Ym�u~S?Y��R���{��!X��\y��&��(��r��>i�M�:O�m<>YU�-�d �b:����rEF�j�����a���ɰ?�F�;F=�#ɚ$=�1y�Sޫ@�9��t�u=�g��MaZf���p0 =�m���)�W��p5܅.��A��cto����;����f����o����R���~$�v�U���+�̪���d�9;�;pz<�e��~,���8=%����f��� ���      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x�u\ے�F�|���?0}�<�J���X˒e�i_8�%�}I�>� HܪG'«�f�IVH$(.��ʹ[���r=�m7�?ƶ{=~��ro����˹?vϷv�/���g*m�wN��}?���8�����<����^�o��=�η׶;�������Ys���e���|����fݬ��}��~Y6�˹\���'9ޮ=G�Wz��ocw�'�B�q:�t|ծ-����δ����X^ˬ����_J;���^�?=ni��a|�.�������]o�Y�4E���_��W�*�x���Bt�m��~�Ǯ�c<���:k�qh����:wۇ��a�jV��U����JW�e9��8�ʬ��z*�0������W��{y�{�|�r���3�m/���t��6N6�6��?������9��n:uױ��Ȃ���3�\7��]x��K����������ׯ��7_XLD�A&���^gMw��E4����L�m��_7u�yu/�t��Y�y��z��Yn�k��oWv�����I�o�q�>>����p���ؕc�BL��.�6X�V�f�,��6͇iݏ��y"_f��"/��n�q���|���//�ԏl8Y絰i���]�J?���g�š��GG���=�:�ݱ����VN#�<��p��m~������ԋg�����wF�埰�d+de�t�ەnO�x��L�^.�AMK(�ɩZ�رMn�~t'�����y*����cg#�О��݉�V7�+�/����B�>�.���lC�zӬ��ӆ��!9�v�y���#�0|^�7k>�	�4��tfC� Å����Qb���y*9��W/��Y��l���d��/��{�~��/���C�Y�t6��v�k9�t��YS�;��a������{��K!�ŏ®dXc�|�'�.������}����S:*���? +?�v��0��2���]۱���(A���|��dÙ/����k!��{Κ����P�t�xC9���U>�wx�k!O�hO��No���J�$W�/�֒���q�@TӪ��d=�d�[���7c���Uh�Jd�]����!w0��W�:l��4�F����+V���8:i���\�I�Y�J�Ղ�g}F8���	IHRi���%�7��ve(x@Z _7��Ϛ�ɣ��x���|A���eA��iJp��8������7�����{�U~,�L�w���J�П&�Oi	��_58m	n#�٧m��	)�����������%C�k"bH��H�t!�Cc����Z,9[<VX�_��	38x��225Ze����1�̊E�),-JT�(����1J�'��ް��|����G���{!d�(]%�����_��;#	)�7�f��R�_X�P��`v�6�[x	���������d�������=�{���[��j>�n��Q�-�G�����I�o�^꾃@�P�Y�xTrN��.�UD���ir�@�	 ��f�3���'$��qԆ��i6�{ur�l{xN�"�:HcنQG�x�X���T�tJ6*O�/^���$�/�TqŌ@�)UFE��gvr^լ�F�!����*�`��>Kj��1k�=qt
�X؜i!�r�k�����g���*�ʄ��{J	�X�(0�Y��uxX�Z4;'V�����ĳ��	����s��"������<�3���g�F�.#`NDL���}9H`����#y�LO7��_�Q^��,t�KZ��4�-���`C{��.U�W����+3#',_PeGuh��>i��[��X�z���'U�c����+���}������o+Ii�*o��Ĳ���}��d��#T�{[�q������7. �iI�*�.��ĩ�i����I����6����Qo�ȋZq�����r�.Ɇ�,�|`Ú;ݜnj���%R^�=���Y�`�����!ˎH/��V��h��\�`���k�Ff傘���8�%�����SYѐ���%5C����{=jj�y�XνI�@�ğ��r�E!��ݝ�s�5(vw����!��l4V!�0�A`���:Y�����"��cZr�=@�����B3�-�(
1z�Y��e���Bn��.UA��d���M�����|S��;����6�,�w��K�iW��EI�M�`�T�!P�L��o�)"OqA�C�=ܠ�W6�ů%U=�P�֪Fx�bI_b�Ő)~��Dn�E�gD@�߯��\��9��6��#9qQ�*���R��;+�ED��9E� "�{) �Pqa�!��2%.J��V�Uy/�j�Y0X&x�0R�h!Y'@�Õk]H��M4�X��	�̉�����cT����d�5�jVf%E�c^���Ix����f�"��P�̲��5L����<0�DM�Ͽcu$�r���9��0�Xe�!��l4��LEx�d�C9)D, ڏ�
�|�.�����*�C����pvt
�(��.��ì�hdF�}�t��+O9��t�3���\�{�s&=Ր03'���ڍ9mk~騤��rKI�e�������4*1Ű6kB^�d���a���������/R�ߋ x]7�r�\�f,��p���m��I���0UgA��ݰz�[[���!)���*5�
�&W���Ρ����k��}R�'k�f"����)������f�3���n�t�"씋���3�oKY�װ�����ʅ��v��������قJ^�i����s��_\7p���bC|�g�'�@��xl�H�y��׀Ų4��
�j����HE%��	�zCCMG���ohC��B�0G"$����{d+S#����cq����JJG�+G�B�0˄�U���Dڋ��YF�:�|T=�L�O�ҮT(�
�`��8��I�2��E�2f�§Û�ݴbw��2j�z=��H4�f��Z�6qt��ꞏ̩5(�RT6iJ��<�/�3iq�Y��:n*��eK��<�!2%�����k-�����l��\��Ҭ�AKP�Ҕ3]�a3�C���Z��S��� �5}m�q"B��Y�EاܽE�h�e�r ?��\r�-�b�m�A��
n�U�3	��*6%&�?f�./�!d��N�v��Y�%��ԥZÑS�I)L`B�W�&�Ů�d��ٔ��h	A�~H��U������BA8�o�����%
'��V]8?�U7�X흉�J���F�f�������ގN!�^I��m9�� `w�j'���ۻhoħ��YHf�@�y�f�:��޳���:4��W��z�p>��%nW�Dc-*�? Ӧ�pk]4I	���CE 
݈���*I�	0_9a��iHq���d%��L������͆+����z�uqΘ��-H�X�	-O�~V�}�ұ�;:�4�!��T}�m<�d��--{����Xq9Gu�6��c�=���\T�n�&H�?V�RRO���
H�'Z=^aۓw:��)���TH����,�㛲��J4�Y�`���v�l o�-������]�g�fĤÍ��M��������4��W�\#�V�*�MwR1s�U`����x)���i����|�ओ��D!�,��~�\td&�zI�D,�����uj�����: <�%�����ե>G�KF���Ũx�փ��he����>��������7$�4l����%�ڳ�$����B��i��IFr�ٷ��F�~$@��֒?��.L�U�(���U�f����0AQ�~������K�Wd�֦��J��������lI������C�]M��*��x��x�xǍ�3H+�^(̌CRh�qƗM�"�Ո_����[�}��Yo4u-Rm��Sz�;�r�i&l�<�酖��s���2�P�yj����}˰k�����%���(�+��4�.e�R��§]��'�XG��U)�%�봤E>'%W�T5вӋXfH�h:k�e��;�\�hM���g����Y�U�$���'v�ɝ�P����#�)��"�qfM�:�dI�$�ͼ��J�xKݘ�{�ݬI۱�;(�Drp�d���.W�?i��(c��k�C#���)x���
Vn�5I�^� �e�����$�sA�ٺY�t��'?4o�p �  Q���L��ךF7TX�xY�e� V���y?]yqZ�qV.4�޺Y�hJ��i��B�d�R��`4CǬr���`e./uΰ�j�B������峩�w5�hˏ��P�y�p��8��m��m�Ѩ0�)r�ϕ\�3���G�)�T�R����y44�Bc��j~�C�MC�>a�5�]��F�p�������WgI�
��h:�b�Tu�X��z��Zz�մܩWy©�S�>me>��m�^�S%|�4�i�km��6�MC`�U!��^�lC��C��X����b�]���l�f��Nw1��Y�Gt=���z�T�IA�
��}�o�~���Hm3B�c���M����)E�N�@�ͿkO���K��)��H���g����-7����9��I��Y�J;���E�c�[���}�:��
	�����d��C�0���]�`��Y:%���Q�:�r���1�l�u�XU�S!<�q�����U�٫$뚄h`�'By@����i�����QU�I��Ph��Ut�KeFLl�`��
�C�ٷ��e'�Ӈ2ї�sPr;�-���O���8��\���Q7tR���&Ft�.ʤq,��c����b��׳�_�L�6�W��$��J��\�?E{V�M2d㭌Tm�ga�*�l�L�.�4,��w�ɐ�˼o\k���*ޠ�,s٬�yh��8`LRȊ�ϖڵ�Z�l�O紶ƪ�lW��мx�����"�^��1��P��0�"o�O��s�U�m���T�4���A�)�)�-��}�����m��|��"o����&=���N�k��!,�.�9Xg����S�	��ci�PW�� �mrF:8Ơ�5�$��i͉kn���]);+����ńC�Ƽ?��jz�Ƣ���Jݢ(�cǦ�Ej��v��������Z�Qw�6��]
u1�����NzxĻ��5J�+ ^�@��us�$�e΀�:��tJ�����e�h܊��>�wfP�˩���h��b� Ϡ��hF%L�]>��)�.��Ϫ�)z����rS?S��LQ�'�O��|$�!j^�����	9C'p:Ki��)�iw�������i��P�S+ �r�?�b������� �(��̩RB�KX�.6ƣb�G��ฮ1@.Fp�����1*��Tض������dA^���&\��#��-H��{�K��`Ռ��O��㤛��4����Uj����(���
�J�m��/^�ȑ2I*����'I;���X����g�H�ߋ��K*�nA�@:�v1�R""C�0"��88h��ҙ�o�ޓ�)CG��-g��R�.�%�u�O�#r�̉(5���NU���r��y�Tz������HZ�ԀHK���c�&��}��E��L�ТvK6�7SJ\� �j�������{�h��I~VG�BM2�ӓ�FvoX��Nv�)�|o}sh>-�"G�N/���] ��������K��`����%�!M��.�u�b+�VR��#W�>ǖx�o�[7q(�L1�0k~�����)�%�J�H�N<����[5������;n�����%�b��3�Δr��p$.��E�mma��Ck$�,<��璤��pU����0br�����ׂ{����\��Q͕�ڇT��ڍTL�YN_�B�������&��S$����X�mկ+Hr�d�0�M�Y�\��ҝ�
ݻw, y�Xzj���ڝ�D�X�e�\o� ��gӨ��=n����T�y��Գ�|)�T���c9 ��6�<��󌽩�C��a(��~§]�H�� 
��ġ�����=���I�����y���S{t�w|a�_��!�{�U^-� ��AK|T�8�%5_$O�	������6�,Q�1fG�s�TA�8��O���wyBEM���!v�:�N�a��\�~��2�4��2 ��0�M���1=yC�$��=g6�^}7�~D�n ���|����7�.p�'�BeY��P�U��$k��+�'�޾%$��Ul^�\`7�Ʀ�o��q�-��
���8�2�+c��1�f����N	�n��.W3J�2����� ��O��scq4��������棂�T��"�9����� /�U��Ѡ���7��X��h&�~�Ͷrj�DK'����0IP�>��Yۯ+���`x��Y;Ά�!Ɩ8�>�g���$ڨtع�[��}vP�t�{�}S6�o]`m̏U�;��N���s�Z�D���� �"���T(��'t�쑜�N��
�wsKrl��-uJ��:��L�/"�����UPW?�d��]���s8^�
�Q̔O���ptQ��2��N�9��xC�թi0�־=ݻח6Esr��s���>���Rg�Q����5��|W�����-5���/���U��������Ov�xI�7�s�ԡ��I�d�ln�Ɛ�~�hiw�C���һ{���~�G�޽����Qc�T�Y������<�MJ�� ���\�m	C0c<����2���D��a#���*ԅL,W��~�7��q>��%X����R�VxU��~�%K���D��wMIc�j>x��̒�wЉw�Z,Dv=,e��mL�#��g?��L�����6�� UI��*r�6Np�J���p���Op�	Ӫ�2{���'d����"'�� ����-�H���`���s���V�2z��!��8ō����/X��D�P�8f�!vJ��G���;��Q{�Y����m*8kգ���	�|��U�U�2d�'|oRX�S��sV���C)��������Ħ�X��`[x���L��@ފ1_�p�O�A��Z 3u��{��_hU��=���[�����?uj� p��C򪕷-�-$c��C�m��B�Bwi�� 8��t�"�;ރ(�d�(��U#@_m�Bz��a��;�Ҹ�)a�Zr�zA�*�M6JW�O��g�*I�[��1���kIp���xM���s�F���þy���X��a��&;��t1��!�������WM?D+��rS}�+�1{�Y�?���mJT0�<L±�tvu��/��zԉ�k�7so�X��Z�*�t�~�Hw�,���S��t��0�!Z^B�[�*O~���x���!�q2��8�d��-������FגZ�Y����=��&U�86T�4���W	I��j۵�!f��{c�x��ADq[��f������Tw      �   B  x�Ŕ�v�0���)�Ȣ],!_��:��\RSh��F`���`YI��c�^	���X���X�?����̚j+�֌�
D����kv�^+	>��"�w\��0�l;�F>�R��u�~I�\�81WV¬���
@P����� ghw��K�;���p�}�$�fbef��
�,���,��/�(�68��5$r�φȂ������f�����%;k�LI35��	ս\U�r�/��Gy�	���fQ����7y�7r/���F�)[���_8��&��b�/|88EX�!+J�5�qIA~�R&�}���Е�/
I��&�����eD�t�E���R/��p毗�AX�������b0�N���4�J�ן*=Z�f'��=v��LMhDj�^�N6�-��߼�ӯ���p�)`�yf��&�2d��Xt��/,�c��+ƟT]1z�!A�A�'����^t� �$�r+R9- o&��LP�I�[�J��n�"�e{U�ڌb=�iҬӘ�zi���/w��[H��O�ð����]'�x��L�S8�������4'9Ⴐ�+k�������m�߭��V��-]��      �      x������ � �      �      x�3�4�440������ 
�      �   ,   x�3�4���u,�H��������,�G��?�=... ��       �   (   x�3�,�	��u,�H���������h�W� �Fh      �   �  x��XMo7=ǿb�Fo^I��&P%E�C���!Z���]¯rIYN����J����&� ��83��43����_�s����^����5l�ѫ�pe��Z�����m�a�B=yҞ��V��H�*_>���
��bGx�]�Hg#Z��&�K�;�X���P�}�%�-�?�w?����"�F㽸o�KT5+�ؾ�k,5���F�X�\0"F�uO^����z/YL�N�&���q���h��|_��*��.�O���i��h�C���5�9��D�n�����c�x�To��g���[q���X��1��l6Ρ���|D�,�ӟ��u���p�%��� � �6#�;�Vj��|oG���h��c�a��%r1t�~�6�B�Q���8b�x-n�@��x��|�iY�>�{3��vAa(�P��9\�H���9��6�Y`T�����B�WXǅ�:������F��SA���ŅP�WP��n��v��E��F��M�,n�Kw�j=��_\@�d@e4����.Wo��Ab4�{jd��~o�{��;�gɀP`(���V�3���0�MI�1H�-��F:pX8و��)ib'�ƀ"���l����\)D�|�'�ι�v��9p�D��1 }�-Z�-c�o�N��C�_�[<\ H��9LP��D�o��+�&��4�{�>b
А��(9�L���9"��#Ń�4ɶIɤ��@��*�$@a�!��s�"#N�op&3�%t�����#3$��g�eDƔ�D�ɍ2�	*v �
�r��<�-��b���VI�TF'��AO���p�Јڊ��D/Ny}1e?Rt����zx��9���m��6�Zm�Tq߈�X����%�(��<|V!����<�ZϷc1�I�c�꜠X����gǟ�.� �`{r5999�<���      �   m   x����� Dk<E ����9R�I�d%i E�����D��Y�!���X�p�LN�����E;�Cra��t���؎������L��o{��1r��5`�B�ND)�>�      �   �  x�]V�n�6<�|�@�����hd'����&���Hm���E��秺IJ� �G�duUu�N����ͻ!�a�K���]�;��<'J<��H~�$�L3�r��b�����3�#.�-��p:��C�r�%��0rLBх9Ip2cqw�Vw%��[w<c�y�%�A�����seqo9�W�=�=��������kXf@�*���p���I��Ȯ'����DZ���ZQXF�ǻ��}�y�	w�
p�x�Q���&\���>�1�iR|B��q`!ׇi
��f�� }s�T���ߋ��{Hد�2�wQ�6�m�>��o<�����[TF2q�ě.Jq�ͬ����z6���n(�3b�V�^�{X�y2���x	�ї���U@�k���Q�o��Po�t�R���08� �{l�]ԗ���n��YvC������Ԥ��B����{�����a:RQ=�JD�tO��s�e�՚
�f���I���\-��$�SXM=�EQ�΄͟��qw<�TO��x�n]����5)�W;xy�q���y�WSu�l�V�O$[{���P������jbTd���¯8�a���',)��`���cޒ������a��5��[�5�C��>ςZ�[E��X*��$�E=��B���m�J�I���,�cg� �;����d���Qz�
����M)RsYs�(Ⱦ�֕�DS<-d�Em��R9Ŗ��1���Y=�#慐��u���s��Ӛ�*]*B��Z�j�r�*5Pm��V������F��j|�]>0fv6�a=�Nӫ��<�y�|����i*�X�0٩_V�4�0)F���c���3 ��F`���R���˰�:�,sj�ZX��-r~��,C9`����0K�������z��:�m�Y,��V\˗�u�!�.?'7�E�N$o�`]���\	 �k^�PZ���~h���$S
nZ����5_Tγ�>�$6�*+�@�޻i��T�^��c�LЧ��@Ym���
�}V�C��*�>d˨*��E�r���|�3Բ�6)w�˷�%[�~7�Wi��ҝw�^Q���Ko��!1i7V"[l^ǬMF3�T�%�JV�%�z{�ËX�'.�
o`:pk/�T���fx.�z��<��{^�nr�*�nY���w������u�W{�iE�7?u�k��>��e���j � PCM��A���x�͹ܺ      �      x������ � �      �   M   x�3��������&�Z�_Z���i�Y�eL�O.�M�+)�՚@�Ӌ22����P�����"�P� A�Z      �   t   x�3��!׊�܂�T�T(]��\F�FF��f��F
FV��V��(b�V@dl��Z\��X�Y���0"��Ѐ�M����������)�g^qIfIiIf~^1g&�5lZ� `-�      �   �  x����n�0Eל���0):튶�.�M� ��8!"QI���%)K�eK���a�^�$g��X	~���^eW�6�d��a���<�{ֿ�3�93�As�DWZ��5��BYTg�jtA6����;f�V�X8���q��	��W�+�b�qq�������9_��UeѹPhͶ	�=�(��42�*Ot7C�ݑ�?�f����L�������oO "_���~�L0�W��o-+��|ٴ�b�:� ��
�[e���j�~�	�� �Z��&�Х�| V��ּ�uq�)?���'�7*�{�,�GL�'cc��2��DF���Q���(��d�o_��Q�^=*I �d�N9���*N:��
/�/Aܐ۩���]fD�(�ڴ�]�*z��_� =ve�p�U\�U�r�u��Q��E�}Ym�u~S?Y��R���{��!X��\y��&��(��r��>i�M�:O�m<>YU�-�d �b:����rEF�j�����a���ɰ?�F�;F=�#ɚ$=�1y�Sޫ@�9��t�u=�g��MaZf���p0 =�m���)�W��p5܅.��A��cto����;����f����o����R���~$�v�U���+�̪���d�9;�;pz<�e��~,���8=%����f��� ���      �      x������ � �      �   ;   x�35�4���440�4 ��F�FF��@��T04�22�20�*f���ih����� WyY      �      x������ � �      �      x������ � �      �      x�u\ے�F�|���?0}�<�J���X˒e�i_8�%�}I�>� HܪG'«�f�IVH$(.��ʹ[���r=�m7�?ƶ{=~��ro����˹?vϷv�/���g*m�wN��}?���8�����<����^�o��=�η׶;�������Ys���e���|����fݬ��}��~Y6�˹\���'9ޮ=G�Wz��ocw�'�B�q:�t|ծ-����δ����X^ˬ����_J;���^�?=ni��a|�.�������]o�Y�4E���_��W�*�x���Bt�m��~�Ǯ�c<���:k�qh����:wۇ��a�jV��U����JW�e9��8�ʬ��z*�0������W��{y�{�|�r���3�m/���t��6N6�6��?������9��n:uױ��Ȃ���3�\7��]x��K����������ׯ��7_XLD�A&���^gMw��E4����L�m��_7u�yu/�t��Y�y��z��Yn�k��oWv�����I�o�q�>>����p���ؕc�BL��.�6X�V�f�,��6͇iݏ��y"_f��"/��n�q���|���//�ԏl8Y絰i���]�J?���g�š��GG���=�:�ݱ����VN#�<��p��m~������ԋg�����wF�埰�d+de�t�ەnO�x��L�^.�AMK(�ɩZ�رMn�~t'�����y*����cg#�О��݉�V7�+�/����B�>�.���lC�zӬ��ӆ��!9�v�y���#�0|^�7k>�	�4��tfC� Å����Qb���y*9��W/��Y��l���d��/��{�~��/���C�Y�t6��v�k9�t��YS�;��a������{��K!�ŏ®dXc�|�'�.������}����S:*���? +?�v��0��2���]۱���(A���|��dÙ/����k!��{Κ����P�t�xC9���U>�wx�k!O�hO��No���J�$W�/�֒���q�@TӪ��d=�d�[���7c���Uh�Jd�]����!w0��W�:l��4�F����+V���8:i���\�I�Y�J�Ղ�g}F8���	IHRi���%�7��ve(x@Z _7��Ϛ�ɣ��x���|A���eA��iJp��8������7�����{�U~,�L�w���J�П&�Oi	��_58m	n#�٧m��	)�����������%C�k"bH��H�t!�Cc����Z,9[<VX�_��	38x��225Ze����1�̊E�),-JT�(����1J�'��ް��|����G���{!d�(]%�����_��;#	)�7�f��R�_X�P��`v�6�[x	���������d�������=�{���[��j>�n��Q�-�G�����I�o�^꾃@�P�Y�xTrN��.�UD���ir�@�	 ��f�3���'$��qԆ��i6�{ur�l{xN�"�:HcنQG�x�X���T�tJ6*O�/^���$�/�TqŌ@�)UFE��gvr^լ�F�!����*�`��>Kj��1k�=qt
�X؜i!�r�k�����g���*�ʄ��{J	�X�(0�Y��uxX�Z4;'V�����ĳ��	����s��"������<�3���g�F�.#`NDL���}9H`����#y�LO7��_�Q^��,t�KZ��4�-���`C{��.U�W����+3#',_PeGuh��>i��[��X�z���'U�c����+���}������o+Ii�*o��Ĳ���}��d��#T�{[�q������7. �iI�*�.��ĩ�i����I����6����Qo�ȋZq�����r�.Ɇ�,�|`Ú;ݜnj���%R^�=���Y�`�����!ˎH/��V��h��\�`���k�Ff傘���8�%�����SYѐ���%5C����{=jj�y�XνI�@�ğ��r�E!��ݝ�s�5(vw����!��l4V!�0�A`���:Y�����"��cZr�=@�����B3�-�(
1z�Y��e���Bn��.UA��d���M�����|S��;����6�,�w��K�iW��EI�M�`�T�!P�L��o�)"OqA�C�=ܠ�W6�ů%U=�P�֪Fx�bI_b�Ő)~��Dn�E�gD@�߯��\��9��6��#9qQ�*���R��;+�ED��9E� "�{) �Pqa�!��2%.J��V�Uy/�j�Y0X&x�0R�h!Y'@�Õk]H��M4�X��	�̉�����cT����d�5�jVf%E�c^���Ix����f�"��P�̲��5L����<0�DM�Ͽcu$�r���9��0�Xe�!��l4��LEx�d�C9)D, ڏ�
�|�.�����*�C����pvt
�(��.��ì�hdF�}�t��+O9��t�3���\�{�s&=Ր03'���ڍ9mk~騤��rKI�e�������4*1Ű6kB^�d���a���������/R�ߋ x]7�r�\�f,��p���m��I���0UgA��ݰz�[[���!)���*5�
�&W���Ρ����k��}R�'k�f"����)������f�3���n�t�"씋���3�oKY�װ�����ʅ��v��������قJ^�i����s��_\7p���bC|�g�'�@��xl�H�y��׀Ų4��
�j����HE%��	�zCCMG���ohC��B�0G"$����{d+S#����cq����JJG�+G�B�0˄�U���Dڋ��YF�:�|T=�L�O�ҮT(�
�`��8��I�2��E�2f�§Û�ݴbw��2j�z=��H4�f��Z�6qt��ꞏ̩5(�RT6iJ��<�/�3iq�Y��:n*��eK��<�!2%�����k-�����l��\��Ҭ�AKP�Ҕ3]�a3�C���Z��S��� �5}m�q"B��Y�EاܽE�h�e�r ?��\r�-�b�m�A��
n�U�3	��*6%&�?f�./�!d��N�v��Y�%��ԥZÑS�I)L`B�W�&�Ů�d��ٔ��h	A�~H��U������BA8�o�����%
'��V]8?�U7�X흉�J���F�f�������ގN!�^I��m9�� `w�j'���ۻhoħ��YHf�@�y�f�:��޳���:4��W��z�p>��%nW�Dc-*�? Ӧ�pk]4I	���CE 
݈���*I�	0_9a��iHq���d%��L������͆+����z�uqΘ��-H�X�	-O�~V�}�ұ�;:�4�!��T}�m<�d��--{����Xq9Gu�6��c�=���\T�n�&H�?V�RRO���
H�'Z=^aۓw:��)���TH����,�㛲��J4�Y�`���v�l o�-������]�g�fĤÍ��M��������4��W�\#�V�*�MwR1s�U`����x)���i����|�ओ��D!�,��~�\td&�zI�D,�����uj�����: <�%�����ե>G�KF���Ũx�փ��he����>��������7$�4l����%�ڳ�$����B��i��IFr�ٷ��F�~$@��֒?��.L�U�(���U�f����0AQ�~������K�Wd�֦��J��������lI������C�]M��*��x��x�xǍ�3H+�^(̌CRh�qƗM�"�Ո_����[�}��Yo4u-Rm��Sz�;�r�i&l�<�酖��s���2�P�yj����}˰k�����%���(�+��4�.e�R��§]��'�XG��U)�%�봤E>'%W�T5вӋXfH�h:k�e��;�\�hM���g����Y�U�$���'v�ɝ�P����#�)��"�qfM�:�dI�$�ͼ��J�xKݘ�{�ݬI۱�;(�Drp�d���.W�?i��(c��k�C#���)x���
Vn�5I�^� �e�����$�sA�ٺY�t��'?4o�p �  Q���L��ךF7TX�xY�e� V���y?]yqZ�qV.4�޺Y�hJ��i��B�d�R��`4CǬr���`e./uΰ�j�B������峩�w5�hˏ��P�y�p��8��m��m�Ѩ0�)r�ϕ\�3���G�)�T�R����y44�Bc��j~�C�MC�>a�5�]��F�p�������WgI�
��h:�b�Tu�X��z��Zz�մܩWy©�S�>me>��m�^�S%|�4�i�km��6�MC`�U!��^�lC��C��X����b�]���l�f��Nw1��Y�Gt=���z�T�IA�
��}�o�~���Hm3B�c���M����)E�N�@�ͿkO���K��)��H���g����-7����9��I��Y�J;���E�c�[���}�:��
	�����d��C�0���]�`��Y:%���Q�:�r���1�l�u�XU�S!<�q�����U�٫$뚄h`�'By@����i�����QU�I��Ph��Ut�KeFLl�`��
�C�ٷ��e'�Ӈ2ї�sPr;�-���O���8��\���Q7tR���&Ft�.ʤq,��c����b��׳�_�L�6�W��$��J��\�?E{V�M2d㭌Tm�ga�*�l�L�.�4,��w�ɐ�˼o\k���*ޠ�,s٬�yh��8`LRȊ�ϖڵ�Z�l�O紶ƪ�lW��мx�����"�^��1��P��0�"o�O��s�U�m���T�4���A�)�)�-��}�����m��|��"o����&=���N�k��!,�.�9Xg����S�	��ci�PW�� �mrF:8Ơ�5�$��i͉kn���]);+����ńC�Ƽ?��jz�Ƣ���Jݢ(�cǦ�Ej��v��������Z�Qw�6��]
u1�����NzxĻ��5J�+ ^�@��us�$�e΀�:��tJ�����e�h܊��>�wfP�˩���h��b� Ϡ��hF%L�]>��)�.��Ϫ�)z����rS?S��LQ�'�O��|$�!j^�����	9C'p:Ki��)�iw�������i��P�S+ �r�?�b������� �(��̩RB�KX�.6ƣb�G��ฮ1@.Fp�����1*��Tض������dA^���&\��#��-H��{�K��`Ռ��O��㤛��4����Uj����(���
�J�m��/^�ȑ2I*����'I;���X����g�H�ߋ��K*�nA�@:�v1�R""C�0"��88h��ҙ�o�ޓ�)CG��-g��R�.�%�u�O�#r�̉(5���NU���r��y�Tz������HZ�ԀHK���c�&��}��E��L�ТvK6�7SJ\� �j�������{�h��I~VG�BM2�ӓ�FvoX��Nv�)�|o}sh>-�"G�N/���] ��������K��`����%�!M��.�u�b+�VR��#W�>ǖx�o�[7q(�L1�0k~�����)�%�J�H�N<����[5������;n�����%�b��3�Δr��p$.��E�mma��Ck$�,<��璤��pU����0br�����ׂ{����\��Q͕�ڇT��ڍTL�YN_�B�������&��S$����X�mկ+Hr�d�0�M�Y�\��ҝ�
ݻw, y�Xzj���ڝ�D�X�e�\o� ��gӨ��=n����T�y��Գ�|)�T���c9 ��6�<��󌽩�C��a(��~§]�H�� 
��ġ�����=���I�����y���S{t�w|a�_��!�{�U^-� ��AK|T�8�%5_$O�	������6�,Q�1fG�s�TA�8��O���wyBEM���!v�:�N�a��\�~��2�4��2 ��0�M���1=yC�$��=g6�^}7�~D�n ���|����7�.p�'�BeY��P�U��$k��+�'�޾%$��Ul^�\`7�Ʀ�o��q�-��
���8�2�+c��1�f����N	�n��.W3J�2����� ��O��scq4��������棂�T��"�9����� /�U��Ѡ���7��X��h&�~�Ͷrj�DK'����0IP�>��Yۯ+���`x��Y;Ά�!Ɩ8�>�g���$ڨtع�[��}vP�t�{�}S6�o]`m̏U�;��N���s�Z�D���� �"���T(��'t�쑜�N��
�wsKrl��-uJ��:��L�/"�����UPW?�d��]���s8^�
�Q̔O���ptQ��2��N�9��xC�թi0�־=ݻח6Esr��s���>���Rg�Q����5��|W�����-5���/���U��������Ov�xI�7�s�ԡ��I�d�ln�Ɛ�~�hiw�C���һ{���~�G�޽����Qc�T�Y������<�MJ�� ���\�m	C0c<����2���D��a#���*ԅL,W��~�7��q>��%X����R�VxU��~�%K���D��wMIc�j>x��̒�wЉw�Z,Dv=,e��mL�#��g?��L�����6�� UI��*r�6Np�J���p���Op�	Ӫ�2{���'d����"'�� ����-�H���`���s���V�2z��!��8ō����/X��D�P�8f�!vJ��G���;��Q{�Y����m*8kգ���	�|��U�U�2d�'|oRX�S��sV���C)��������Ħ�X��`[x���L��@ފ1_�p�O�A��Z 3u��{��_hU��=���[�����?uj� p��C򪕷-�-$c��C�m��B�Bwi�� 8��t�"�;ރ(�d�(��U#@_m�Bz��a��;�Ҹ�)a�Zr�zA�*�M6JW�O��g�*I�[��1���kIp���xM���s�F���þy���X��a��&;��t1��!�������WM?D+��rS}�+�1{�Y�?���mJT0�<L±�tvu��/��zԉ�k�7so�X��Z�*�t�~�Hw�,���S��t��0�!Z^B�[�*O~���x���!�q2��8�d��-������FגZ�Y����=��&U�86T�4���W	I��j۵�!f��{c�x��ADq[��f������Tw      �     x��QMS�0<?~E�P'	iK8�!Ne
88t��iJ�	��0⯷ǋzs^6����ݷ��(}@��6�"��;#��Z.8�D���� �33��@��d�_�w�a6��*P*�Hl�* ����]@��7��z���<2��"��y7�4{X1���qo���`w�'�V��@E������v(��I}H��4Z"�)��I+# ?�Lj�Z����vW��C�}����f�g[GS٩;۲s��$U�B�p��<n/.��}/3����o����}{����p�[��[
�zn�*��k&ܪ[%`ӵ�-�j�/9}U�����c0V+'5�{!-���OYb������iS�N���ژ8r�)��w����R�t�h4> ��3      �      x������ � �      D   �  x��XMo7=ǿb�Fo^I��&P%E�C���!Z���]¯rIYN����J����&� ��83��43����_�s����^����5l�ѫ�pe��Z�����m�a�B=yҞ��V��H�*_>���
��bGx�]�Hg#Z��&�K�;�X���P�}�%�-�?�w?����"�F㽸o�KT5+�ؾ�k,5���F�X�\0"F�uO^����z/YL�N�&���q���h��|_��*��.�O���i��h�C���5�9��D�n�����c�x�To��g���[q���X��1��l6Ρ���|D�,�ӟ��u���p�%��� � �6#�;�Vj��|oG���h��c�a��%r1t�~�6�B�Q���8b�x-n�@��x��|�iY�>�{3��vAa(�P��9\�H���9��6�Y`T�����B�WXǅ�:������F��SA���ŅP�WP��n��v��E��F��M�,n�Kw�j=��_\@�d@e4����.Wo��Ab4�{jd��~o�{��;�gɀP`(���V�3���0�MI�1H�-��F:pX8و��)ib'�ƀ"���l����\)D�|�'�ι�v��9p�D��1 }�-Z�-c�o�N��C�_�[<\ H��9LP��D�o��+�&��4�{�>b
А��(9�L���9"��#Ń�4ɶIɤ��@��*�$@a�!��s�"#N�op&3�%t�����#3$��g�eDƔ�D�ɍ2�	*v �
�r��<�-��b���VI�TF'��AO���p�Јڊ��D/Ny}1e?Rt����zx��9���m��6�Zm�Tq߈�X����%�(��<|V!����<�ZϷc1�I�c�꜠X����gǟ�.� �`{r5999�<���      E   �  x�]V�n�6<�|�@�����hd'����&���Hm���E��秺IJ� �G�duUu�N����ͻ!�a�K���]�;��<'J<��H~�$�L3�r��b�����3�#.�-��p:��C�r�%��0rLBх9Ip2cqw�Vw%��[w<c�y�%�A�����seqo9�W�=�=��������kXf@�*���p���I��Ȯ'����DZ���ZQXF�ǻ��}�y�	w�
p�x�Q���&\���>�1�iR|B��q`!ׇi
��f�� }s�T���ߋ��{Hد�2�wQ�6�m�>��o<�����[TF2q�ě.Jq�ͬ����z6���n(�3b�V�^�{X�y2���x	�ї���U@�k���Q�o��Po�t�R���08� �{l�]ԗ���n��YvC������Ԥ��B����{�����a:RQ=�JD�tO��s�e�՚
�f���I���\-��$�SXM=�EQ�΄͟��qw<�TO��x�n]����5)�W;xy�q���y�WSu�l�V�O$[{���P������jbTd���¯8�a���',)��`���cޒ������a��5��[�5�C��>ςZ�[E��X*��$�E=��B���m�J�I���,�cg� �;����d���Qz�
����M)RsYs�(Ⱦ�֕�DS<-d�Em��R9Ŗ��1���Y=�#慐��u���s��Ӛ�*]*B��Z�j�r�*5Pm��V������F��j|�]>0fv6�a=�Nӫ��<�y�|����i*�X�0٩_V�4�0)F���c���3 ��F`���R���˰�:�,sj�ZX��-r~��,C9`����0K�������z��:�m�Y,��V\˗�u�!�.?'7�E�N$o�`]���\	 �k^�PZ���~h���$S
nZ����5_Tγ�>�$6�*+�@�޻i��T�^��c�LЧ��@Ym���
�}V�C��*�>d˨*��E�r���|�3Բ�6)w�˷�%[�~7�Wi��ҝw�^Q���Ko��!1i7V"[l^ǬMF3�T�%�JV�%�z{�ËX�'.�
o`:pk/�T���fx.�z��<��{^�nr�*�nY���w������u�W{�iE�7?u�k��>��e���j � PCM��A���x�͹ܺ      F      x������ � �      G   M   x�3��������&�Z�_Z���i�Y�eL�O.�M�+)�՚@�Ӌ22����P�����"�P� A�Z      H   t   x�3��!׊�܂�T�T(]��\F�FF��f��F
FV��V��(b�V@dl��Z\��X�Y���0"��Ѐ�M����������)�g^qIfIiIf~^1g&�5lZ� `-�      I   �  x����n�0Eל���0):튶�.�M� ��8!"QI���%)K�eK���a�^�$g��X	~���^eW�6�d��a���<�{ֿ�3�93�As�DWZ��5��BYTg�jtA6����;f�V�X8���q��	��W�+�b�qq�������9_��UeѹPhͶ	�=�(��42�*Ot7C�ݑ�?�f����L�������oO "_���~�L0�W��o-+��|ٴ�b�:� ��
�[e���j�~�	�� �Z��&�Х�| V��ּ�uq�)?���'�7*�{�,�GL�'cc��2��DF���Q���(��d�o_��Q�^=*I �d�N9���*N:��
/�/Aܐ۩���]fD�(�ڴ�]�*z��_� =ve�p�U\�U�r�u��Q��E�}Ym�u~S?Y��R���{��!X��\y��&��(��r��>i�M�:O�m<>YU�-�d �b:����rEF�j�����a���ɰ?�F�;F=�#ɚ$=�1y�Sޫ@�9��t�u=�g��MaZf���p0 =�m���)�W��p5܅.��A��cto����;����f����o����R���~$�v�U���+�̪���d�9;�;pz<�e��~,���8=%����f��� ���      J   �  x������0��>�J��c�q�S�J+[��ו�ik�%�K���p@<G_7i� ��C��������F:ƭ[����<}����pvO�,}�ŭ�l���MHj�%7��Rc4W,�B*4��g��M�_�G��%U9%Dp0�K�/�,R �K�/��y@?_�`�a9���"�o��	�y�s9<�dZ �9�7�MI�u�m�ɸ��+�	.�t�ĵ����o|�Bdқ��o�l5G�˅1��GB�x�DF�)xZH~I|�K��)NN����z�2sF$0�1T@���\^��e[��~���j��u��jT��M����+��L��ȴ��w�O誶^y�غ=]!��r��_~ni��4���9�L�'�J2#���+N���aa�b�M�G_6�C��Esu��Z��K���o�=�ز�%�6���Sl>��N��������_�V�S���D�3"������`0�	�vh      �   �   x���M
�0����)z���$m��P<�,u'�P��B�bh��^�×$`�˺�_���ߗ�B�#�#���DM��)f��dZ¦ȥr@H8��F9l~C!8~���nƾ5�	�o�`G��h���F"S[5�S�8��j�	?�m�      K      x������ � �      L   �   x�E�11��1�'��/4H����a�n'�7#k�\�gi4<uZ=)MO�x���I\=�B��xb�%+`��eo/�>�gG�N��ُ�4Z-��Ǧ�-�|�怰���PR��H�#7�E�!g��
�k�� �+� quPH��WiLa_<r�hMb�5�+�_oԂ �;�����&#��j���#K�}�����t>�;��r      M   "   x�3�,�LIMJ,R�M�+�2�,�/�0c���� ��		      N   >  x�}����0�ϓ���@��&��v�ڪ���%�:62��>NO}��O��gL��
�����=��
����d^�@I�y+�+�/�\��%<̅+�y��E��N�N	h�Zb��zM
�f�d�d�;!��,(f	v�G[k���1�]#Zn�p�������i���n}��2L�N������-?I����[�q�]���$��+ر�ݯ1��EE���'K���e
������N~��q,�2-i��w�~LTy��Mۦ1�v�q�|=H�}.SAH8���;��KhEg�)7Gf�TA�.+x6��$�d�L-�LMi�,|��~��`��������Wg�KR�&��`�s��
>I�t#�5��X2EqOF�Yuh��5�3%4?��6���t�a�N�WԊ%�,�<���uu�5~^�޵����EV�~섉�_?�$m|��8O�@�|���2t�\II8��T���}!VXTں
v/���G���9@������@���9�DQ��:	=DB	o�]ЍGw&���fDi8�(���/#�O' �=돵a�C̯�����?��ۆ�[, ��s|      O     x��X�R�0�-s��»\U*JTt�-`����v�$â�Xײ�	3�}`�rE��L��G=FOF]F3�jҏ'�@3�i <�q����h&G�gJ��T�g@y�����tp~��W�@\�/x�O���R�`\~�IO�,nH�,�0��/dk:XZ ���_p�O�b�;�a�R�=��mƱ�+zx�ఌ����O�8YiJX�ڂ�[[��ژAO���B��`! ^%g��U�O��9(�Cr�Қ���[$���q�D�V=7�T;8��Y �@��ڙݞ�2��ͯ��ܭִ�5 �Zʭ5*(�QK�L�;kN��j�e[���9,#�����մ`�����8�7���((}��T��2�f4�[[�1v���%���譓��%�,`y�&���-��Z' ����L�}���EyY&YNp��N �4x�P�A����H�ھ6'���e�i`|i�?���0:���t3� E:yU��us�#b����19�䰰�pTis�2�7�:�O��U�;u`ws�)���{n^��9�,pJ�3RJ����$�V��#VJ�'2�8�t����ߡ����R�h��
��e;q��IS2�(|ög���߰�jī��xn&=���r���E��$����@̹�X]3e7N�t����G<���*��57���݆f�@���z�+�E��\-8,V��ךF�8`�Hċ�
�] �Z3W�.�k�r���97���(��C�*$rX�O5'�ܟf���U���Zn,W��s�0W����Q�\���iHsU�稜�U���Z~�+y�h�\�.s%�k�+y�\�\I�[��⩌:��C��Ѓy�G`�q�g���F�x�$b�;�)���Ý�a8%b�{W���K�}��(K���ʆ	��W�{��WH ���B�q�jlLTHp��G��8E�J��,����y�V#��y�V��Bt=N�� �xw���L���l�P(]��i^:�n>a�}�脒m�
�a%[��-$���x\'J�3s9�����>�|�����,����Z      P      x������ � �      Q   D   x�3�t,(����OI�)��	-N-�4�2"Z���1VQ���XEͰ��c��*j��؅�b���� kV      R      x�u\ے�F�|���?0}�<�J���X˒e�i_8�%�}I�>� HܪG'«�f�IVH$(.��ʹ[���r=�m7�?ƶ{=~��ro����˹?vϷv�/���g*m�wN��}?���8�����<����^�o��=�η׶;�������Ys���e���|����fݬ��}��~Y6�˹\���'9ޮ=G�Wz��ocw�'�B�q:�t|ծ-����δ����X^ˬ����_J;���^�?=ni��a|�.�������]o�Y�4E���_��W�*�x���Bt�m��~�Ǯ�c<���:k�qh����:wۇ��a�jV��U����JW�e9��8�ʬ��z*�0������W��{y�{�|�r���3�m/���t��6N6�6��?������9��n:uױ��Ȃ���3�\7��]x��K����������ׯ��7_XLD�A&���^gMw��E4����L�m��_7u�yu/�t��Y�y��z��Yn�k��oWv�����I�o�q�>>����p���ؕc�BL��.�6X�V�f�,��6͇iݏ��y"_f��"/��n�q���|���//�ԏl8Y絰i���]�J?���g�š��GG���=�:�ݱ����VN#�<��p��m~������ԋg�����wF�埰�d+de�t�ەnO�x��L�^.�AMK(�ɩZ�رMn�~t'�����y*����cg#�О��݉�V7�+�/����B�>�.���lC�zӬ��ӆ��!9�v�y���#�0|^�7k>�	�4��tfC� Å����Qb���y*9��W/��Y��l���d��/��{�~��/���C�Y�t6��v�k9�t��YS�;��a������{��K!�ŏ®dXc�|�'�.������}����S:*���? +?�v��0��2���]۱���(A���|��dÙ/����k!��{Κ����P�t�xC9���U>�wx�k!O�hO��No���J�$W�/�֒���q�@TӪ��d=�d�[���7c���Uh�Jd�]����!w0��W�:l��4�F����+V���8:i���\�I�Y�J�Ղ�g}F8���	IHRi���%�7��ve(x@Z _7��Ϛ�ɣ��x���|A���eA��iJp��8������7�����{�U~,�L�w���J�П&�Oi	��_58m	n#�٧m��	)�����������%C�k"bH��H�t!�Cc����Z,9[<VX�_��	38x��225Ze����1�̊E�),-JT�(����1J�'��ް��|����G���{!d�(]%�����_��;#	)�7�f��R�_X�P��`v�6�[x	���������d�������=�{���[��j>�n��Q�-�G�����I�o�^꾃@�P�Y�xTrN��.�UD���ir�@�	 ��f�3���'$��qԆ��i6�{ur�l{xN�"�:HcنQG�x�X���T�tJ6*O�/^���$�/�TqŌ@�)UFE��gvr^լ�F�!����*�`��>Kj��1k�=qt
�X؜i!�r�k�����g���*�ʄ��{J	�X�(0�Y��uxX�Z4;'V�����ĳ��	����s��"������<�3���g�F�.#`NDL���}9H`����#y�LO7��_�Q^��,t�KZ��4�-���`C{��.U�W����+3#',_PeGuh��>i��[��X�z���'U�c����+���}������o+Ii�*o��Ĳ���}��d��#T�{[�q������7. �iI�*�.��ĩ�i����I����6����Qo�ȋZq�����r�.Ɇ�,�|`Ú;ݜnj���%R^�=���Y�`�����!ˎH/��V��h��\�`���k�Ff傘���8�%�����SYѐ���%5C����{=jj�y�XνI�@�ğ��r�E!��ݝ�s�5(vw����!��l4V!�0�A`���:Y�����"��cZr�=@�����B3�-�(
1z�Y��e���Bn��.UA��d���M�����|S��;����6�,�w��K�iW��EI�M�`�T�!P�L��o�)"OqA�C�=ܠ�W6�ů%U=�P�֪Fx�bI_b�Ő)~��Dn�E�gD@�߯��\��9��6��#9qQ�*���R��;+�ED��9E� "�{) �Pqa�!��2%.J��V�Uy/�j�Y0X&x�0R�h!Y'@�Õk]H��M4�X��	�̉�����cT����d�5�jVf%E�c^���Ix����f�"��P�̲��5L����<0�DM�Ͽcu$�r���9��0�Xe�!��l4��LEx�d�C9)D, ڏ�
�|�.�����*�C����pvt
�(��.��ì�hdF�}�t��+O9��t�3���\�{�s&=Ր03'���ڍ9mk~騤��rKI�e�������4*1Ű6kB^�d���a���������/R�ߋ x]7�r�\�f,��p���m��I���0UgA��ݰz�[[���!)���*5�
�&W���Ρ����k��}R�'k�f"����)������f�3���n�t�"씋���3�oKY�װ�����ʅ��v��������قJ^�i����s��_\7p���bC|�g�'�@��xl�H�y��׀Ų4��
�j����HE%��	�zCCMG���ohC��B�0G"$����{d+S#����cq����JJG�+G�B�0˄�U���Dڋ��YF�:�|T=�L�O�ҮT(�
�`��8��I�2��E�2f�§Û�ݴbw��2j�z=��H4�f��Z�6qt��ꞏ̩5(�RT6iJ��<�/�3iq�Y��:n*��eK��<�!2%�����k-�����l��\��Ҭ�AKP�Ҕ3]�a3�C���Z��S��� �5}m�q"B��Y�EاܽE�h�e�r ?��\r�-�b�m�A��
n�U�3	��*6%&�?f�./�!d��N�v��Y�%��ԥZÑS�I)L`B�W�&�Ů�d��ٔ��h	A�~H��U������BA8�o�����%
'��V]8?�U7�X흉�J���F�f�������ގN!�^I��m9�� `w�j'���ۻhoħ��YHf�@�y�f�:��޳���:4��W��z�p>��%nW�Dc-*�? Ӧ�pk]4I	���CE 
݈���*I�	0_9a��iHq���d%��L������͆+����z�uqΘ��-H�X�	-O�~V�}�ұ�;:�4�!��T}�m<�d��--{����Xq9Gu�6��c�=���\T�n�&H�?V�RRO���
H�'Z=^aۓw:��)���TH����,�㛲��J4�Y�`���v�l o�-������]�g�fĤÍ��M��������4��W�\#�V�*�MwR1s�U`����x)���i����|�ओ��D!�,��~�\td&�zI�D,�����uj�����: <�%�����ե>G�KF���Ũx�փ��he����>��������7$�4l����%�ڳ�$����B��i��IFr�ٷ��F�~$@��֒?��.L�U�(���U�f����0AQ�~������K�Wd�֦��J��������lI������C�]M��*��x��x�xǍ�3H+�^(̌CRh�qƗM�"�Ո_����[�}��Yo4u-Rm��Sz�;�r�i&l�<�酖��s���2�P�yj����}˰k�����%���(�+��4�.e�R��§]��'�XG��U)�%�봤E>'%W�T5вӋXfH�h:k�e��;�\�hM���g����Y�U�$���'v�ɝ�P����#�)��"�qfM�:�dI�$�ͼ��J�xKݘ�{�ݬI۱�;(�Drp�d���.W�?i��(c��k�C#���)x���
Vn�5I�^� �e�����$�sA�ٺY�t��'?4o�p �  Q���L��ךF7TX�xY�e� V���y?]yqZ�qV.4�޺Y�hJ��i��B�d�R��`4CǬr���`e./uΰ�j�B������峩�w5�hˏ��P�y�p��8��m��m�Ѩ0�)r�ϕ\�3���G�)�T�R����y44�Bc��j~�C�MC�>a�5�]��F�p�������WgI�
��h:�b�Tu�X��z��Zz�մܩWy©�S�>me>��m�^�S%|�4�i�km��6�MC`�U!��^�lC��C��X����b�]���l�f��Nw1��Y�Gt=���z�T�IA�
��}�o�~���Hm3B�c���M����)E�N�@�ͿkO���K��)��H���g����-7����9��I��Y�J;���E�c�[���}�:��
	�����d��C�0���]�`��Y:%���Q�:�r���1�l�u�XU�S!<�q�����U�٫$뚄h`�'By@����i�����QU�I��Ph��Ut�KeFLl�`��
�C�ٷ��e'�Ӈ2ї�sPr;�-���O���8��\���Q7tR���&Ft�.ʤq,��c����b��׳�_�L�6�W��$��J��\�?E{V�M2d㭌Tm�ga�*�l�L�.�4,��w�ɐ�˼o\k���*ޠ�,s٬�yh��8`LRȊ�ϖڵ�Z�l�O紶ƪ�lW��мx�����"�^��1��P��0�"o�O��s�U�m���T�4���A�)�)�-��}�����m��|��"o����&=���N�k��!,�.�9Xg����S�	��ci�PW�� �mrF:8Ơ�5�$��i͉kn���]);+����ńC�Ƽ?��jz�Ƣ���Jݢ(�cǦ�Ej��v��������Z�Qw�6��]
u1�����NzxĻ��5J�+ ^�@��us�$�e΀�:��tJ�����e�h܊��>�wfP�˩���h��b� Ϡ��hF%L�]>��)�.��Ϫ�)z����rS?S��LQ�'�O��|$�!j^�����	9C'p:Ki��)�iw�������i��P�S+ �r�?�b������� �(��̩RB�KX�.6ƣb�G��ฮ1@.Fp�����1*��Tض������dA^���&\��#��-H��{�K��`Ռ��O��㤛��4����Uj����(���
�J�m��/^�ȑ2I*����'I;���X����g�H�ߋ��K*�nA�@:�v1�R""C�0"��88h��ҙ�o�ޓ�)CG��-g��R�.�%�u�O�#r�̉(5���NU���r��y�Tz������HZ�ԀHK���c�&��}��E��L�ТvK6�7SJ\� �j�������{�h��I~VG�BM2�ӓ�FvoX��Nv�)�|o}sh>-�"G�N/���] ��������K��`����%�!M��.�u�b+�VR��#W�>ǖx�o�[7q(�L1�0k~�����)�%�J�H�N<����[5������;n�����%�b��3�Δr��p$.��E�mma��Ck$�,<��璤��pU����0br�����ׂ{����\��Q͕�ڇT��ڍTL�YN_�B�������&��S$����X�mկ+Hr�d�0�M�Y�\��ҝ�
ݻw, y�Xzj���ڝ�D�X�e�\o� ��gӨ��=n����T�y��Գ�|)�T���c9 ��6�<��󌽩�C��a(��~§]�H�� 
��ġ�����=���I�����y���S{t�w|a�_��!�{�U^-� ��AK|T�8�%5_$O�	������6�,Q�1fG�s�TA�8��O���wyBEM���!v�:�N�a��\�~��2�4��2 ��0�M���1=yC�$��=g6�^}7�~D�n ���|����7�.p�'�BeY��P�U��$k��+�'�޾%$��Ul^�\`7�Ʀ�o��q�-��
���8�2�+c��1�f����N	�n��.W3J�2����� ��O��scq4��������棂�T��"�9����� /�U��Ѡ���7��X��h&�~�Ͷrj�DK'����0IP�>��Yۯ+���`x��Y;Ά�!Ɩ8�>�g���$ڨtع�[��}vP�t�{�}S6�o]`m̏U�;��N���s�Z�D���� �"���T(��'t�쑜�N��
�wsKrl��-uJ��:��L�/"�����UPW?�d��]���s8^�
�Q̔O���ptQ��2��N�9��xC�թi0�־=ݻח6Esr��s���>���Rg�Q����5��|W�����-5���/���U��������Ov�xI�7�s�ԡ��I�d�ln�Ɛ�~�hiw�C���һ{���~�G�޽����Qc�T�Y������<�MJ�� ���\�m	C0c<����2���D��a#���*ԅL,W��~�7��q>��%X����R�VxU��~�%K���D��wMIc�j>x��̒�wЉw�Z,Dv=,e��mL�#��g?��L�����6�� UI��*r�6Np�J���p���Op�	Ӫ�2{���'d����"'�� ����-�H���`���s���V�2z��!��8ō����/X��D�P�8f�!vJ��G���;��Q{�Y����m*8kգ���	�|��U�U�2d�'|oRX�S��sV���C)��������Ħ�X��`[x���L��@ފ1_�p�O�A��Z 3u��{��_hU��=���[�����?uj� p��C򪕷-�-$c��C�m��B�Bwi�� 8��t�"�;ރ(�d�(��U#@_m�Bz��a��;�Ҹ�)a�Zr�zA�*�M6JW�O��g�*I�[��1���kIp���xM���s�F���þy���X��a��&;��t1��!�������WM?D+��rS}�+�1{�Y�?���mJT0�<L±�tvu��/��zԉ�k�7so�X��Z�*�t�~�Hw�,���S��t��0�!Z^B�[�*O~���x���!�q2��8�d��-������FגZ�Y����=��&U�86T�4���W	I��j۵�!f��{c�x��ADq[��f������Tw      S      x������ � �      T   �   x���1
�0��:�/�"ɱ��,]�P(��\�����e��!����幽���:On��cd�0u<���1j���34�Z��)ڻ�MZѕ����gu�dS,0�G�q�4jmS6zm��C�Ʀ)�$�U5ɮ��<&-�2Z�+�m�e��e�nZ��#gf-�2Z1.�m�e��[�M�. ����      �   h   x�3�(M��LN<����|CN##C]s]Cc#+K+Clbf���\F�z�8c�@(c�*c����2G�1GȘ�ʘ!dLQeL2&�2&cTc�L� ��K�      �      x������ � �      U   m   x���� �����������Q*aX0(��|�>vp�DN���)�s���,fѵ�V�����g�������������������{�O�<����*�E�~���t��      V   %   x�3�4�4�2�4�4�2�4�4�2�4�4����� 5w      W   W   x�3�LL����,OM�4202�50�50V04�20�20�&�e�YZ�ZD�c��������p�&��Ydh�`hiedle`�M�+F��� Ol,�      X   L  x���MN�0���S����,i�+8 �i<MFJ<�vJ�m�s�b��Aj��eiާ��hb�	�V�3�~ߛ�����\�݁��k���#UE�K�(�[�R)����NSr�L����n�;Zs�|�O`��6�{+윧RMaQ;6��Gd�Nѳ��Gb��!kJ2������d��F�sU$a�*�}�Ku��A�\
�T5���P� ��d=^�Ő6�͗�%���p	��^�M��ɉmw�sB��,Q��h}0�4EI�_���٬��N�-�[ݹ�&#�&fm��m������Z�,$\�D�P����	�待��۾��ӿ�*�~ R$M�      Y   �  x���[o�8���_��J3�Pc;w���)��K�rӑFp��!N(��OZ:e�V��Am��a+�󭬵w0^�p�5�u�2��i3u�v4N���B��5lU�"\��%F�.iN;ivQ�}0��6�SfȖ�A��t��U�\UhN`�f�F��8(TyR�&��w�������t�_ny]=/ dAb��u�
B��a��O:��E�׼,Vy&����,2�`�����V_�8��=1�ׇ�9�؄D����atO�����^��	!�2����`�7|������S>L4dT	���{>X4��i�9����[��� �IDAL,��/JL)�7@Z�Z�&&&�߁ԫ��$�B�;��i"��Y�3�c�Z���5T�b�'�M��d��NP��C�{�[O��v�m�n����Ac1 t��Q�仭���,�z�m���hV��;f�Dnv�t��U�^�Zۑ��s��cjہ�B����_z�:S���Jk�b�2����}�_֯d�	tW܆��kY۬�7w}#��6��i#�g�DmZ�S���JǝbW�Z���?}"��Rs��[%���#F��lh�W�8f�G *E*$]�
�銩ʲ����\�7i��1uݱ-��
�&�!�"�Z]+AK+�<���$,���E��qhߝ�۟#�CGAl�d�3�y�S�U�Ȩ�R��7��#ϛ	���:A�1��]��ge���s��@�'�4�9����G����sn#hٯv6�m.D��1�e�Hx~P�5��M���_�_z�֠�4��t�{�7Emb'���͝�b뾌�f��ٙ����l�q�L��Y�܂���9��͓*.�mUj�?���g���u As����눍���a�C����~$���'��������      �      x������ � �     