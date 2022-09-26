
create database sprint2;
use sprint2;


create table Pet (
idPet int primary key auto_increment,
 tipo varchar(20),
 raça varchar(20),
nome varchar(20),
dtNascimento date,
fkClientes int,
foreign key (fkClientes) references Clientes(idClientes))
auto_increment = 101;


insert into Pet values 
(null, 'Gato', 'Lykoi', 'Muon', '2017-08-09', 1),
(null, 'Gato', 'Persa', 'Choco', '2016-11-23', 2),
(null, 'Cachorro', 'Kangal', 'Golias', '2019-01-15', 3),
(null, 'Iguana', 'Iguana Verde', 'Sherek', '2020-10-11', 4),
(null, 'Teiu', 'Teiu Cinza', 'Vieno', '2018-12-22', 5),
(null, 'Gato', 'Maine Coon', 'Charllote', '2018-01-22', 2),
(null, 'Gato', 'Ashera', 'Leonard', '2014-05-25', 1);



create table Clientes (
IdClientes int primary key auto_increment,
Nome varchar(40),
sobreNome varchar(40),
TelefoneFixo varchar(18),
TelefoneCelular varchar(18),
Rua varchar(50),
Bairro varchar(50),
Número char(10),
Cep varchar(19),
Cidade varchar(40));



insert Clientes values 
(null, 'Victor Gabriel','Alves dos Santos','11-4487-0987','11-93086-0352','Serra Do Mar','Paineira',333,'085-810-10','Itaquaquecetuba' ),
(null, 'Mariana Maria','dos Santos','81-3398-01421','81-97645-4312','Rua da Pedras','Jardins',1024,'087-914-22','Suzano'),
(null, 'Marcos','Da Silva','11-4476-9882','11-93451-5312','Travessa Umburanas','Bongi',12,'50751439','São Paulo'),
(null, 'Lucas','Gonsalves Gomes','11-97654-9876','11-95546-9854','Rua Sargento Luiz Antônio Prado Zago','Área Industrial Senhor Luiz Carlos Bernardes',412,'16506-504','Guarulhos'),
(null, 'Yasmin Souza','Da Silva','11-4453-0864','11-98765-1183','Rua Tupis',' Jardim Igaçaba',562,'13845-386','Mogi Das Cruzes');



alter table Clientes modify column nome varchar(55);

select * from Clientes;
select * from Pet;

 
select * from Pet 	
where tipo = 'Cachorro';

select  Pet.nome,Pet.dtNascimento from
Pet; 

 
 select * from Pet
  where nome like 'M%';
  
select * from CLientes
where sobreNome = 'Da Silva';

update Clientes set TelefoneCelular = '11-98876-8765'
where IdClientes = 1;



-- JUNTANTO AS TABELAS

select * from Pet
join Clientes on fkClientes = IdClientes;



select * from Pet
join Clientes on fkClientes 
where fkClientes = 1;


delete from Pet 
where idPet = 101;

select * from Pet;

drop table Pet;
drop table Clientes;









  