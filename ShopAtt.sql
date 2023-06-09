PGDMP     )                    {            ShopAtt    15.1    15.1 E    K           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            L           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            M           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            N           1262    49249    ShopAtt    DATABASE     }   CREATE DATABASE "ShopAtt" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "ShopAtt";
                postgres    false            �            1259    49251    category    TABLE     [   CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    49250    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    215            O           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    214            �            1259    49258    image    TABLE     ~   CREATE TABLE public.image (
    id integer NOT NULL,
    file_name character varying(255),
    product_id integer NOT NULL
);
    DROP TABLE public.image;
       public         heap    postgres    false            �            1259    49342 	   image_cat    TABLE     �   CREATE TABLE public.image_cat (
    id integer NOT NULL,
    file_name character varying(255),
    category_id integer NOT NULL
);
    DROP TABLE public.image_cat;
       public         heap    postgres    false            �            1259    49341    image_cat_id_seq    SEQUENCE     �   CREATE SEQUENCE public.image_cat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.image_cat_id_seq;
       public          postgres    false    229            P           0    0    image_cat_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.image_cat_id_seq OWNED BY public.image_cat.id;
          public          postgres    false    228            �            1259    49257    image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.image_id_seq;
       public          postgres    false    217            Q           0    0    image_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.image_id_seq OWNED BY public.image.id;
          public          postgres    false    216            �            1259    49265    orders    TABLE       CREATE TABLE public.orders (
    id integer NOT NULL,
    count integer NOT NULL,
    date_time timestamp(6) without time zone,
    number character varying(255),
    price real NOT NULL,
    person_id integer NOT NULL,
    product_id integer NOT NULL,
    status_id integer NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    49264    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    219            R           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    218            �            1259    49272    person    TABLE     �   CREATE TABLE public.person (
    id integer NOT NULL,
    login character varying(100),
    password character varying(255),
    role character varying(255)
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    49271    person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.person_id_seq;
       public          postgres    false    221            S           0    0    person_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;
          public          postgres    false    220            �            1259    49281    product    TABLE     �  CREATE TABLE public.product (
    id integer NOT NULL,
    date_time timestamp(6) without time zone,
    description text NOT NULL,
    price real NOT NULL,
    seller character varying(255) NOT NULL,
    title text NOT NULL,
    warehouse character varying(255) NOT NULL,
    category_id integer NOT NULL,
    CONSTRAINT product_price_check CHECK ((price >= (1)::double precision))
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    49291    product_cart    TABLE     m   CREATE TABLE public.product_cart (
    id integer NOT NULL,
    person_id integer,
    product_id integer
);
     DROP TABLE public.product_cart;
       public         heap    postgres    false            �            1259    49290    product_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_cart_id_seq;
       public          postgres    false    225            T           0    0    product_cart_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_cart_id_seq OWNED BY public.product_cart.id;
          public          postgres    false    224            �            1259    49280    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    223            U           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    222            �            1259    49298    status    TABLE     Y   CREATE TABLE public.status (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.status;
       public         heap    postgres    false            �            1259    49297    status_id_seq    SEQUENCE     �   CREATE SEQUENCE public.status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.status_id_seq;
       public          postgres    false    227            V           0    0    status_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.status_id_seq OWNED BY public.status.id;
          public          postgres    false    226            �           2604    49254    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    49261    image id    DEFAULT     d   ALTER TABLE ONLY public.image ALTER COLUMN id SET DEFAULT nextval('public.image_id_seq'::regclass);
 7   ALTER TABLE public.image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    49345    image_cat id    DEFAULT     l   ALTER TABLE ONLY public.image_cat ALTER COLUMN id SET DEFAULT nextval('public.image_cat_id_seq'::regclass);
 ;   ALTER TABLE public.image_cat ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    49268 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    49275 	   person id    DEFAULT     f   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);
 8   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    49284 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    49294    product_cart id    DEFAULT     r   ALTER TABLE ONLY public.product_cart ALTER COLUMN id SET DEFAULT nextval('public.product_cart_id_seq'::regclass);
 >   ALTER TABLE public.product_cart ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    49301 	   status id    DEFAULT     f   ALTER TABLE ONLY public.status ALTER COLUMN id SET DEFAULT nextval('public.status_id_seq'::regclass);
 8   ALTER TABLE public.status ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            :          0    49251    category 
   TABLE DATA                 public          postgres    false    215   �J       <          0    49258    image 
   TABLE DATA                 public          postgres    false    217   XK       H          0    49342 	   image_cat 
   TABLE DATA                 public          postgres    false    229   �P       >          0    49265    orders 
   TABLE DATA                 public          postgres    false    219   �Q       @          0    49272    person 
   TABLE DATA                 public          postgres    false    221   �R       B          0    49281    product 
   TABLE DATA                 public          postgres    false    223   �S       D          0    49291    product_cart 
   TABLE DATA                 public          postgres    false    225   �f       F          0    49298    status 
   TABLE DATA                 public          postgres    false    227   `g       W           0    0    category_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.category_id_seq', 10, true);
          public          postgres    false    214            X           0    0    image_cat_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.image_cat_id_seq', 12, true);
          public          postgres    false    228            Y           0    0    image_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.image_id_seq', 82, true);
          public          postgres    false    216            Z           0    0    orders_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.orders_id_seq', 9, true);
          public          postgres    false    218            [           0    0    person_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.person_id_seq', 3, true);
          public          postgres    false    220            \           0    0    product_cart_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.product_cart_id_seq', 15, true);
          public          postgres    false    224            ]           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 27, true);
          public          postgres    false    222            ^           0    0    status_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.status_id_seq', 1, false);
          public          postgres    false    226            �           2606    49256    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    215            �           2606    49347    image_cat image_cat_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.image_cat
    ADD CONSTRAINT image_cat_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.image_cat DROP CONSTRAINT image_cat_pkey;
       public            postgres    false    229            �           2606    49263    image image_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
       public            postgres    false    217            �           2606    49270    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    219            �           2606    49279    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    221            �           2606    49296    product_cart product_cart_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT product_cart_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT product_cart_pkey;
       public            postgres    false    225            �           2606    49289    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    223            �           2606    49303    status status_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.status
    ADD CONSTRAINT status_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.status DROP CONSTRAINT status_pkey;
       public            postgres    false    227            �           2606    49305 $   product uk_qka6vxqdy1dprtqnx9trdd47c 
   CONSTRAINT     `   ALTER TABLE ONLY public.product
    ADD CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c UNIQUE (title);
 N   ALTER TABLE ONLY public.product DROP CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c;
       public            postgres    false    223            �           2606    49311 "   orders fk1b0m4muwx1t377w9if3w6wwqn    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn FOREIGN KEY (person_id) REFERENCES public.person(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn;
       public          postgres    false    219    3224    221            �           2606    49326 #   product fk1mtsbur82frn64de7balymq9s    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk1mtsbur82frn64de7balymq9s FOREIGN KEY (category_id) REFERENCES public.category(id);
 M   ALTER TABLE ONLY public.product DROP CONSTRAINT fk1mtsbur82frn64de7balymq9s;
       public          postgres    false    215    3218    223            �           2606    49348 %   image_cat fk6ur97t3bejnnynvn5phm4t8ie    FK CONSTRAINT     �   ALTER TABLE ONLY public.image_cat
    ADD CONSTRAINT fk6ur97t3bejnnynvn5phm4t8ie FOREIGN KEY (category_id) REFERENCES public.category(id);
 O   ALTER TABLE ONLY public.image_cat DROP CONSTRAINT fk6ur97t3bejnnynvn5phm4t8ie;
       public          postgres    false    229    215    3218            �           2606    49316 "   orders fk787ibr3guwp6xobrpbofnv7le    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk787ibr3guwp6xobrpbofnv7le FOREIGN KEY (product_id) REFERENCES public.product(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk787ibr3guwp6xobrpbofnv7le;
       public          postgres    false    219    223    3226            �           2606    49306 !   image fkgpextbyee3uk9u6o2381m7ft1    FK CONSTRAINT     �   ALTER TABLE ONLY public.image
    ADD CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1 FOREIGN KEY (product_id) REFERENCES public.product(id);
 K   ALTER TABLE ONLY public.image DROP CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1;
       public          postgres    false    217    223    3226            �           2606    49336 (   product_cart fkhpnrxdy3jhujameyod08ilvvw    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw FOREIGN KEY (product_id) REFERENCES public.product(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw;
       public          postgres    false    3226    225    223            �           2606    49321 "   orders fknoettwqr56yaai4i8nwxg4huo    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fknoettwqr56yaai4i8nwxg4huo FOREIGN KEY (status_id) REFERENCES public.status(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fknoettwqr56yaai4i8nwxg4huo;
       public          postgres    false    227    219    3232            �           2606    49331 (   product_cart fksgnkc1ko2i1o9yr2p63ysq3rn    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn FOREIGN KEY (person_id) REFERENCES public.person(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn;
       public          postgres    false    3224    221    225            :   �   x���v
Q���W((M��L�KN,IM�/�T��L�Q�K�M�Ts�	uV�0�QP�0�b���v]�p�_�[/l��{�5��<I3�dެ�.6\���bㅽ�0��J�
� )����v���A��8:z�� 2����-�^l��¾;�0�� d�|`�� �z߅m����� 0��7      <   '  x����n�7�{?�v�qA�3C�J��@� �����b(�#��?�ki7��m~P�in����o�xz���/�o���c??~m�����x8��/�ӟ��|8}�������q�>���Ͽ��pz%���"��=�8[��T���J*���Ƿ�/N��͋wG�iC��i}�@�x���X��s�E�(?A�(4+�6���=��3pC�&����ԅz���4���'k9T?rhhz\JM� MOP;�����D��Üsp��$�eh����G�w{krO�����ΉF�>��:�R@�4���j�Y�t�
���_�7$�������35��>�<�UJ!6�8��*�J�Y�O�3�j=�K�AeJc� 	�䌣u"^)�T�Z^�>_Mʇ��%K�txֆ�֊���s�y���c��c�h��\8�e��1p7B���l��r��u�y�X���:<����3��WP��5�a�&�F)e+.g���@&��&�=�tGn�=�R�j�B�q�2�%������¥�qw�%�6Fǥ6�`�f	�Vϣ�\b��|�VSw�c)}��A��.W��AU�V�?���n���0:̕v�<Bh�4�Vp�~�z��G�`a��Ӎ��Z�x$��7ߍ+��j���(&�֥RS&m,H.ߏ��`4�ë�2��^���� ܄��ڛ�{��a����c�K|oU�.7������l�m��s���Hw7䊊.C�fH���:rMO���n�qR�QF4"Z̕�Ni����N_��~ܭU4K��s�����h[5�NS�uL�J=�id+Ւ6��q�2Ah�av�F�$���t�s�V%�6������R.���N�景T:��d+U�Pt�m(T��+���R!�3UP��p���S�eVKV��G��T��1&����o���\�:�u]U2�I�v�����B8(��{��½_�zI�\��"c,�10%4F�ɸ���Cֹܪ=�u�T�0 ;q��U�+���S��
����Q�J�m}��i[�Q�O#R�{��W�WK���n�Z1��UUGbE�&��*I�.�;|��;p�FMմ�g\�v�e;)S	ҼD��<�K��n��m,�e������t�����8:�i��V�ᬬz�-�e�ᕡQ��3
�D�
�;L�@��z8;��(�K5���x�D�����J��<�8�׍:�-tk��[L����67�5d��A�����?u�k[�zNs1�c*ʴC�o�bky� /\�wkTj�B�p�a<c��Y�'�F����q���l�#��~����+���/�]E����|_��_�gQ      H   $  x��һJCA�>O�]�,{�ٝ��"E@"�h��$D��-N���v���������Q���gq�I�!������Xe#�p���x��k����{�Z�=>�nb�7byoDv��x��`�Re)GTh����r#��a��7���QF�]F.G�j����f��,|���}2��������Z�٥j�7Ҏ����j��Fu�3�Bj� x�Z���G����'c�(� �Nc#�0�'[2y�Z��F?�㛉�}�1a�L���g��6���b��ߧz���)��.      >   �   x��;�0���_�mUH$Wm���A(��*�� �1��M����4mW?zh��{�>��7g�; ����#0�����`�d���:��?�������G����g�A�P'F�D`Z%'U�*�d�_%F)����M��Pq^`"�5LM�y������ �D��$���7�      @     x����n�@�O141Ё��� i;����M�H�� O_�4�I��nNrN�\d�&^d�P��"K�*�MI�$��@Q22U�4��C@�"��P[�&p�x�7c1Çq5������$�н�lc�:�u�.�"�(�J��3)L��Y���B67}��`Ұ�6)o`�Q�k� �-�O��\d	ԝ����E�+�����yB�h#k�P����s�K�u�׫e}~BLp�_b� ��H|���g�~S_��c/�KOߘ�8����a��7��      B      x��[Yo�~���Ht��9v�=%@ 0 �_Yb"Jd�t@�R���-Z
���@�x�5��/���%���{�d!����LwOwu�W_U����/~��_�w�����G�|xi�B����?���ά^�����W>X_��
]�||am���������V/н�W.]ZY�����K��O��V~{�����u��嵿|�zqI���w��_�3NM���w߭��ѝ(�zQMU���q4����HE�0�7�2�,�=�;�����,����?u*�o4����������<j���.=�_�Ԗ�o{�܉w^���4	�r�e��l7��������m�;��WyQ�ŰT���]�-Z�Ln�p��p���h����t�$�=�?���7FH�
Y���P��7���	�y#�*��Y^_B��iyy�|o����Q��)��	�=��CR�	ާ����"�NViZ������^��Z�s��rR�u�<NNvQw2ZC2�V�ݒ�ķ�Q��F�ʶ��r��[ou�V�}Ic����%"9���?}2��~SL̶�b�|ϭ�M�c9/�Sl{�\Zw�,8�͞�g��+m��t�f�U�o}��@�r:�o;�Ո�-�䉓'x�I'��BjJ��GhY�ѓ	���H�߿�XG�D_�Ĭ�[�<�"��$���+Tќ�������А�h��L�0�+$�0��_5�.=��|�u�x�զ��`�����}���ٜ���6��� 2C��:�?��>�~��q�q��C��]�*3�Yt z㘰��d���{��O��P�1���C6�t\�OS�x�<��ZtTKVƚ3�w*g�Ux:`k��+�Wd��!�.?|�G�i�Z�]�p+We�x(�������э 787��qX%'�<� �p;7���Te�1v]�*-#���ȖHK ߞȕ��j�7~�X��U3l�,7���Ļ�q۞���A��& �P��~ Dx�l�EǩSa�{�Zƈo@�y	m������L%:�_!h���@��V�URF"=���3���U���'S��lj��[�ͮ@�=�|��&Ӧ*�G������{ 0�r�X4B��wW����p
 �TX�@�A�lO��$P�{�W��nɽ�M�n֛���4NP���pԳ�r��"?{��Xg]˂<��fXnx��.;�M=V�w��3�A*)w��>6C6��P�Mk�Hbj�&��sV2��V ����J�A����6�8\�]"��-��\�S�
���;C�76�y�t{ ��=B�[f���L�ɵh�g�e�#3p(�Q4� ��%C�&��:D�5;K�N��7gޡ�{f~�t���
H�~���}�Z��C�<W�{;�;��}�(g�)OJ�҆��N0n�h���m�XL̰�b��*X����~��B��Z!L�R+��{��A&����:�����0,H�;fC��Cq��BHr���� �k*�F/6]�d��g׫�&X���X�U�R�>��82���k�1�r�Z.��EU�b�Q.�x���_!�G���K��'A~%��>�mП��OY�y��LQ�q!�Y�K������L(��$��v�	�E ���oV�]F��cj�ݛm��廭��r����c.𣇚��Ў���!k>)�D~��f	��d�L�f� H9x�$�ǉ"����ɹekJOaf�Y�#OC3�2XP2z��k;����S�迿�v��� �	���c�M�e�5=�50?���~���.B�mR�]e�pi�W���0k#�	��.�� ��Y���h����ƿ
g���U	�yD|MozP'��o���1�>"���Zւr����{�y:N��B��:4&�b<~�X_d4QEĶ�i�q�܅0ٕ���᝞7K�������+��~K����W.���O.����E-�)dǡB*���{�D�w���X���S�Շs22|�D��iOC�L�w&����������<�ph�h�$��<��C���(;0��J�~̐V�q5����7��*����#��L{�b�xK6�6S�Y��U[�߉k#�F���5��s=��.3	���$�mp�`s���<u�?�)�~4�{�ۼW&C�F�2_�qN_�^�^��*�_^�㯖��$c�'~at�q�i�d����@gv���Y�<UJYz��G|o�"�L̅#�s߯k]mt�g����4M%f5�[��Q�P��~�,s�Qח�H�.G�,s$�C#��7���R�d�!�Y+q.��3�تj��AUJү�j4OP�z�T`�W�����.��vXځ���$s�50L_��Z���ö�tnk�a���@\n��3&�PDI��$����Z :=��k	��y��G�,@����SV3K]^ ��&�ד
�x��S���o��f�s�N9ko86�k���+��'O8�g�T��@r���,���Gܧ�%>�Y�1=��N%�����c&���=]�6��lCZ0�7�4�-ρG99�I���$\�tU���$I����.�$У�!����y#]~�o�]��u�L��7B���}M߱�V���0���~)po$��a>gEAT�s&1>�Vw-�"!'y�'��)A��NI�B]s��r� ��Q\/a��M���3��Mi$I6.&��Z�O
��SvYvS���8�}��0&dSB)�<c�4h�'-z:�~��k�%�H�����o��}�����v`<A\����>S��JRh� ����n��t�Dn����%9�̄X��LԔC�e�$gDHeλ�J^�M	 �H5��¡����)b�mc�Ց��$���Y	O�x8dь�����W�ش�v�x�Y�6�D�\��E���7h�dж�5�V�my�X\���n�;Y�cy,�b��k�G�-9
���u I�f�H	b{{��W�W�����/��Z(��3i�T��Ar�bs��,��aa~Bޔ��xB���V�y>3^��KSr�<�D��RN�|�A��@��4��*��Q߭\q:�"|�*��(��R,����l7�0{O��[�Ѳ�R/�N��*Ӽ@F�LP4Ii{�R�9�����Wd�:�^[ܲ���lכ�紽�"�y�}B���6�h�`|a��gf:�g��S���TPg	!-��9�x��6?��k��I\B�M\G>�qt*����(�~J��t!��'�Ъ���;��jf�KA�n��I�K�0]g~p?9�1��9;�ɓC���l9H��P����8_���*r��uu^�x�Qc�3
2��B�8=^pT�RF��IAu�s,Zif�Ԭ�lhW9o_٨����¿�+At���5����A����N��3�Isx���ov\����K�Z�o��kf���Y_yv2Rõ�}{����A�1V��_��q˹�
�=f3`-]�,���0S��R�b%A����!��m��ϑr�A�e(���2'�����u�0l e ���I~�R��L.��d�ELJǌcSs �1Z��&i$FEʌ|=R��~:Q^�w_��F�)�@�i���+�ڇjc�W�����J�l�Ad������)�R`� (7ұ]A�:gG��́�g$a� �\�{D��'P�u�<pN'�-�\YVc��~gM!�84�Ɓ�uK ��dQġ$EC����C�lth1͠� eRC����Z\�F��R���%)}�;�V��	��+N|Vb�T/{�s�ӰP��SJ,{;�+��`�������E�B$�Y�Gm��K����|
�JK�Ě|���I])Էa���$9�P��r(Y*}fh�D�Ś󥇂����͚ʅ�G���������h� �A~�"ƕ��	�J�k�G�W]PK+�I	���II��ܰ�kR�ɮ.�"S}~#4�A���
t�3O���%����0�P�B�wΠ����;��"  T��<ϭ�J��e�Q�l':�<������p_�1A��w/E[��w��ܒIX�SP3��<A�E�X
%��̎o��@(��������Q�)��4� A  R2A34Wo9}4�i���QB6xIT��X,������i�&9������T�`h�8Ԅ�!��C�u\*�z|E�[����)���19�'Eߥ����F���At�â�7��]b|�)���{s��W�#�w���h7��S-���2Q�xx&8HN��~l�#|�:}��ľ���t ���M�+��>smU{n�=�Ar]K����㗜��)�}�I'�6����Õe���U/�mWt�8)��m�n?��Oa�W��Ͳ޻��խf�҇����^��Ad�_`�і��V���sx�?+�.�r�U�nB"s��M�����u6�n�f��c�Fh~;�s��RmD�3���Q3�e����%q�%�����xG�9]a>9�e?�@��?@�\�]��Jr'qO��e+���!�IY��nrT$����љ�TP��4	��]����_G5銉�~{G-_]���/37�69`�x��#0�Ri.U���_�k�C�:X2y��-G�&]�L�$Y���XR����}�
���|Z�¡A������x[�O߲
VSIM���P��8�ck���_<�0�0� 㔱�SU�}�th�ѡ�;�z�c�ٲ�"6���J��#b樻�@Q�\t⫢L�zڳ�I�%=��X�t(��G�&_w�L�RD��2�A�5��K��] [�<�u@�կ��e-�n4�N͜�H� 5�H9si���_���!9��#��AqAO��K�d�=�����f���M-Rd��Go�*�P�x��F!K��q � <��AW���dK�y XBA�gQ�PMXՉ����      D   Q   x���v
Q���W((M��L�+(�O)M.�ON,*Q��L�Q(H-*�ϋ3���)�
a�>���
��:
�:
�&��\\\ x�      F   �   x���v
Q���W((M��L�+.I,)-V��L�Q�K�M�Ts�	uV�0�QP�0�b˅}.칰���{�5��<I1�d�|�;.���I��& oÅ�@c�.6�l�1��� ��ͺ�K��|��b��v]�J��&���F�GMA�L��hІ��/3�1�.v_�4��� ۮ�     