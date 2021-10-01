--Criando a Tabela Turma

CREATE TABLE turma(
cod_turma serial primary key,
dat_inicio date,
num_turma varchar (20),
sigla varchar (20));

insert into turma (cod_turma, dat_inicio, num_turma, sigla) values ('3', '26/4/2009', 1, 'US');
insert into turma (cod_turma, dat_inicio, num_turma, sigla) values ('210', '6/6/2014', 2, 'UA');
insert into turma (cod_turma, dat_inicio, num_turma, sigla) values ('9400', '8/11/2007', 3, 'CN');
insert into turma (cod_turma, dat_inicio, num_turma, sigla) values ('80', '7/1/2016', 4, 'CN');
insert into turma (cod_turma, dat_inicio, num_turma, sigla) values ('7305', '6/2/2005', 5, 'CN');
insert into turma (cod_turma, dat_inicio, num_turma, sigla) values ('77367', '4/1/2019', 6, 'NL');
insert into turma (cod_turma, dat_inicio, num_turma, sigla) values ('21942', '22/3/2017', 7, 'CI');
insert into turma (cod_turma, dat_inicio, num_turma, sigla) values ('4', '4/9/2014', 8, 'PL');
insert into turma (cod_turma, dat_inicio, num_turma, sigla) values ('5', '30/6/2008', 9, 'CN');
insert into turma (cod_turma, dat_inicio, num_turma, sigla) values ('350', '27/6/2010', 10, 'ID');