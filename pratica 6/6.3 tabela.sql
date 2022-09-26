	create database  PraticaFuncionario;
    use  PraticaFuncionario;
    
       
    create table Setor 
    (IdSetor int primary key auto_increment,
    Nome varchar(40),
    NumeroAndar char(8));
    
    insert into Setor values 
    (null, 'Administrativo',1),
    (null, 'Recursos Humanos',2),
    (null, 'Relações Internacionais',3),
    (null, 'Produção',4);
    

    
    create table Funcionarios
    (IdFuncionario int primary key auto_increment,
    Nome varchar(40),
    SobreNome varchar(40),
    Telefone varchar(45),
    Salario char(10),
    fkSetor int,
    foreign key (fkSetor) references Setor(idSetor),
	CONSTRAINT ckSalario CHECK (Salario > 0)
    );
    
    insert into Funcionarios values 
    (null, 'Victor Gabriel', 'Alves dos Santos', '11-4487-0987', 2.000 ,null),
    (null, 'Mariana Maria', 'dos Santos', '81-3398-01421', 1.500 ,null),
    (null, 'Marcos', 'Da Silva', '11-4476-9882', 1.800 ,null),
    (null, 'Yasmin Souza', 'Da Silva', '11-4453-0864', 1.800 ,null),
    (null, 'Yahso', 'Arantathalion', '11-97654-9876', 3.000 ,null),
    (null, 'Enrico Lopes', 'Coutinho', '96-3697-8471', 2.000 ,null),
    (null, 'Kavan Albuquerque', 'Siqueira', '84-2103-4935', 4.000 ,null),
    (null, 'Valmir Mesquita', 'Trindade', '75-3859-4868', 2.000 ,null),
    (null, 'Gleyce da Silva', 'Diniz', '24-2399-2474', 2.000 ,null),
    (null, 'Marcele Jales', 'Guimarães', '44-2132-8782', 5.000 ,null),
    (null, 'Marcele', 'Amorim Paulo', '21-3491-2652', 5.000 ,null);
    
 
  
  
    create table Acompanhante 
    (IdAcomp int primary key auto_increment,
    Nome varchar(45),
    Relacao varchar(40),
    dtNascimento date,
    fkFuncionarios int,
    foreign key (fkFuncionarios) references Funcionarios(IdFuncionario)
    );
    
    insert into Acompanhante values
    (null, 'Marilia Maria', 'Irmã','2005-05-11',null),
    (null, 'Ana Clara', 'Irmã','2001-12-10',null),
    (null, 'Marcelo Braga', 'Amigos','1987-11-12',null),
    (null, 'Juliana Vieira', 'Prima','2001-11-09',null),
    (null, 'Giovanna Pazzeto', 'Amigos','2003-08-10',null);
    
 
 select * from Funcionarios;
 select * from Acompanhante;
 select * from Setor;
 

 
update Funcionarios set fkSetor = 2
where IdFuncionario = 1; 

update Funcionarios set fkSetor = 1
where IdFuncionario = 2; 


update Funcionarios set fkSetor = 2
where IdFuncionario = 3; 

update Funcionarios set fkSetor = 3
where IdFuncionario = 4; 

update Funcionarios set fkSetor = 2
where IdFuncionario = 5; 

update Funcionarios set fkSetor = 4
where IdFuncionario = 6; 

update Funcionarios set fkSetor = 4
where IdFuncionario = 7; 

update Funcionarios set fkSetor = 2
where IdFuncionario = 8; 

update Funcionarios set fkSetor = 3
where IdFuncionario = 9; 

update Funcionarios set fkSetor = 1
where IdFuncionario = 10; 

update Funcionarios set fkSetor = 3
where IdFuncionario = 11; 



select * from Setor
join Funcionarios on fkSetor = IdFuncionario;
 
 
 select * from Setor
join Funcionarios on fkSetor
order by Setor.nome asc;


select * from Setor
join Funcionarios on fkSetor
where fkSetor = 1
order by Setor.nome;


-------------------------------------

update Acompanhante set fkFuncionarios = 1
where IdAcomp = 1;

update Acompanhante set fkFuncionarios = 2
where IdAcomp = 2;

update Acompanhante set fkFuncionarios = 3
where IdAcomp = 3;

update Acompanhante set fkFuncionarios = 4
where IdAcomp = 4;

update Acompanhante set fkFuncionarios = 5
where IdAcomp = 5;


select * from Acompanhante;

select * from Funcionarios 
join Acompanhante on 
fkFuncionarios = IdFuncionario;



select * from Funcionarios 
join Acompanhante on 
fkFuncionarios = IdFuncionario
where IdFuncionario = 1;

 
-- TESTAR REGRA DA CONSTRAIN 
  
update Funcionarios set salario = 0
 where IdFuncionario = 4;
  
 
 
drop table Acompanhante;
drop table funcionarios;
drop table Setor;

  
    
    
    
    