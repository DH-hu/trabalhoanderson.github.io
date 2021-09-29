--Criando a Tabela Matricula

CREATE TABLE matricula(
idmatricula serial primary key,
hora_matricula varchar(20),
dt_matricula date,
desconto real);