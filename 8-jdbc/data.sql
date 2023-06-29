create schema if not exists <схема>;

create table <схема>.products
(
    id    integer generated always as identity primary key,
    name  varchar(255) not null,
    price numeric      not null,
    count integer      not null
);

create table <схема>.carts
(
    id        integer generated always as identity primary key,
    promocode varchar(255)
);

create table <схема>.clients
(
    id       integer generated always as identity primary key,
    name     varchar(255) not null,
    username varchar(255) not null,
    password varchar(255) not null,
    email    varchar(255),
    cart_id  integer      not null
    constraint client_cart_id_fk
    references <схема>.carts
);

create table <схема>.products_carts
(
    id         integer generated always as identity primary key,
    id_product integer not null
    constraint product_client_products_id_fk
    references <схема>.products,
    id_cart    integer not null
    constraint product_client_cart_id_fk
    references <схема>.carts,
    count      integer not null
);
