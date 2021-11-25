CREATE SCHEMA dw;


CREATE TABLE dw.aluno(
cod_matricula serial primary key,
nome varchar(20),
sexo int,
bairro varchar(20),
dat_nascimento date);

CREATE TABLE dw.matricula(
idmatricula serial primary key,
hora_matricula varchar(20),
dt_matricula date,
desconto real);


CREATE TABLE dw.professor(
cod_professor serial primary key,
nome varchar(20),
rg varchar(20),
dt_nascimento date);


CREATE TABLE dw.turma(
cod_turma serial primary key,
dat_inicio date,
num_turma varchar(20),
sigla varchar(20));


INSERT INTO dw.aluno (cod_matricula, nome, sexo, bairro, dat_nascimento)
SELECT cod_matricula, nome, sexo, bairro, dat_nascimento FROM aluno;


INSERT INTO dw.matricula (idmatricula, hora_matricula, dt_matricula, desconto)
SELECT idmatricula, hora_matricula, dt_matricula, desconto FROM matricula;

INSERT INTO dw.professor (cod_professor, nome, rg, dt_nascimento)
SELECT cod_professor, nome, rg, dt_nascimento FROM professor;

INSERT INTO dw.turma (cod_turma, dat_inicio, num_turma, sigla)
SELECT cod_turma, dat_inicio, num_turma, sigla FROM turma;

