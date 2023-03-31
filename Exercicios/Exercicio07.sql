Create Schema geral;

create table cadastro.tb_fornecedor(
	codigo_inteiro int primary key generated always as identity,
	numero_cnpj varchar (14),
	razao_social varchar (200),
	nome_fantasia varchar (200),
	valor_capital_social numeric (12,2)
);


create table cadastro.tb_contato(
	id int primary key generated always as identity,
	nome varchar (150),
	telefone varchar (20),
	id_fornecedor int,
	constraint fk_idfornecedor
		foreign key (id_fornecedor)
		references  cadastro.tb_fornecedor (codigo_inteiro)
);

insert into cadastro.tb_fornecedor (razao_social, numero_cnpj)
values ('Empresa de teste 1', '12658987000188'), ('Outra empresa', '66874982000178'), 
('Exportadora de fora do pais', '98322145000171'), ('Lojinha do seu Zé', '6598741400145'),
('Barraca de pastel', '8798756400152');

select * from cadastro.tb_fornecedor tf ;
alter table cadastro.tb_fornecedor drop nome_fantasia; 
alter table cadastro.tb_fornecedor drop valor_capital_social; 

insert into cadastro.tb_contato (nome, telefone, id_fornecedor)
values ('João', '(11)1234567897', '1'), ('Maria', '(11)1234567897', '1'), ('Zezé', '(11)1234567897', '2'),
('Angelo', '(11)1234567897', '3'), ('Pedro', '(11)1234567897', '3'), ('Souza', '(11)1234567897', '4');