create table tb_cliente(
codigo int not null,
razao_social varchar(200),
nome_fantasia varchar(200),
numero_cnpj varchar(14),
valor_capital_social_decimal numeric(12,2),
primary key(codigo,numero_cnpj));