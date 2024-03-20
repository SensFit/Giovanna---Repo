create database sensfit;
use sensfit;

create table AcademiaCadastro(
idAcademia int primary key auto_increment,
nome varchar(50),
telefone char(9),
cep char(9));

insert into AcademiaCadastro(nome,telefone,cep)
values('BlueFit','9999-2324','00028-999'),
('SmartFit','1213-0989','98980-000'),
('Leven','8877-9044','87234-090'),
('BodyMind','1111-0000','44567-221');

select*from AcademiaCadastro;


create table Equipamento(
idEquipamento int primary key auto_increment,
academia int,
foreign key (academia) references AcademiaCadastro(idAcademia),
nome varchar(40),
vidaUtil varchar(30));

insert into Equipamento(academia,nome,vidaUtil)
values(1,'esteira','10'),
(1,'bicicleta','8'),
(1,'leg press','10'),
(1,'supino','12'),
(1,'crossover','8'),
(2,'esteira','5'),
(2,'bicicleta','11'),
(2,'leg press','13'),
(2,'supino','8'),
(2,'crossover','10'),
(3,'esteira','9'),
(3,'bicicleta','8'),
(3,'leg press','7'),
(3,'supino','6'),
(3,'crossover','8'),
(4,'esteira','7'),
(4,'bicicleta','12'),
(4,'leg press','15'),
(4,'supino','11'),
(4,'crossover','9');

select*from Equipamento;

create table sensor(
idSensor int primary key auto_increment,
equipamento int,
foreign key (equipamento) references Equipamento(idEquipamento),
vezesUsado int,
tempoUsado int);

insert into sensor(equipamento,vezesUsado,TempoUsado)
values(1,5,6),
(2,3,2),
(3,7,9),
(4,5,3),
(5,6,6),
(6,5,6),
(7,8,9),
(8,7,5),
(9,3,2),
(10,6,5),
(11,8,6),
(12,5,6),
(13,3,2),
(14,7,9),
(15,5,3),
(16,6,6),
(17,5,6),
(18,8,9),
(19,7,5),
(20,3,2);

select*from sensor;




