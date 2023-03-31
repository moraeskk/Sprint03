create schema cadastrar;

create table cadastrar.tb_produto (
id int generated always as identity primary key,
descrição varchar(500),
preco_custo numeric(12,2),
preco_venda numeric (12,2) 
);

drop table cadastros.tb_produto;

insert into cadastrar.tb_produto( id,descrição,preco_custo,preco_venda)
values (1,'televisao',599.99,899.99),
(2,'geladeira',300.00,800.99),
(3,'Sofá',2000.00,3490.99);

update tb_produto set preco_custo = 2249.00 where id =3;

delete from tb_produto Where preco_venda < 1000.00;

