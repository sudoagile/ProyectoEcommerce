PGDMP      /    
            |         
   admin_shop    16.2    16.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    33884 
   admin_shop    DATABASE     l   CREATE DATABASE admin_shop WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE admin_shop;
                postgres    false            �            1259    34813    background_coupons    TABLE       CREATE TABLE public.background_coupons (
    id integer NOT NULL,
    name character varying(255),
    image character varying(255),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 &   DROP TABLE public.background_coupons;
       public         heap    postgres    false            �            1259    34812    background_coupons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.background_coupons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.background_coupons_id_seq;
       public          postgres    false    240            �           0    0    background_coupons_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.background_coupons_id_seq OWNED BY public.background_coupons.id;
          public          postgres    false    239            �            1259    34824    banners    TABLE     �  CREATE TABLE public.banners (
    id integer NOT NULL,
    name character varying(255),
    image character varying(255),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "order" integer,
    active boolean DEFAULT true,
    predeterminado boolean,
    active_date boolean DEFAULT false,
    date_active_start date,
    date_active_end date
);
    DROP TABLE public.banners;
       public         heap    postgres    false            �            1259    34823    banners_id_seq    SEQUENCE     �   CREATE SEQUENCE public.banners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.banners_id_seq;
       public          postgres    false    242            �           0    0    banners_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.banners_id_seq OWNED BY public.banners.id;
          public          postgres    false    241            �            1259    34837    busines    TABLE     ?  CREATE TABLE public.busines (
    id integer NOT NULL,
    name character varying(255),
    telephone character varying(200),
    active boolean DEFAULT true,
    updated_at timestamp without time zone,
    created_at timestamp without time zone,
    address character varying(200),
    email character varying(255)
);
    DROP TABLE public.busines;
       public         heap    postgres    false            �            1259    34836    busines_id_seq    SEQUENCE     �   CREATE SEQUENCE public.busines_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.busines_id_seq;
       public          postgres    false    244            �           0    0    busines_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.busines_id_seq OWNED BY public.busines.id;
          public          postgres    false    243            �            1259    34847    cart_detail_temps    TABLE     K  CREATE TABLE public.cart_detail_temps (
    id integer NOT NULL,
    session_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer NOT NULL,
    discount integer DEFAULT 0 NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    type_cart character varying(255)
);
 %   DROP TABLE public.cart_detail_temps;
       public         heap    postgres    false            �            1259    34846    cart_detail_temps_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cart_detail_temps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.cart_detail_temps_id_seq;
       public          postgres    false    246            �           0    0    cart_detail_temps_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.cart_detail_temps_id_seq OWNED BY public.cart_detail_temps.id;
          public          postgres    false    245                       1259    35018    cart_details    TABLE     �  CREATE TABLE public.cart_details (
    id integer NOT NULL,
    cart_id integer,
    product_id integer,
    quantity integer NOT NULL,
    discount integer DEFAULT 0 NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    price numeric(23,0),
    price_discount numeric(23,0),
    product_code character varying(255),
    product_name character varying(255)
);
     DROP TABLE public.cart_details;
       public         heap    postgres    false                       1259    35017    cart_details_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cart_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.cart_details_id_seq;
       public          postgres    false    277            �           0    0    cart_details_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.cart_details_id_seq OWNED BY public.cart_details.id;
          public          postgres    false    276                       1259    35001    carts    TABLE     y  CREATE TABLE public.carts (
    id integer NOT NULL,
    order_date date,
    arrived_date date,
    status character varying(191) NOT NULL,
    user_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    busines_id integer,
    message character varying(255) DEFAULT ''::character varying,
    client_id integer,
    client_rut character varying(255),
    client_name character varying(255),
    type_cart character varying(255),
    dispatched_id integer,
    document character varying(255),
    invoice_id integer,
    discount numeric(23,2),
    entity character varying(255),
    token_transbank text,
    url_transbank character varying(255),
    confirm_transbank_message_error text,
    confirm_transbank_message text,
    total integer,
    codigo_compra integer,
    code_coupon character varying(50),
    discount_coupon integer,
    courier_price numeric(23,2),
    office_dispached boolean,
    shipping_status character varying(255) DEFAULT 'RECEPCIONADO'::character varying NOT NULL,
    shipping_status_date date,
    pdf_name character varying(255)
);
    DROP TABLE public.carts;
       public         heap    postgres    false                       1259    35000    carts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.carts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.carts_id_seq;
       public          postgres    false    275            �           0    0    carts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.carts_id_seq OWNED BY public.carts.id;
          public          postgres    false    274            �            1259    34855    catalogs    TABLE     P  CREATE TABLE public.catalogs (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    url character varying(255),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    active boolean DEFAULT true
);
    DROP TABLE public.catalogs;
       public         heap    postgres    false            �            1259    34854    catalogs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalogs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.catalogs_id_seq;
       public          postgres    false    248            �           0    0    catalogs_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.catalogs_id_seq OWNED BY public.catalogs.id;
          public          postgres    false    247            �            1259    34002 
   categories    TABLE     a  CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(191) NOT NULL,
    description character varying(191),
    active boolean DEFAULT true NOT NULL,
    image character varying(191),
    created_at timestamp without time zone,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "order" integer
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    34001    categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    220            �           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    219            �            1259    33986    cities    TABLE     %  CREATE TABLE public.cities (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    regions_id integer
);
    DROP TABLE public.cities;
       public         heap    postgres    false            �            1259    33985    cities_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.cities_id_seq;
       public          postgres    false    218            �           0    0    cities_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;
          public          postgres    false    217            �            1259    34867    clients    TABLE     x  CREATE TABLE public.clients (
    id integer NOT NULL,
    name character varying(255),
    email character varying(255),
    company character varying(255),
    active boolean DEFAULT true NOT NULL,
    telephone character varying(255),
    region character varying(255),
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    rut character varying(255),
    comuna character varying(255),
    address character varying(255),
    otros character varying(255),
    password character varying(255),
    remember_token character varying(255)
);
    DROP TABLE public.clients;
       public         heap    postgres    false            �            1259    34866    clients_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.clients_id_seq;
       public          postgres    false    250            �           0    0    clients_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.clients_id_seq OWNED BY public.clients.id;
          public          postgres    false    249            �            1259    34879    columns    TABLE     Q  CREATE TABLE public.columns (
    id integer NOT NULL,
    name character varying(255),
    orientacion character varying(255),
    image character varying(255),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    active boolean DEFAULT true
);
    DROP TABLE public.columns;
       public         heap    postgres    false            �            1259    34878    columns_id_seq    SEQUENCE     �   CREATE SEQUENCE public.columns_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.columns_id_seq;
       public          postgres    false    252            �           0    0    columns_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.columns_id_seq OWNED BY public.columns.id;
          public          postgres    false    251            �            1259    34891    configs    TABLE       CREATE TABLE public.configs (
    discount_coupon_client numeric(23,2),
    id integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.configs;
       public         heap    postgres    false            �            1259    34890    configs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.configs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.configs_id_seq;
       public          postgres    false    254            �           0    0    configs_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.configs_id_seq OWNED BY public.configs.id;
          public          postgres    false    253                        1259    34900    coupons    TABLE     =  CREATE TABLE public.coupons (
    id integer NOT NULL,
    code_coupon character varying(255) NOT NULL,
    discount numeric(10,2) NOT NULL,
    validity date,
    status boolean DEFAULT true NOT NULL,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    used character varying(100),
    master boolean DEFAULT false NOT NULL,
    rut character varying(30),
    name character varying(255),
    lastname character varying(255),
    email character varying(200)
);
    DROP TABLE public.coupons;
       public         heap    postgres    false            �            1259    34899    coupons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.coupons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.coupons_id_seq;
       public          postgres    false    256            �           0    0    coupons_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.coupons_id_seq OWNED BY public.coupons.id;
          public          postgres    false    255                       1259    34922    courier_destinations    TABLE       CREATE TABLE public.courier_destinations (
    id integer NOT NULL,
    code character varying(255),
    name character varying(255),
    price numeric,
    courier_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
 (   DROP TABLE public.courier_destinations;
       public         heap    postgres    false                       1259    34921    courier_destinations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courier_destinations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.courier_destinations_id_seq;
       public          postgres    false    260            �           0    0    courier_destinations_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.courier_destinations_id_seq OWNED BY public.courier_destinations.id;
          public          postgres    false    259                       1259    34913    couriers    TABLE     �   CREATE TABLE public.couriers (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    updated_at timestamp without time zone,
    created_at timestamp without time zone
);
    DROP TABLE public.couriers;
       public         heap    postgres    false                       1259    34912    couriers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.couriers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.couriers_id_seq;
       public          postgres    false    258            �           0    0    couriers_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.couriers_id_seq OWNED BY public.couriers.id;
          public          postgres    false    257                       1259    34936    dispatcheds    TABLE     +  CREATE TABLE public.dispatcheds (
    id integer NOT NULL,
    name character varying(255),
    rut character varying(255),
    telephone character varying(255),
    email character varying(255),
    region character varying(255),
    comuna character varying(255),
    address character varying(255),
    otros character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    courier character varying(255),
    courier_price numeric,
    date_dispached date,
    courier_code character varying(100)
);
    DROP TABLE public.dispatcheds;
       public         heap    postgres    false                       1259    34935    dispatcheds_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dispatcheds_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.dispatcheds_id_seq;
       public          postgres    false    262            �           0    0    dispatcheds_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.dispatcheds_id_seq OWNED BY public.dispatcheds.id;
          public          postgres    false    261            �            1259    34110    entities    TABLE     2  CREATE TABLE public.entities (
    id integer NOT NULL,
    name character varying(255),
    discount character varying(255),
    active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    verificated boolean DEFAULT false NOT NULL
);
    DROP TABLE public.entities;
       public         heap    postgres    false            �            1259    34109    entities_id_seq    SEQUENCE     �   CREATE SEQUENCE public.entities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.entities_id_seq;
       public          postgres    false    226            �           0    0    entities_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.entities_id_seq OWNED BY public.entities.id;
          public          postgres    false    225            �            1259    34121    family    TABLE     V  CREATE TABLE public.family (
    id integer NOT NULL,
    name character varying(250),
    description character varying(250),
    is_active boolean,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    "default" boolean DEFAULT false NOT NULL,
    imagen character varying(255),
    orderby integer
);
    DROP TABLE public.family;
       public         heap    postgres    false            �            1259    34120    family_id_seq    SEQUENCE     �   CREATE SEQUENCE public.family_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.family_id_seq;
       public          postgres    false    228            �           0    0    family_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.family_id_seq OWNED BY public.family.id;
          public          postgres    false    227                       1259    34945    footers    TABLE       CREATE TABLE public.footers (
    id integer NOT NULL,
    name character varying(255),
    image character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    is_active boolean,
    "default" boolean DEFAULT false NOT NULL
);
    DROP TABLE public.footers;
       public         heap    postgres    false                       1259    34944    footers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.footers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.footers_id_seq;
       public          postgres    false    264            �           0    0    footers_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.footers_id_seq OWNED BY public.footers.id;
          public          postgres    false    263            
           1259    34955    invoices    TABLE     	  CREATE TABLE public.invoices (
    id integer NOT NULL,
    name_invoice character varying(255),
    rut_invoice character varying(255),
    giro_invoice character varying(255),
    phone_invoice character varying(255),
    address_invoice character varying(255),
    city_invoice character varying(255),
    email_invoice character varying(255),
    type_invoice character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    region_invoice character varying(255)
);
    DROP TABLE public.invoices;
       public         heap    postgres    false            	           1259    34954    invoices_id_seq    SEQUENCE     �   CREATE SEQUENCE public.invoices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.invoices_id_seq;
       public          postgres    false    266            �           0    0    invoices_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.invoices_id_seq OWNED BY public.invoices.id;
          public          postgres    false    265            �            1259    34131    members    TABLE     4  CREATE TABLE public.members (
    id integer NOT NULL,
    rut character varying(255),
    code character varying(255),
    active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    entity_id integer,
    name character varying(255)
);
    DROP TABLE public.members;
       public         heap    postgres    false            �            1259    34130    members_id_seq    SEQUENCE     �   CREATE SEQUENCE public.members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.members_id_seq;
       public          postgres    false    230            �           0    0    members_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.members_id_seq OWNED BY public.members.id;
          public          postgres    false    229                       1259    34964 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(191) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false                       1259    34963    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    268            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    267                       1259    34970    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(191) NOT NULL,
    token character varying(191) NOT NULL,
    created_at timestamp without time zone
);
 #   DROP TABLE public.password_resets;
       public         heap    postgres    false                       1259    34975    popups    TABLE     Q  CREATE TABLE public.popups (
    id integer NOT NULL,
    name character varying(255),
    content text,
    image character varying(255),
    "default" boolean,
    active boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.popups;
       public         heap    postgres    false                       1259    34974    popups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.popups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.popups_id_seq;
       public          postgres    false    271            �           0    0    popups_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.popups_id_seq OWNED BY public.popups.id;
          public          postgres    false    270            �            1259    34170    product_family    TABLE     o   CREATE TABLE public.product_family (
    id integer NOT NULL,
    product_id integer,
    family_id integer
);
 "   DROP TABLE public.product_family;
       public         heap    postgres    false            �            1259    34169    product_family_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_family_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.product_family_id_seq;
       public          postgres    false    234            �           0    0    product_family_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.product_family_id_seq OWNED BY public.product_family.id;
          public          postgres    false    233            �            1259    34187    product_images    TABLE     <  CREATE TABLE public.product_images (
    id integer NOT NULL,
    image character varying(191) NOT NULL,
    featured boolean DEFAULT false NOT NULL,
    product_id integer,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 "   DROP TABLE public.product_images;
       public         heap    postgres    false            �            1259    34186    product_images_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.product_images_id_seq;
       public          postgres    false    236            �           0    0    product_images_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.product_images_id_seq OWNED BY public.product_images.id;
          public          postgres    false    235                       1259    34987    product_specs    TABLE     �   CREATE TABLE public.product_specs (
    id integer NOT NULL,
    title character varying(255),
    content character varying(255),
    product_id integer,
    updated_at timestamp without time zone,
    created_at timestamp without time zone
);
 !   DROP TABLE public.product_specs;
       public         heap    postgres    false                       1259    34986    product_specs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_specs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.product_specs_id_seq;
       public          postgres    false    273            �           0    0    product_specs_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.product_specs_id_seq OWNED BY public.product_specs.id;
          public          postgres    false    272            �            1259    34146    products    TABLE        CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying(191) NOT NULL,
    description character varying(191) NOT NULL,
    long_description text,
    price numeric(23,2),
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    subcategories_id integer,
    "order" integer,
    specs text,
    specs_imagen character varying(255),
    view_price boolean DEFAULT false NOT NULL,
    stock integer,
    descuento numeric(23,2),
    discount_img character varying(255) DEFAULT ''::character varying NOT NULL,
    new_product boolean,
    date_new_start date,
    date_new_end date,
    date_discount_start date,
    date_discount_end date
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    34145    products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          postgres    false    232            �           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          postgres    false    231            �            1259    33975    regions    TABLE       CREATE TABLE public.regions (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.regions;
       public         heap    postgres    false            �            1259    33974    regions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.regions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.regions_id_seq;
       public          postgres    false    216            �           0    0    regions_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.regions_id_seq OWNED BY public.regions.id;
          public          postgres    false    215            �            1259    34012    subcategories    TABLE     �  CREATE TABLE public.subcategories (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    active boolean DEFAULT true NOT NULL,
    image character varying(255),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    category_id integer,
    "order" integer
);
 !   DROP TABLE public.subcategories;
       public         heap    postgres    false            �            1259    34011    subcategories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subcategories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.subcategories_id_seq;
       public          postgres    false    222            �           0    0    subcategories_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.subcategories_id_seq OWNED BY public.subcategories.id;
          public          postgres    false    221            �            1259    34202    tapices    TABLE       CREATE TABLE public.tapices (
    id integer NOT NULL,
    name character varying(255),
    image character varying(255),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.tapices;
       public         heap    postgres    false            �            1259    34201    tapices_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tapices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tapices_id_seq;
       public          postgres    false    238            �           0    0    tapices_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.tapices_id_seq OWNED BY public.tapices.id;
          public          postgres    false    237            �            1259    34088    users    TABLE     �  CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(191) NOT NULL,
    email character varying(191) NOT NULL,
    password character varying(191) NOT NULL,
    admin boolean DEFAULT false NOT NULL,
    remember_token character varying(100),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    active boolean DEFAULT true NOT NULL,
    company character varying(255),
    telephone character varying(100),
    busines_id integer,
    boss boolean DEFAULT false,
    cities_id integer,
    verificated boolean DEFAULT false NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    34087    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    224            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    223                       1259    35038    videos    TABLE       CREATE TABLE public.videos (
    id integer NOT NULL,
    url character varying(255),
    name character varying(50),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.videos;
       public         heap    postgres    false                       1259    35037    videos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.videos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.videos_id_seq;
       public          postgres    false    279            �           0    0    videos_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.videos_id_seq OWNED BY public.videos.id;
          public          postgres    false    278                       1259    35047    view_products    TABLE     �   CREATE TABLE public.view_products (
    id integer NOT NULL,
    product_id integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 !   DROP TABLE public.view_products;
       public         heap    postgres    false                       1259    35046    view_products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.view_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.view_products_id_seq;
       public          postgres    false    281            �           0    0    view_products_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.view_products_id_seq OWNED BY public.view_products.id;
          public          postgres    false    280                       1259    35055    webpay_transaction    TABLE     D  CREATE TABLE public.webpay_transaction (
    token character varying(100) NOT NULL,
    buy_order character varying(25) NOT NULL,
    cod_compra character varying(25) NOT NULL,
    session_id character varying(50) NOT NULL,
    amount integer NOT NULL,
    status integer,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    return_success_at timestamp without time zone,
    return_failed_at timestamp without time zone,
    finished_at timestamp without time zone,
    cardnumber character varying(255) DEFAULT '  '::character varying NOT NULL
);
 &   DROP TABLE public.webpay_transaction;
       public         heap    postgres    false            D           2604    34816    background_coupons id    DEFAULT     ~   ALTER TABLE ONLY public.background_coupons ALTER COLUMN id SET DEFAULT nextval('public.background_coupons_id_seq'::regclass);
 D   ALTER TABLE public.background_coupons ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240            G           2604    34827 
   banners id    DEFAULT     h   ALTER TABLE ONLY public.banners ALTER COLUMN id SET DEFAULT nextval('public.banners_id_seq'::regclass);
 9   ALTER TABLE public.banners ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241    242            L           2604    34840 
   busines id    DEFAULT     h   ALTER TABLE ONLY public.busines ALTER COLUMN id SET DEFAULT nextval('public.busines_id_seq'::regclass);
 9   ALTER TABLE public.busines ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243    244            N           2604    34850    cart_detail_temps id    DEFAULT     |   ALTER TABLE ONLY public.cart_detail_temps ALTER COLUMN id SET DEFAULT nextval('public.cart_detail_temps_id_seq'::regclass);
 C   ALTER TABLE public.cart_detail_temps ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245    246            t           2604    35021    cart_details id    DEFAULT     r   ALTER TABLE ONLY public.cart_details ALTER COLUMN id SET DEFAULT nextval('public.cart_details_id_seq'::regclass);
 >   ALTER TABLE public.cart_details ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    277    276    277            p           2604    35004    carts id    DEFAULT     d   ALTER TABLE ONLY public.carts ALTER COLUMN id SET DEFAULT nextval('public.carts_id_seq'::regclass);
 7   ALTER TABLE public.carts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    274    275    275            P           2604    34858    catalogs id    DEFAULT     j   ALTER TABLE ONLY public.catalogs ALTER COLUMN id SET DEFAULT nextval('public.catalogs_id_seq'::regclass);
 :   ALTER TABLE public.catalogs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    248    248            !           2604    34005    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220                       2604    33989 	   cities id    DEFAULT     f   ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);
 8   ALTER TABLE public.cities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            T           2604    34870 
   clients id    DEFAULT     h   ALTER TABLE ONLY public.clients ALTER COLUMN id SET DEFAULT nextval('public.clients_id_seq'::regclass);
 9   ALTER TABLE public.clients ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249    250            X           2604    34882 
   columns id    DEFAULT     h   ALTER TABLE ONLY public.columns ALTER COLUMN id SET DEFAULT nextval('public.columns_id_seq'::regclass);
 9   ALTER TABLE public.columns ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    252    252            \           2604    34894 
   configs id    DEFAULT     h   ALTER TABLE ONLY public.configs ALTER COLUMN id SET DEFAULT nextval('public.configs_id_seq'::regclass);
 9   ALTER TABLE public.configs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    254    254            _           2604    34903 
   coupons id    DEFAULT     h   ALTER TABLE ONLY public.coupons ALTER COLUMN id SET DEFAULT nextval('public.coupons_id_seq'::regclass);
 9   ALTER TABLE public.coupons ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    255    256    256            e           2604    34925    courier_destinations id    DEFAULT     �   ALTER TABLE ONLY public.courier_destinations ALTER COLUMN id SET DEFAULT nextval('public.courier_destinations_id_seq'::regclass);
 F   ALTER TABLE public.courier_destinations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    260    259    260            d           2604    34916    couriers id    DEFAULT     j   ALTER TABLE ONLY public.couriers ALTER COLUMN id SET DEFAULT nextval('public.couriers_id_seq'::regclass);
 :   ALTER TABLE public.couriers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    258    258            f           2604    34939    dispatcheds id    DEFAULT     p   ALTER TABLE ONLY public.dispatcheds ALTER COLUMN id SET DEFAULT nextval('public.dispatcheds_id_seq'::regclass);
 =   ALTER TABLE public.dispatcheds ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    261    262            /           2604    34113    entities id    DEFAULT     j   ALTER TABLE ONLY public.entities ALTER COLUMN id SET DEFAULT nextval('public.entities_id_seq'::regclass);
 :   ALTER TABLE public.entities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            2           2604    34124 	   family id    DEFAULT     f   ALTER TABLE ONLY public.family ALTER COLUMN id SET DEFAULT nextval('public.family_id_seq'::regclass);
 8   ALTER TABLE public.family ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            g           2604    34948 
   footers id    DEFAULT     h   ALTER TABLE ONLY public.footers ALTER COLUMN id SET DEFAULT nextval('public.footers_id_seq'::regclass);
 9   ALTER TABLE public.footers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    263    264            i           2604    34958    invoices id    DEFAULT     j   ALTER TABLE ONLY public.invoices ALTER COLUMN id SET DEFAULT nextval('public.invoices_id_seq'::regclass);
 :   ALTER TABLE public.invoices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    265    266    266            4           2604    34134 
   members id    DEFAULT     h   ALTER TABLE ONLY public.members ALTER COLUMN id SET DEFAULT nextval('public.members_id_seq'::regclass);
 9   ALTER TABLE public.members ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230            j           2604    34967    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    268    267    268            k           2604    34978 	   popups id    DEFAULT     f   ALTER TABLE ONLY public.popups ALTER COLUMN id SET DEFAULT nextval('public.popups_id_seq'::regclass);
 8   ALTER TABLE public.popups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    271    270    271            <           2604    34173    product_family id    DEFAULT     v   ALTER TABLE ONLY public.product_family ALTER COLUMN id SET DEFAULT nextval('public.product_family_id_seq'::regclass);
 @   ALTER TABLE public.product_family ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234            =           2604    34190    product_images id    DEFAULT     v   ALTER TABLE ONLY public.product_images ALTER COLUMN id SET DEFAULT nextval('public.product_images_id_seq'::regclass);
 @   ALTER TABLE public.product_images ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            o           2604    34990    product_specs id    DEFAULT     t   ALTER TABLE ONLY public.product_specs ALTER COLUMN id SET DEFAULT nextval('public.product_specs_id_seq'::regclass);
 ?   ALTER TABLE public.product_specs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    273    272    273            6           2604    34149    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232                       2604    33978 
   regions id    DEFAULT     h   ALTER TABLE ONLY public.regions ALTER COLUMN id SET DEFAULT nextval('public.regions_id_seq'::regclass);
 9   ALTER TABLE public.regions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            $           2604    34015    subcategories id    DEFAULT     t   ALTER TABLE ONLY public.subcategories ALTER COLUMN id SET DEFAULT nextval('public.subcategories_id_seq'::regclass);
 ?   ALTER TABLE public.subcategories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            A           2604    34205 
   tapices id    DEFAULT     h   ALTER TABLE ONLY public.tapices ALTER COLUMN id SET DEFAULT nextval('public.tapices_id_seq'::regclass);
 9   ALTER TABLE public.tapices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237    238            (           2604    34091    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            v           2604    35041 	   videos id    DEFAULT     f   ALTER TABLE ONLY public.videos ALTER COLUMN id SET DEFAULT nextval('public.videos_id_seq'::regclass);
 8   ALTER TABLE public.videos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    279    278    279            y           2604    35050    view_products id    DEFAULT     t   ALTER TABLE ONLY public.view_products ALTER COLUMN id SET DEFAULT nextval('public.view_products_id_seq'::regclass);
 ?   ALTER TABLE public.view_products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    280    281    281            {          0    34813    background_coupons 
   TABLE DATA           U   COPY public.background_coupons (id, name, image, created_at, updated_at) FROM stdin;
    public          postgres    false    240   4A      }          0    34824    banners 
   TABLE DATA           �   COPY public.banners (id, name, image, created_at, updated_at, "order", active, predeterminado, active_date, date_active_start, date_active_end) FROM stdin;
    public          postgres    false    242   QA                0    34837    busines 
   TABLE DATA           f   COPY public.busines (id, name, telephone, active, updated_at, created_at, address, email) FROM stdin;
    public          postgres    false    244   nA      �          0    34847    cart_detail_temps 
   TABLE DATA           ~   COPY public.cart_detail_temps (id, session_id, product_id, quantity, discount, created_at, updated_at, type_cart) FROM stdin;
    public          postgres    false    246   �A      �          0    35018    cart_details 
   TABLE DATA           �   COPY public.cart_details (id, cart_id, product_id, quantity, discount, created_at, updated_at, price, price_discount, product_code, product_name) FROM stdin;
    public          postgres    false    277   �A      �          0    35001    carts 
   TABLE DATA           �  COPY public.carts (id, order_date, arrived_date, status, user_id, created_at, updated_at, busines_id, message, client_id, client_rut, client_name, type_cart, dispatched_id, document, invoice_id, discount, entity, token_transbank, url_transbank, confirm_transbank_message_error, confirm_transbank_message, total, codigo_compra, code_coupon, discount_coupon, courier_price, office_dispached, shipping_status, shipping_status_date, pdf_name) FROM stdin;
    public          postgres    false    275   �A      �          0    34855    catalogs 
   TABLE DATA           ^   COPY public.catalogs (id, name, description, url, created_at, updated_at, active) FROM stdin;
    public          postgres    false    248   �A      g          0    34002 
   categories 
   TABLE DATA           k   COPY public.categories (id, name, description, active, image, created_at, updated_at, "order") FROM stdin;
    public          postgres    false    220   �A      e          0    33986    cities 
   TABLE DATA           [   COPY public.cities (id, name, description, created_at, updated_at, regions_id) FROM stdin;
    public          postgres    false    218   B      �          0    34867    clients 
   TABLE DATA           �   COPY public.clients (id, name, email, company, active, telephone, region, updated_at, created_at, rut, comuna, address, otros, password, remember_token) FROM stdin;
    public          postgres    false    250   9B      �          0    34879    columns 
   TABLE DATA           _   COPY public.columns (id, name, orientacion, image, created_at, updated_at, active) FROM stdin;
    public          postgres    false    252   VB      �          0    34891    configs 
   TABLE DATA           U   COPY public.configs (discount_coupon_client, id, created_at, updated_at) FROM stdin;
    public          postgres    false    254   sB      �          0    34900    coupons 
   TABLE DATA           �   COPY public.coupons (id, code_coupon, discount, validity, status, updated_at, created_at, used, master, rut, name, lastname, email) FROM stdin;
    public          postgres    false    256   �B      �          0    34922    courier_destinations 
   TABLE DATA           i   COPY public.courier_destinations (id, code, name, price, courier_id, created_at, updated_at) FROM stdin;
    public          postgres    false    260   �B      �          0    34913    couriers 
   TABLE DATA           J   COPY public.couriers (id, name, code, updated_at, created_at) FROM stdin;
    public          postgres    false    258   �B      �          0    34936    dispatcheds 
   TABLE DATA           �   COPY public.dispatcheds (id, name, rut, telephone, email, region, comuna, address, otros, created_at, updated_at, courier, courier_price, date_dispached, courier_code) FROM stdin;
    public          postgres    false    262   �B      m          0    34110    entities 
   TABLE DATA           c   COPY public.entities (id, name, discount, active, created_at, updated_at, verificated) FROM stdin;
    public          postgres    false    226   C      o          0    34121    family 
   TABLE DATA           v   COPY public.family (id, name, description, is_active, created_at, updated_at, "default", imagen, orderby) FROM stdin;
    public          postgres    false    228   !C      �          0    34945    footers 
   TABLE DATA           `   COPY public.footers (id, name, image, created_at, updated_at, is_active, "default") FROM stdin;
    public          postgres    false    264   >C      �          0    34955    invoices 
   TABLE DATA           �   COPY public.invoices (id, name_invoice, rut_invoice, giro_invoice, phone_invoice, address_invoice, city_invoice, email_invoice, type_invoice, created_at, updated_at, region_invoice) FROM stdin;
    public          postgres    false    266   [C      q          0    34131    members 
   TABLE DATA           a   COPY public.members (id, rut, code, active, created_at, updated_at, entity_id, name) FROM stdin;
    public          postgres    false    230   xC      �          0    34964 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    268   �C      �          0    34970    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    269   �C      �          0    34975    popups 
   TABLE DATA           e   COPY public.popups (id, name, content, image, "default", active, created_at, updated_at) FROM stdin;
    public          postgres    false    271   �C      u          0    34170    product_family 
   TABLE DATA           C   COPY public.product_family (id, product_id, family_id) FROM stdin;
    public          postgres    false    234   �C      w          0    34187    product_images 
   TABLE DATA           a   COPY public.product_images (id, image, featured, product_id, created_at, updated_at) FROM stdin;
    public          postgres    false    236   	D      �          0    34987    product_specs 
   TABLE DATA           _   COPY public.product_specs (id, title, content, product_id, updated_at, created_at) FROM stdin;
    public          postgres    false    273   &D      s          0    34146    products 
   TABLE DATA           $  COPY public.products (id, name, description, long_description, price, is_active, created_at, updated_at, subcategories_id, "order", specs, specs_imagen, view_price, stock, descuento, discount_img, new_product, date_new_start, date_new_end, date_discount_start, date_discount_end) FROM stdin;
    public          postgres    false    232   CD      c          0    33975    regions 
   TABLE DATA           P   COPY public.regions (id, name, description, created_at, updated_at) FROM stdin;
    public          postgres    false    216   `D      i          0    34012    subcategories 
   TABLE DATA           {   COPY public.subcategories (id, name, description, active, image, created_at, updated_at, category_id, "order") FROM stdin;
    public          postgres    false    222   }D      y          0    34202    tapices 
   TABLE DATA           J   COPY public.tapices (id, name, image, created_at, updated_at) FROM stdin;
    public          postgres    false    238   �D      k          0    34088    users 
   TABLE DATA           �   COPY public.users (id, name, email, password, admin, remember_token, created_at, updated_at, active, company, telephone, busines_id, boss, cities_id, verificated) FROM stdin;
    public          postgres    false    224   �D      �          0    35038    videos 
   TABLE DATA           G   COPY public.videos (id, url, name, created_at, updated_at) FROM stdin;
    public          postgres    false    279   �D      �          0    35047    view_products 
   TABLE DATA           O   COPY public.view_products (id, product_id, created_at, updated_at) FROM stdin;
    public          postgres    false    281   �D      �          0    35055    webpay_transaction 
   TABLE DATA           �   COPY public.webpay_transaction (token, buy_order, cod_compra, session_id, amount, status, created_at, return_success_at, return_failed_at, finished_at, cardnumber) FROM stdin;
    public          postgres    false    282   E      �           0    0    background_coupons_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.background_coupons_id_seq', 1, false);
          public          postgres    false    239            �           0    0    banners_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.banners_id_seq', 1, false);
          public          postgres    false    241            �           0    0    busines_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.busines_id_seq', 1, false);
          public          postgres    false    243            �           0    0    cart_detail_temps_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.cart_detail_temps_id_seq', 1, false);
          public          postgres    false    245            �           0    0    cart_details_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.cart_details_id_seq', 1, false);
          public          postgres    false    276            �           0    0    carts_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.carts_id_seq', 1, false);
          public          postgres    false    274            �           0    0    catalogs_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.catalogs_id_seq', 1, false);
          public          postgres    false    247            �           0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 1, false);
          public          postgres    false    219            �           0    0    cities_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.cities_id_seq', 1, false);
          public          postgres    false    217            �           0    0    clients_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.clients_id_seq', 1, false);
          public          postgres    false    249            �           0    0    columns_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.columns_id_seq', 1, false);
          public          postgres    false    251            �           0    0    configs_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.configs_id_seq', 1, false);
          public          postgres    false    253            �           0    0    coupons_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.coupons_id_seq', 1, false);
          public          postgres    false    255            �           0    0    courier_destinations_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.courier_destinations_id_seq', 1, false);
          public          postgres    false    259            �           0    0    couriers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.couriers_id_seq', 1, false);
          public          postgres    false    257            �           0    0    dispatcheds_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.dispatcheds_id_seq', 1, false);
          public          postgres    false    261            �           0    0    entities_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.entities_id_seq', 1, false);
          public          postgres    false    225            �           0    0    family_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.family_id_seq', 1, false);
          public          postgres    false    227            �           0    0    footers_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.footers_id_seq', 1, false);
          public          postgres    false    263            �           0    0    invoices_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.invoices_id_seq', 1, false);
          public          postgres    false    265            �           0    0    members_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.members_id_seq', 1, false);
          public          postgres    false    229            �           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 1, false);
          public          postgres    false    267            �           0    0    popups_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.popups_id_seq', 1, false);
          public          postgres    false    270            �           0    0    product_family_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.product_family_id_seq', 1, false);
          public          postgres    false    233            �           0    0    product_images_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.product_images_id_seq', 1, false);
          public          postgres    false    235            �           0    0    product_specs_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.product_specs_id_seq', 1, false);
          public          postgres    false    272            �           0    0    products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.products_id_seq', 1, false);
          public          postgres    false    231            �           0    0    regions_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.regions_id_seq', 1, false);
          public          postgres    false    215            �           0    0    subcategories_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.subcategories_id_seq', 1, false);
          public          postgres    false    221            �           0    0    tapices_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tapices_id_seq', 1, false);
          public          postgres    false    237            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    223            �           0    0    videos_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.videos_id_seq', 1, false);
          public          postgres    false    278            �           0    0    view_products_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.view_products_id_seq', 1, false);
          public          postgres    false    280            �           2606    34822 *   background_coupons background_coupons_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.background_coupons
    ADD CONSTRAINT background_coupons_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.background_coupons DROP CONSTRAINT background_coupons_pkey;
       public            postgres    false    240            �           2606    34835    banners banners_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.banners
    ADD CONSTRAINT banners_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.banners DROP CONSTRAINT banners_pkey;
       public            postgres    false    242            �           2606    34845    busines busines_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.busines
    ADD CONSTRAINT busines_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.busines DROP CONSTRAINT busines_pkey;
       public            postgres    false    244            �           2606    34853 (   cart_detail_temps cart_detail_temps_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.cart_detail_temps
    ADD CONSTRAINT cart_detail_temps_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.cart_detail_temps DROP CONSTRAINT cart_detail_temps_pkey;
       public            postgres    false    246            �           2606    35026    cart_details cart_details_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.cart_details
    ADD CONSTRAINT cart_details_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.cart_details DROP CONSTRAINT cart_details_pkey;
       public            postgres    false    277            �           2606    35011    carts carts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.carts DROP CONSTRAINT carts_pkey;
       public            postgres    false    275            �           2606    34865    catalogs catalogs_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.catalogs
    ADD CONSTRAINT catalogs_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.catalogs DROP CONSTRAINT catalogs_pkey;
       public            postgres    false    248            �           2606    34010    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    220            �           2606    33995    cities cities_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_pkey;
       public            postgres    false    218            �           2606    34877    clients clients_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.clients DROP CONSTRAINT clients_pkey;
       public            postgres    false    250            �           2606    34889    columns columns_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.columns
    ADD CONSTRAINT columns_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.columns DROP CONSTRAINT columns_pkey;
       public            postgres    false    252            �           2606    34898    configs configs_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.configs
    ADD CONSTRAINT configs_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.configs DROP CONSTRAINT configs_pkey;
       public            postgres    false    254            �           2606    34911    coupons coupons_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.coupons
    ADD CONSTRAINT coupons_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.coupons DROP CONSTRAINT coupons_pkey;
       public            postgres    false    256            �           2606    34929 .   courier_destinations courier_destinations_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.courier_destinations
    ADD CONSTRAINT courier_destinations_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.courier_destinations DROP CONSTRAINT courier_destinations_pkey;
       public            postgres    false    260            �           2606    34920    couriers couriers_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.couriers
    ADD CONSTRAINT couriers_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.couriers DROP CONSTRAINT couriers_pkey;
       public            postgres    false    258            �           2606    34943    dispatcheds dispatcheds_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.dispatcheds
    ADD CONSTRAINT dispatcheds_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.dispatcheds DROP CONSTRAINT dispatcheds_pkey;
       public            postgres    false    262            �           2606    34119    entities entities_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.entities
    ADD CONSTRAINT entities_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.entities DROP CONSTRAINT entities_pkey;
       public            postgres    false    226            �           2606    34129    family family_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.family
    ADD CONSTRAINT family_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.family DROP CONSTRAINT family_pkey;
       public            postgres    false    228            �           2606    34953    footers footers_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.footers
    ADD CONSTRAINT footers_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.footers DROP CONSTRAINT footers_pkey;
       public            postgres    false    264            �           2606    34962    invoices invoices_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT invoices_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.invoices DROP CONSTRAINT invoices_pkey;
       public            postgres    false    266            �           2606    34139    members members_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.members
    ADD CONSTRAINT members_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.members DROP CONSTRAINT members_pkey;
       public            postgres    false    230            �           2606    34969    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    268            �           2606    34985    popups popups_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.popups
    ADD CONSTRAINT popups_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.popups DROP CONSTRAINT popups_pkey;
       public            postgres    false    271            �           2606    34175 "   product_family product_family_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.product_family
    ADD CONSTRAINT product_family_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.product_family DROP CONSTRAINT product_family_pkey;
       public            postgres    false    234            �           2606    34195 "   product_images product_images_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT product_images_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.product_images DROP CONSTRAINT product_images_pkey;
       public            postgres    false    236            �           2606    34994     product_specs product_specs_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.product_specs
    ADD CONSTRAINT product_specs_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.product_specs DROP CONSTRAINT product_specs_pkey;
       public            postgres    false    273            �           2606    34158    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    232                       2606    33984    regions regions_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_pkey;
       public            postgres    false    216            �           2606    34022     subcategories subcategories_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.subcategories
    ADD CONSTRAINT subcategories_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.subcategories DROP CONSTRAINT subcategories_pkey;
       public            postgres    false    222            �           2606    34211    tapices tapices_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.tapices
    ADD CONSTRAINT tapices_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tapices DROP CONSTRAINT tapices_pkey;
       public            postgres    false    238            �           2606    34103    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    224            �           2606    34101    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    224            �           2606    35045    videos videos_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.videos
    ADD CONSTRAINT videos_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.videos DROP CONSTRAINT videos_pkey;
       public            postgres    false    279            �           2606    35054     view_products view_products_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.view_products
    ADD CONSTRAINT view_products_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.view_products DROP CONSTRAINT view_products_pkey;
       public            postgres    false    281            �           2606    35061 *   webpay_transaction webpay_transaction_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.webpay_transaction
    ADD CONSTRAINT webpay_transaction_pkey PRIMARY KEY (token);
 T   ALTER TABLE ONLY public.webpay_transaction DROP CONSTRAINT webpay_transaction_pkey;
       public            postgres    false    282            �           1259    34973    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    269            �           2606    35027 &   cart_details cart_details_cart_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_details
    ADD CONSTRAINT cart_details_cart_id_fkey FOREIGN KEY (cart_id) REFERENCES public.carts(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.cart_details DROP CONSTRAINT cart_details_cart_id_fkey;
       public          postgres    false    275    3772    277            �           2606    35032 )   cart_details cart_details_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_details
    ADD CONSTRAINT cart_details_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id);
 S   ALTER TABLE ONLY public.cart_details DROP CONSTRAINT cart_details_product_id_fkey;
       public          postgres    false    3729    232    277            �           2606    35012    carts carts_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.carts DROP CONSTRAINT carts_user_id_fkey;
       public          postgres    false    3721    224    275            �           2606    33996    cities cities_regions_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_regions_id_fkey FOREIGN KEY (regions_id) REFERENCES public.regions(id);
 G   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_regions_id_fkey;
       public          postgres    false    216    218    3711            �           2606    34930 9   courier_destinations courier_destinations_courier_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.courier_destinations
    ADD CONSTRAINT courier_destinations_courier_id_fkey FOREIGN KEY (courier_id) REFERENCES public.couriers(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.courier_destinations DROP CONSTRAINT courier_destinations_courier_id_fkey;
       public          postgres    false    258    260    3755            �           2606    34104    users fk_id_city_user    FK CONSTRAINT     w   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_id_city_user FOREIGN KEY (cities_id) REFERENCES public.cities(id);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT fk_id_city_user;
       public          postgres    false    3713    224    218            �           2606    34140    members members_entity_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.members
    ADD CONSTRAINT members_entity_id_fkey FOREIGN KEY (entity_id) REFERENCES public.entities(id) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.members DROP CONSTRAINT members_entity_id_fkey;
       public          postgres    false    226    3723    230            �           2606    34181 ,   product_family product_family_family_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_family
    ADD CONSTRAINT product_family_family_id_fkey FOREIGN KEY (family_id) REFERENCES public.family(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.product_family DROP CONSTRAINT product_family_family_id_fkey;
       public          postgres    false    3725    228    234            �           2606    34176 -   product_family product_family_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_family
    ADD CONSTRAINT product_family_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.product_family DROP CONSTRAINT product_family_product_id_fkey;
       public          postgres    false    234    232    3729            �           2606    34196 -   product_images product_images_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT product_images_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.product_images DROP CONSTRAINT product_images_product_id_fkey;
       public          postgres    false    3729    236    232            �           2606    34995 +   product_specs product_specs_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_specs
    ADD CONSTRAINT product_specs_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id);
 U   ALTER TABLE ONLY public.product_specs DROP CONSTRAINT product_specs_product_id_fkey;
       public          postgres    false    3729    273    232            �           2606    34159 '   products products_subcategories_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_subcategories_id_fkey FOREIGN KEY (subcategories_id) REFERENCES public.subcategories(id);
 Q   ALTER TABLE ONLY public.products DROP CONSTRAINT products_subcategories_id_fkey;
       public          postgres    false    3717    222    232            �           2606    34164 (   products products_subcategory_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_subcategory_id_foreign FOREIGN KEY (subcategories_id) REFERENCES public.subcategories(id);
 R   ALTER TABLE ONLY public.products DROP CONSTRAINT products_subcategory_id_foreign;
       public          postgres    false    3717    222    232            �           2606    34023 ,   subcategories subcategories_category_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.subcategories
    ADD CONSTRAINT subcategories_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id);
 V   ALTER TABLE ONLY public.subcategories DROP CONSTRAINT subcategories_category_id_fkey;
       public          postgres    false    3715    222    220            {      x������ � �      }      x������ � �            x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      g      x������ � �      e      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      m      x������ � �      o      x������ � �      �      x������ � �      �      x������ � �      q      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      u      x������ � �      w      x������ � �      �      x������ � �      s      x������ � �      c      x������ � �      i      x������ � �      y      x������ � �      k      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     