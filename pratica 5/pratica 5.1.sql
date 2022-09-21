
create database sprint2;
use sprint2;

create table Professor 
(idProfessor int primary key auto_increment,
nome varchar (50),
sobrenome varchar(30),
especialidade1 varchar(40),
especialidade2 varchar(40),
FkDisciplina int, 
foreign key (fkDisciplina) references Disciplina (idDisc))
;



insert into Professor values 
(null , 'Vivian', 'Silva', 'Banco de Dados', 'Dar Aula', null),
(null , 'Victor', 'Gabriel', 'Java', 'Cobol', null),
(null , 'Pedro', 'Afonso', 'Front end', 'Back end', null),
(null , 'Alessandro', 'Gomes', 'Css', 'HTML', null),
(null , 'Everaldo', 'Costa', 'Engenharia de software', 'Banco de Dados', null),
(null , 'Wallace', 'Souza', 'Banco de Dados', 'Web Segurança', null),
(null , 'Vitor', 'Marques', 'Front End', 'Java Script', null ),
(null , 'Mariana', 'Maria', 'Suporte tecnico', 'Qualidade de Software', null),
(null , 'Marilia', 'Santos', 'Programador mobile', 'Especialista em Cloud Computing', null);

select * from Professor;

create table Disciplina 
(idDisc int primary key auto_increment, 
nomeDisc varchar(45));



insert into Disciplina values 
(null, 'Back End'),
(null, 'Front End'),
(null, 'Cloud'),
(null, 'Banco de Dados');



-- Escreva e execute os comandos para:

-- ESTA NO CREATE TABLE 




update Professor set fkDisciplina = 3
where idProfessor = 1;

update Professor set fkDisciplina = 1
where idProfessor = 2;

update Professor set fkDisciplina = 3
where idProfessor = 3;


update Professor set fkDisciplina = 4
where idProfessor = 4;


-- Exibir os professores e suas respectivas disciplinas;

select Professor.nome, Professor.sobrenome, Disciplina.nomeDisc from Professor 
join Disciplina on fkDisciplina = idDisc;


-- Exibir apenas o nome da disciplina e o nome do respectivo professor;

select Disciplina.nomeDisc, Professor.nome from Professor 
join Disciplina on fkDisciplina = idDisc;


-- Exibir os dados dos professores, suas respectivas disciplinas de um determinado sobrenome;

select Professor.sobrenome, Disciplina.nomeDisc from Professor 
join Disciplina where fkDisciplina = idDisc;

-- Exibir apenas a especialidade1 e o nome da disciplina, de um determinado professor, ordenado de forma crescente pela especialidade1;

select Professor.especialidade1, Disciplina.nomeDisc from Professor 
join Disciplina where idProfessor = idDisc
order by especialidade1 asc;










