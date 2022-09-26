drop database Treinador;

create database Treinador;
use Treinador;

create table Treinador(
IdTreinador int primary key auto_increment,
Nome varchar(40),
Telefone varchar(20),
Email varchar(50),
fkTreinadorEx int,foreign key 
(fkTreinadorEx) references 
Treinador(IdTreinador))
auto_increment = 10;


  
    insert into Treinador (Nome,Telefone,Email,fkTreinadorEx) values
('Magna Machado', '(94) 3166-2947', 'magna.gualberto@geradornv.com.br',null),
 ('Rebeca Barroso', '(19) 3255-3539', 'rebeca.paiva@geradornv.com.br',null),
 ('Fábio Limeira', '(79) 3052-5308', 'fabio.bocafoli@geradornv.com.br',null),
 ('Hugo Soares', '(47) 2674-3725', 'hugo.zava@geradornv.com.br',null),
 ('Lucas Felipe', '(82) 2322-6124', 'lucas.miranda@geradornv.com.br',null),
 ('Adolfo Gouveia', '(77) 3653-1274', 'adolfo.azevedo@geradornv.com.br',null);
 
 
 
 create table Nadador 
 (IdNadador int primary key auto_increment,
 Nome varchar(45),
 SobreNome varchar(45),
 EstadoNatal varchar(2),
 dtNascimento date,
 fkTreinador int,
foreign key (fkTreinador) references Treinador(IdTreinador)
);
 
 insert into Nadador(Nome,SobreNome,EstadoNatal,dtNascimento,fkTreinador)  values 
 ('Wallace Neto', 'Robadey', 'RN', '1948-11-07',null),
 ('Elimar de Souza', 'Richa', 'TO', '1946-05-05',null),
 ('Dionísio Braz', 'da Paixão', 'RN', '1972-11-11',null),
 ('Oscar Silvino', 'Figueredo', 'SP', '1974-06-19',null),
 ('Kauã Garcia', 'Linhares', 'SP', '1996-05-01',null),
 ('Guilherme Saldanha', 'Pedroso', 'PE', '1988-09-01',null);
 
 

update Treinador set fkTreinadorEx = 15
where IdTreinador = 10;


update Treinador set fkTreinadorEx = 14
where IdTreinador = 11;


update Treinador set fkTreinadorEx = 14
where IdTreinador = 12;


update Treinador set fkTreinadorEx = 14
where IdTreinador = 13;


-- update TABLE NADADOR 



select * from Treinador
join Nadador on 
fkTreinadorEx 
where IdTreinador = 11;


SELECT * FROM Treinador AS exp JOIN Treinador AS nov ON exp.fkTreinadorEx = nov.IdTreinador;


SELECT * FROM Treinador AS exp JOIN Treinador AS nov ON nov.fkTreinadorEx = exp.IdTreinador WHERE exp.Nome = 'Kauã Garcia';

SELECT * FROM treinador AS exp 
JOIN Treinador AS nov ON nov.fkTreinadorEx = exp.IdTreinador JOIN Nadador AS nad ON nad.fkTreinador = nov.IdTreinador;
 
 
 
SELECT * FROM Treinador AS exp 
JOIN Treinador AS nov ON nov.fkTreinadorEx = exp.IdTreinador JOIN Nadador AS nad ON nad.fkTreinador = nov.IdTreinador WHERE nov.Nome = 'Kauã Garcia';

