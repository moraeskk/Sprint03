create database desafio;
create schema HRsights;

drop table HRsights.tb_empresa cascade;
drop table HRsights.guarda_operacoes cascade;
drop table HRsights.tb_cargos cascade;
drop table HRsights.tb_salario cascade;
drop table HRsights.tb_funcionario cascade;
drop table HRsights.tb_dependentes cascade;

create table HRsights.tb_empresa(
cnpj int primary key,
razao_social varchar(500),
id_funcionario int
);

create table HRsights.guarda_operacoes(
id int generated always as identity primary key,
dado varchar(300),
id_empresa int,
constraint fk_empresa
        foreign key (id_empresa)
        	references Hrsights.tb_empresa(cnpj)
);


create table HRsights.tb_cargos(
cbo int generated always as identity primary key,
nome_cargo varchar (100),
id_empresa int,
constraint fk_empresa
        foreign key (id_empresa)
        	references HRsights.tb_empresa(cnpj)
);

create table HRsights.tb_salario(
id_salario int generated always as identity primary key,
valor_salario numeric,
id_cargos int,
constraint fk_cargos
        foreign key(id_cargos) 
      		references Hrsights.tb_cargos(cbo)
);

create table HRsights.tb_funcionario(
cpf varchar(15) primary key,
nome varchar(100),
Rg  varchar(9),
data_nascimento date,
telefone numeric(11),
titulo_eleitor varchar(15),
endereco varchar(100),
email varchar(30),
id_empresa int,
id_cargos int,
id_salario int,
constraint fk_empresa_funcionario 
		foreign key (id_empresa) 
			references HRsights.tb_empresa(cnpj),
constraint fk_cargos_funcionario 
		foreign key (id_cargos) 
			references HRsights.tb_cargos(cbo),
constraint fk_salario_funcionario 	
		foreign key (id_salario) 	
			references HRsights.tb_salario(id_salario)
);

create table hrsights.tb_dependentes(
cpf varchar(15) primary key,
nome_mae varchar(100),
nome varchar(100),
data_nascimento date,
id_funcionario varchar(100),
constraint fk_funcionario
 		foreign key (id_funcionario)
 		references Hrsights.tb_funcionario(cpf)
);
