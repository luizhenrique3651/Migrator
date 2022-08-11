create table produto(
id int not null primary key,
dsc_produto varchar(255),
preco decimal
)
create table estoque(
id int not null primary key,
id_produto int references produto(id),
quantidade int
)

