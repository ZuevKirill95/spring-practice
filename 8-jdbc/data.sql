create schema if not exists <схема>;

create table <схема>.product
(
    id    integer generated always as identity
        primary key,
    name  varchar(255) not null,
    price numeric      not null,
    count integer      not null
);

create table <схема>.cart
(
    id        integer generated always as identity
        primary key,
    promocode varchar(255)
);

create table <схема>.client
(
    id       integer generated always as identity,
    name     varchar(255) not null,
    username varchar(255) not null,
    password varchar(255) not null,
    cart_id  integer      not null
        constraint client_cart_id_fk
            references <схема>.cart
);

create table <схема>.product_client
(
    id         integer generated always as identity
        primary key,
    id_product integer not null
        constraint product_client_products_id_fk
            references <схема>.product,
    id_cart    integer not null
        constraint product_client_cart_id_fk
            references <схема>.cart,
    count      integer not null
);

