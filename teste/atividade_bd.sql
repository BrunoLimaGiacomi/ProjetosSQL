/*Bruno Lima, Julio rissi*/

create database clinica;

use clinica;

create table if not exists Paciente(
cod_pac int auto_increment not null,
nome_pac varchar(35) not null,
rg_pac char(9),
peso_pac decimal (5,2),
tipo_sang_pac varchar(3),
data_nasc_pac date not null,
cpf_pac char(11) not null unique,
endereco varchar(35) not null,
cep_pac char(8) not null,
bairro_pac varchar(10),
cidade_pac varchar(35),
primary key (cod_pac));

/*1*/
alter table Paciente 
change endereco end_pac varchar (35);

/*2*/
alter table Paciente modify bairro_pac varchar(35);

/*3*/
alter table Paciente add altura_pac int not null;

/*4*/
insert into Paciente (nome_pac, rg_pac, peso_pac, tipo_sang_pac, data_nasc_pac, 
cpf_pac, end_pac, cep_pac, bairro_pac, cidade_pac, altura_pac) values
("caroline", "123456789",48.70,"AB", "2005-06-07", "12345678912", "rua dos bobos, numero 0","12345678","fincos", "sbc", 158),
("cristiana", "123456789", 55.20,"A", "2002-12-30","12345678913", "aladino, 142","12345678", "boa vista", "abc", 170),
("joão carlos", "123456789", 68.20,"A", "2001-06-30","12345678914", "camponeses, 130","12345678", "iraja", "abc", 180),
("felipe santos", "123456789", 80.20,"A", "2004-05-30","12345678915", "rua 6, 130","12345678", "paredes", "abc", 145),
("fabiola dante", "123456789", 57.20,"A", "2016-03-30","12345678916", "rio acima, 130","12345678", "velha", "abc", 163),
("paola carocela", "123456789", 67.20,"O", "2013-08-14","12345678917", "lagoa azul, 1334","12345678", "luzes", "abc", 167); 

/*5*/
update Paciente set peso_pac = "70.00" where cod_pac=3;

/*6*/
delete from Paciente where cod_pac=4;
