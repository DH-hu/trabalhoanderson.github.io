--Criando a tabela Professor

CREATE TABLE professor(
cod_professor serial primary key,
nome varchar (20),
rg varchar (20),
dt_nascimento date);	

insert into professor (cod_professor, nome, rg, dt_nascimento) values (1, 'Inga Gowanlock', '242-60-6332', '18/8/1973');
insert into professor (cod_professor, nome, rg, dt_nascimento) values (2, 'Cassaundra Volet', '590-80-2356', '14/8/1975');
insert into professor (cod_professor, nome, rg, dt_nascimento) values (3, 'Brew Keays', '738-83-9160', '18/5/1976');
insert into professor (cod_professor, nome, rg, dt_nascimento) values (4, 'Bertrand Pulhoster', '479-21-7731', '26/4/1979');
insert into professor (cod_professor, nome, rg, dt_nascimento) values (5, 'Suzanna Jeskin', '210-05-0731', '26/9/1979');
insert into professor (cod_professor, nome, rg, dt_nascimento) values (6, 'Liz Allaker', '566-19-3487', '19/9/1967');
insert into professor (cod_professor, nome, rg, dt_nascimento) values (7, 'Gardner Sergean', '350-57-7713', '24/6/1975');
insert into professor (cod_professor, nome, rg, dt_nascimento) values (8, 'Bentley Hallibone', '320-44-6997', '24/10/1967');
insert into professor (cod_professor, nome, rg, dt_nascimento) values (9, 'Hannie Parratt', '788-95-3816', '8/1/1975');
insert into professor (cod_professor, nome, rg, dt_nascimento) values (10, 'Devlen Struther', '882-65-4841', '30/12/1977');