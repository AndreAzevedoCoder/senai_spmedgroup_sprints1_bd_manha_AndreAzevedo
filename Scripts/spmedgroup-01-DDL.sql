CREATE DATABASE SPMedGroup_Manha

USE SPMedGroup_Manha

CREATE TABLE filial(
	idFilial INT PRIMARY KEY IDENTITY,
	endereco VARCHAR(255) NOT NULL,
	nome VARCHAR(255) NOT NULL,
	CNPJ VARCHAR(20) NOT NULL,
);

CREATE TABLE tipoUsuario(
	idTipoUsuario INT PRIMARY KEY IDENTITY,
	titulo VARCHAR(255) NOT NULL,
);

CREATE TABLE usuario(
	idUsuario INT PRIMARY KEY IDENTITY,
	idTipoUsuario INT FOREIGN KEY REFERENCES tipoUsuario (idTipoUsuario),
	nome VARCHAR(255),
	dataDeNascimento DATE,
	email VARCHAR(255),
	telefone VARCHAR(15),
	RG VARCHAR(11),
	CPF VARCHAR(15),
	endereco VARCHAR(255),
	senha VARCHAR(255),
)

CREATE TABLE especialidade (
	idEspecialidade INT PRIMARY KEY IDENTITY,
	tituloEspecialidade VARCHAR(255),
);

CREATE TABLE medicos (
	idMedico INT PRIMARY KEY IDENTITY,
	idEspecialidade INT FOREIGN KEY	REFERENCES especialidade (idEspecialidade),
	idUsuario INT FOREIGN KEY REFERENCES usuario (idUsuario),
	CRM VARCHAR(255),
);

CREATE TABLE recepcionistas (
	idRecepcionista INT PRIMARY KEY IDENTITY,
	idUsuario INT FOREIGN KEY REFERENCES usuario (idUsuario)
);

CREATE TABLE pacientes(
	idPacientes INT PRIMARY KEY IDENTITY
);

CREATE TABLE consulta (
	idConsulta INT PRIMARY KEY IDENTITY,
	idFilial INT FOREIGN KEY REFERENCES filial (idFilial),
	idMedicos INT FOREIGN KEY REFERENCES medicos (idMedico),
	idRecepcionista INT FOREIGN KEY REFERENCES recepcionistas (idRecepcionista),
	idPacientes INT FOREIGN KEY REFERENCES pacientes (idPacientes),
	situacao VARCHAR(255),
	dataDaConsulta DATE,
);