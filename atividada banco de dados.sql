create database sprint2;
use sprint2;


 create table atleta
( idatleta int primary key auto_increment, nome varchar(40), modalidade varchar(40), qtdmedalhas int);

insert into atleta values
( null, 'victor', 'ciclismo', 15),
( null, 'adriana', 'boxe', 34),
( null, 'joão', 'karete', 3),
( null, 'luana', 'mma', 5),
( null, 'maria', 'atletismo', 4),
( null, 'leticia', 'ciclismo', 6),
( null, 'marcelo', 'ciclismo', 23);

 alter table atleta add column fkpais int;

 alter table atleta add foreign key (fkpais) references atleta(idatleta);
 
desc atleta;


create table pais
(idPais int primary key auto_increment, nome varchar(30), capital varchar(40));



insert into pais values
(null, 'Brasil', 'Brasilia'),
(null, 'Albânia', 'Tirana'),
(null, 'Catar', 'Doa'),
(null, 'Chile', 'Santiago'),
(null, 'Canadá', 'Otava'),
(null, 'Comores', 'Moroni');


select * from pais;

alter table pais add foreign key (fkcapital) references pais (Idpais);


 alter table atleta add foreign key (fkpais) references atleta(idatleta);


update atleta
set fkpais = 3
where idatleta = 2;

update atleta
set fkpais = 1
where idatleta = 3;

update atleta
set fkpais = 1
where idatleta = 2;

update atleta
set fkpais = 1
where idatleta = 1;


update atleta
set fkpais = 1
where idatleta = 4;


update atleta
set fkpais = 1
where idatleta = 5;

update atleta
set fkpais = 1
where idatleta = 6;

update atleta
set fkpais = 3
where idatleta = 2;

select 
concat('O atleta ', atleta.nome, ' nasceu no pais ', pais.nome) as Frase
from atleta
join pais on fkpais = idpais
order by atleta.nome desc;



create table musica 
(idMusica int primary key auto_increment,
 titulo varchar(40),
 artista varchar(40),
genero varchar(40));

insert into musica values 
(null, 'Doja', 'Central Cee', 'rapp'), 
(null, 'Ye', 'Japa', 'trap'),
(null, 'Zé do caroço', 'Seu jorge', 'Mpb'),
(null, 'João e Maria', 'Chico Boarque', 'Mpb'), 
(null, 'Na Hora Da Dura', 'Bezerra da Silva', 'smaba'), 
(null, 'Meu Bom Juiz', 'Bezerra da Silva', 'samba'), 
(null, 'Eu Não Sou Santo', 'Bezerra da Silva', 'Samba'), 
(null, 'Tive Sim', 'Cartola', 'samba');

 
 create table album (
idAlbum int primary key auto_increment,
nome varchar(30),
tipo varchar(12),
dtLancamento date);

insert into album(nome, tipo, dtLancamento) values 
       ('O Samba Malandro de Bezerra da Silva', 'Físico', '1987-08-03'),
       ('Cartola 1974', 'Físico', '1974-11-10'),
       ('Ana Carolina e Seu Jorge', 'Digital', '2014-10-29');

 
 

select * from musica;
select * from album;

alter table musica add foreign key (fkalbum) references pais(idalbum);
update musica set fkalbum = 1 where idmusica = 1;




