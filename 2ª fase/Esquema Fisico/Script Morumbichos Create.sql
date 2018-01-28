/*drop database Morumbichos*/
create database Morumbichos;
go
use Morumbichos;
go
create schema Veterinaria;
go

create table Veterinaria.Proprietario(
	id int identity(1,1),
	nome varchar(50)not null,
	email varchar(50),
	cpf char(11)not null,
	observacao varchar(300),
	dataNasc date,
	logradouro varchar(100)not null,
	bairro varchar (50)not null,
	cidade varchar (50)not null,
	estado varchar(30)not null,
	cep char(8),
	constraint PkProprietario primary key (id),
	constraint UqCpfProprietario unique (cpf)
);
create table Veterinaria.Funcionario(
	id int identity(1,1),
	apelido varchar(30),
	cpf char(11) not null,
	nome varchar(50)not null,
	dataNasc date,
	cargo varchar(50),
	situacao varchar(30),
	constraint PkFuncionario primary key (id),
	constraint UqCpfFuncionario unique (cpf)
);

create table Veterinaria.Animal(
	id int identity(1,1),
	nome varchar(50)not null,
	peso float,
	sexo char(9) not null,
	cor varchar(30)not null,
	numMicrochip char(15),
	especie varchar(50)not null,
	observacao varchar(300),
	dataNasc date,
	raca varchar(50)not null,
	idProprietario int,
	constraint PkAnimal primary key (id),
	constraint UqMicrochip unique (numMicrochip),
	constraint FkAnimal foreign key(idProprietario) references Veterinaria.Proprietario(id)
);
create table Veterinaria.Hotel(
	id int identity,
	telefone varchar(18) not null,
	dataFimHospedagem date not null,
	dataInicioHospedagem date not null,
	observacao varchar(300),
	valorDiaria decimal(5,2) not null,
	idFuncionario int,
	idAnimal int,
	constraint PkHotel primary key (id),
	constraint FkHotelIdFuncionario foreign key(idFuncionario) references Veterinaria.Funcionario(id),
	constraint FkHotelIdAnimal foreign key(idAnimal) references Veterinaria.Animal(id)
);
create table Veterinaria.Diagnostico(
	id int identity,
	dataDiagnostico date not null,
	prescricao varchar(300),
	diagnostico varchar(300) not null,
	idAnimal int,
	constraint PkDiagnostico primary key (id),
	constraint FkDiagnosticoIdAnimal foreign key(idAnimal) references Veterinaria.Animal(id)
);
create table Veterinaria.HistoricoDeDoencas(
	id int identity,
	nomeDoenca varchar(50) not null,
	descricao varchar(300),
	"data" date not null,
	idAnimal int,
	constraint PkHistorico primary key (id),
	constraint FkHistoricoIdAnimal foreign key(idAnimal) references Veterinaria.Animal(id)
);
create table Veterinaria.Procedimento(
	id int identity,
	valor decimal(7,2),
	descricao varchar(300),
	nomeProcedimento varchar(50),
	"data" date,
	idAnimal int,
	constraint PkProcedimento primary key (id),
	constraint FkProcedimentoIdAnimal foreign key(idAnimal) references Veterinaria.Animal(id)
);
create table Veterinaria.Agenda(
	id int identity,
	nomeTarefa varchar(50) not null,
	nomeAnimal varchar(50) not null,
	responsavel varchar(50) not null,
	dataHora datetime,
	motivo varchar(100),
	destinatario varchar(100),
	endereco varchar(100),
	idFuncionario int,
	constraint PkAgenda primary key (id),
	constraint FkAgendaIdFuncionario foreign key(idFuncionario) references Veterinaria.Funcionario(id)
);
create table Veterinaria.ResponsavelProcedimento(
	idProcedimento int,
	idFuncionario int,
	constraint PkResponsavel primary key (idProcedimento,idFuncionario),
	constraint FkResponsavelIdProcedimento foreign key(idProcedimento) references Veterinaria.Procedimento(id),
	constraint FkResponsavelIdFuncionario foreign key(idFuncionario) references Veterinaria.Funcionario(id)
);
create table Veterinaria.TelefoneProprietario(
	telefone varchar(18),
	idProprietario int,
	constraint PkTelefone primary key (telefone,idProprietario),
	constraint FkTelefoneIdProprietario foreign key(idProprietario) references Veterinaria.Proprietario(id)
);