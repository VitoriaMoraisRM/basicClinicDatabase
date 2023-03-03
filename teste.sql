create database Clinica;
use Clinica;

create table Cargos(
idCargo integer not null auto_increment,
primary key (idCargo),
Cargo varchar(40) not null
);

create table Funcionarios(
idFuncionario integer not null auto_increment,
primary key (idFuncionario),
Nome varchar(40) not null,
CPF numeric(11) not null,
idCargo integer,
foreign key (idCargo) references Cargos (idCargo)
);


create table Pets(
idPet integer not null auto_increment,
primary key (idPet),
Especie varchar(40) not null,
Raça varchar(40),
DataNascimento date,
Porte varchar(40)
);


create table Clientes(
idCliente integer not null auto_increment,
primary key (idCliente),
Nome varchar(40) not null,
CPF numeric(11) not null,
DataNascimento date,
Telefone numeric(11),
idPet integer,
foreign key (idPet) references Pets (idPet)
);


create table Atendimentos(
idAtendimento integer not null auto_increment,
primary key (idAtendimento),
idFuncionario int,
idCliente int,
DataAtendimento date,
HoraAtendimento time,
foreign key (idFuncionario) references Funcionarios (idFuncionario),
foreign key (idCliente) references Clientes (idCliente)
);

create table Laudos(
idLaudo integer auto_increment not null,
primary key (idLaudo),
idAtendimento int,
DataLaudo date,
foreign key (idAtendimento) references Atendimentos (idAtendimento)
);

insert into Cargos (Cargo) values('Atendente');
insert into Cargos (Cargo) values('Veterinario');

insert into Funcionarios(Nome, CPF, idCargo) values('Teresina Rosa', '24320892860', 1);
insert into Funcionarios(Nome, CPF, idCargo) values('Renan Bryan', '31050092481', 2);
insert into Funcionarios(Nome, CPF, idCargo) values('Luana Ramos', '70503745120', 2);
insert into Funcionarios(Nome, CPF, idCargo) values('João Edson', '11266642005', 1);
insert into Funcionarios(Nome, CPF, idCargo) values('Ana Marli', '93587909709', 2);

insert into Pets (Especie, Raça, DataNascimento, Porte) values('Cachorro', 'Yorkshire', '2017-02-27', 'Pequeno');
insert into Pets (Especie, Raça, DataNascimento, Porte) values('Gato', 'Vira-lata', null, 'Pequeno');
insert into Pets (Especie, Raça, DataNascimento, Porte) values('Ave', 'Periquito australiano', '2017-09-30', 'Pequeno');
insert into Pets (Especie, Raça, DataNascimento, Porte) values('Cachorro', 'Golden Retriever', '2019-06-03', 'Grande');
insert into Pets (Especie, Raça, DataNascimento, Porte) values('Cachorro', 'Doberman', '2018-05-16', 'Grande');

insert into Clientes (Nome, CPF, DataNascimento, Telefone,idPet) values('Elza Emyle', '53909591833', '1998-05-11', '42993334877', 1);
insert into Clientes (Nome, CPF, DataNascimento, Telefone, idPet) values('Vitor Enzo', '59371347538', '2002-03-22', '92999355965', 2);
insert into Clientes (Nome, CPF, DataNascimento, Telefone, idPet) values('Sophia Isabela', '23014099708', '2003-04-02','41997497250', 3);
insert into Clientes (Nome, CPF, DataNascimento, Telefone, idPet) values('Yago Breno','89477377040', '2001-03-25', '87993658174', 4);
insert into Clientes (Nome, CPF, DataNascimento, Telefone, idPet) values('Isabel Eloá', '87422386843', '1995-02-19','84989303776', 5);

insert into Atendimentos(idFuncionario, idCliente, DataAtendimento, HoraAtendimento) values(2, 1,'2022-11-16','08:00:00');
insert into Atendimentos(idFuncionario, idCliente, DataAtendimento, HoraAtendimento) values(3, 1,'2022-11-16','09:00:00');
insert into Atendimentos(idFuncionario, idCliente, DataAtendimento, HoraAtendimento) values(5, 1,'2022-11-16','14:00:00');
insert into Atendimentos(idFuncionario, idCliente, DataAtendimento, HoraAtendimento) values(3, 1, '2022-11-16','14:30:00');
insert into Atendimentos(idFuncionario, idCliente, DataAtendimento, HoraAtendimento) values(2, 1, '2022-11-17','15:00:00');

insert into Laudos(idAtendimento) value (1);
insert into Laudos(idAtendimento) value (2);
insert into Laudos(idAtendimento) value (3);
insert into Laudos(idAtendimento) value (4);
