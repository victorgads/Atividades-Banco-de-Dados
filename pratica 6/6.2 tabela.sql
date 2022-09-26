CREATE DATABASE sprint2;
USE sprint2;


-- criar PRIMEIRO TABELA PESSOA !!!

CREATE TABLE Gatos (
IdGatos int primary key auto_increment,
Nome varchar(45),
dataEntrada date,
Valor char(20),
Descrição varchar(100),
fkPessoas int,
foreign key (fkPessoas) references Pessoas(IdPessoas))
;

INSERT INTO Gatos VALUES 
(null, 'Perceu', '2022-09-12', 85.00,'Gato Preto Olhos Verdes',null),
(null, 'Nina', '2022-09-15', 50.00,'Gata Cinza de Olhos Azuis',null),
(null, 'Jonas', '2022-09-11', 35.00,'Gato Pequeno Amarelo,Com Manchas Escuras Nas Costas',null),
(null, 'Floquinho', '2022-09-12', 85.00,'Gata Branca de Olhos Verdes',null),
(null, 'Menino', '2022-09-01', 155.50,'Gato Marrom Muito Peludo, Com Olhos Verdes',null);

create table Pessoas (
IdPessoas int primary key auto_increment,
Nome varchar(45),
SobreNome varchar(45),
dtNascimento date,
Profissão varchar(45));



insert into Pessoas values
(null, 'Victor Gabriel', 'Alves Dos Santos', '1999-11-29', 'Estudante'),
(null, 'Ana Clara', 'Da Silva', '1998-07-12', 'Advogada'),
(null, 'Marcelo Braga', 'Cordeiro Antunes', '1987-10-15', 'Médico'),
(null, 'Juliana Vieira', 'Lopes De Amaral', '1995-03-22', 'Policial Federal'),
(null, 'Giovanna Pazzeto', 'Maria De Souza', '2003-10-29', 'Enfermeira');


select * from Gatos;

select * from Pessoas;

select * from Pessoas 
where Profissão = 'Advogada';

select * from Pessoas 
where Profissão = 'Médico';

select * from Pessoas 
where Profissão = 'Enfermeira';





update Gatos set fkPessoas = 1
where IdGatos = 1;


update Gatos
set fkPessoas = 2
where IdGatos = 2;


update Gatos
set fkPessoas = 3
where IdGatos = 3;



update Gatos
set fkPessoas = 4
where IdGatos = 4;

update Gatos
set fkPessoas = 5
where IdGatos = 5;



select * from Gatos
Join Pessoas on fkPessoas = IdPessoas 
where idPessoas = 1;




update Pessoas set Nome = 'Gabriel Victor'
where IdPessoas = 1;


select * from Gatos;



drop table Gatos;

drop table Pessoas;






