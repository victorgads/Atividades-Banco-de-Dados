use sprint2;

create table empregado (
idEmpregado int primary key auto_increment,
nome varchar(45),
salario decimal(10,2));

-- criando dependente TABELA DEPENDENTE NÃO PODE TER CHAVE PRIMARIA

create table Dependente (
idDependente int  auto_increment,
nome varchar(45),
parentesco varchar(45),
fkEmpregado int,
foreign key (fkEmpregado)
references empregado (idEmpregado),
primary key(idDependente, fkEmpregado)
);

desc Dependente;

-- inserindo empregado 

insert into empregado values 

(null, 'Vivian', 2.00),
(null, 'Victor', 2.00),
(null, 'Vinicius', 1.98),
(null, 'Pedro', 2.00);


-- inserindo dependente 

insert into Dependente values 

(1, 'Maria', 'Prima', 1),
(2, 'JOÃO', 'TIO', 2),
(3, 'Joana', 'avó', 1);



-- exibindo os empregados e seus dependentes 

select d.*
from empregado as e 
join Dependente as  d on e.idEmpregado = d.fkEmpregado
where e.idEmpregado = 1;


-- exibindo a quantidade de dependetes da vivian valores exibidos com daod

select count(*)
from empregado as e 
join Dependente as  d on e.idEmpregado = d.fkEmpregado
where e.idEmpregado = 1;

select concat(' Está cadastrado ', count(*) , ' dependentes ')
as frase from Dependente;

create table marca (
idMarca int primary key auto_increment,
nome varchar(45));


create table Produto 
(idProduto int primary key auto_increment,
nome varchar(45),
fkMarca int,
foreign key (fkMarca) references marca(idMarca));


insert into marca values 
(null, 'Microsoft'),
(null, 'Amazon'),
(null, 'Google');


insert into Produto values
(null, 'Vs Code', 1), 
(null, 'Opera', 2), 
(null, 'Gerdal', 3),
(null, 'Linux', 4),
(null, 'Linux', 5),
(null, 'Linux', 6),
(null, 'Linux', 7);


select * from marca m 
  right join Produto p on m.idMarca = fkMarca;
  

