create table clientes 
(idclientes int primary key auto_increment, empresa varchar(40),
cnpj char(20), cep char(8), numero char(8), telefone char(10), celular varchar(20), 
email varchar(30), usuário varchar(20), senha varchar(20));

insert into clientes values 
(null,'Sadia S.A', 01838723000127, 88301-600, 475, 1121131651,'8007023311', 'dilson.borba@sadia.com.br', 'Sadia01', 'sadia453'),
(null,'Seara Alimentos LTDA', 02914460011276, 54876-897, 475, 11-2113-1651,'11 4950-8096', 'Searaalimentos@gmail.com', 'Seara01', 'seara726'),
(null,'Perdigão Alimentos LTDA', 49654460011454, 34453-456, 312, 35-3524-9632,'11 4002-8922', 'perdigaoAL@gmail.com', 'perdigao65', 'perdigao625'),
(null,'Friboi S.A', 76434460011629, 34865-345, 6342, 11-4098-1651,'11 4950-8096', 'friboisa@gmail.com', 'frioboi987', 'friboi147'),
(null,'Marba LTDA', 75654460011276, 56784-300, 6456, 11-5498-1651,'11 6578-7532', 'Marbaltda@hotmmail.com', 'marba02', 'marba2345'),
(null,'Jbs Alimentos LTDA', 02916265000160, 05275-000, 26, 11-3144-4000,'11 4167-2355', '@jbssa.com', 'jbs143', 'jbs452');

select * from clientes ;




