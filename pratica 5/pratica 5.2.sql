
-- 2. No MySQL Workbench, utilizando o banco de dados ‘sprint2’

create database sprint2;

use sprint2;

-- primeiro criar a TABELA ALUNO !

create table Curso 
(idCurso int primary key auto_increment, 
nome varchar(50),
sigla varchar(3),
coordenador varchar(40),
fkAlunos int,
foreign key (fkAlunos) references Alunos (idAlunos));

insert into Curso values
(null, 'Analise e Desenvolvimento de Sistemas', 'ADS', 'Thiago Fontes', null), 
(null, 'Banco de Dados', 'BD', 'Marcelo Brasil', null), 
(null, 'Engenharia da Computação', 'EC', 'Maria Clara', null),
(null, 'Gestão da Tecnologia da Informação', 'GTI', 'Luiz Carlos', null);


create table Alunos 
(idAlunos int primary key auto_increment,
nome varchar(30),
sobrenome varchar(30),
idade int,
curso varchar(50),
constraint chkIdade check (idade > 17)); 

insert into Alunos values 
(null , 'Victor', 'Gabriel', 23, 'Engenharia da Computação'),
(null , 'Maria', 'Silva', 21, 'Gestão da Tecnologia da Informação'),
(null , 'João', 'Gomes', 18, 'Analise e Desenvolvimento de Sistemas'),
(null , 'Wallace', 'Ribeiro', 18, 'Banco de Dados'),
(null , 'Vitor', 'Marques', 18, 'Engenharia da Computação');



-- Faça um JOIN entre as duas tabelas;

update Curso set fkAlunos = 1
where idCurso = 1;

update Curso set fkAlunos = 2
where idCurso = 2;


update Curso set fkAlunos = 3
where idCurso = 3;

update Curso set fkAlunos = 4
where idCurso = 4;


update Curso set fkAlunos = 5
where idCurso = 5;


update Curso set fkAlunos = 6
where idCurso = 6;


update Curso set fkAlunos = 7
where idCurso = 7;




select * from Curso
join Alunos on fkAlunos = idAlunos;

select Curso.nome, Curso.sigla, Curso.Coordenador, Curso.fkAlunos  from Curso
join Alunos on fkAlunos = idAlunos;



-- Faça um JOIN com WHERE entre as duas tabelas;

select * from Curso
join Alunos on fkAlunos = idAlunos;

select Curso.nome, Curso.sigla, Curso.Coordenador, Curso.fkAlunos  from Curso
join Alunos where fkAlunos = idAlunos;

-- Crie um campo com a restrição (constraint) de CHECK 

-- minha restrição foi na idade do Aluno que tem que ser a partir de 18 para fazer o cadastro.



 