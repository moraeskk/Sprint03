insert into hrsights.tb_empresa
(razao_social,cnpj)
values 
('Padaria dois irmãos','265306160'),
('Barbearia luiz felipe gtr','80163500'),
('Lan house Daniel rathanaza','1482160400');

insert into HRsights.guarda_operacoes
(dado,id_empresa)
values 
('Adiantamento',265306160),
('Mensal',80163500),
('férias 1 quinzena',80163500),
('Ferias 2 quinzena',1482160400),
('Adiantamento',265306160);

insert into hrsights.tb_cargos
(nome_cargo,id_empresa)
values 
('Padeiro',265306160),
('Barbeiro',80163500),
('Atendente',1482160400);


insert into hrsights.tb_salario
(valor_salario,id_cargos)
values 
('3.100',1),
('1.330',2),
('1.000',3);


insert into hrsights.tb_funcionario
(cpf,nome,rg,data_nascimento,telefone,titulo_eleitor,endereco,email,id_empresa,id_cargos,id_salario)
values
('18117189','Guilherme Gui','307749332','2001-07-22','21900000000','123456789123456','Rua casa do carvalho, 33','guilhermeanao@gmail.com',265306160,1,1),
('57501979','Luiz carlos cardoso','174951681','1990-03-27','21912600000','523456789123456','Rua casa do carvalho, 35','Luizcarlos123@gmail.com',80163500,2,2),
('15155184','jose dimas','197803015','1970-05-06','21912600000','523456789123456','Rua casa do carvalho , 39','josedimas123@gmail.com',1482160400,3,3);

insert into hrsights.tb_dependentes
(cpf,nome_mae,nome,data_nascimento,id_funcionario)
values 
('733.724.700-10','Paula paolino','julia carla ','2017-07-30','18117189'),
('726.637.860-55','julia juliana','Pedro cardoso','2001-01-04','57501979'),
('162.586.870-75','Carla paula','Ana dimas','2007-12-31','15155184');