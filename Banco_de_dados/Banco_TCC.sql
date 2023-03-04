drop database CUIDADORES;

create database CUIDADORES; 
use CUIDADORES;

create table Usuarios(
		ID int not null primary key auto_increment,
        TPO varchar(128),
        NOME varchar(255),
        DATA_DE_NASC date,
        CPF  varchar(128),
        CELULAR varchar(128),
        ENDERECO varchar(255),
        CEP  varchar(128),
        CIDADE varchar(128),
        EMAIL varchar(128),
        SENHA varchar(128) 
);

CREATE TABLE Cidades(
		ID int not null primary key auto_increment,
        NOME varchar(255),
        UF VARCHAR(2)
);

create table Cidades_Usuario(
	USUARIO int not null,
    CIDADE int not null,
    foreign key (Usuario) references Usuarios(ID),
    foreign key (Cidade) references Cidades(ID)
);
    
    
INSERT INTO Usuarios(NOME) Values ('Maiara'), ('Thiago'), ('Lourival');
INSERT INTO Cidades(NOME) values ('Barueri'), ('Santana de Parnaiba');
INSERT INTO Cidades(UF) values ('SP');

SELECT*FROM Usuarios;
SELECT*FROM Cidades;

INSERT INTO Cidades_Usuario(Usuario, Cidade) VALUES (2,1), (2,2), (1,2), (3,1);

SELECT*FROM Usuarios
INNER JOIN Cidades_Usuario 
ON Usuarios.ID = Cidades_Usuario.Usuario
INNER JOIN Cidades
ON Cidades.ID = Cidades_Usuario.cidade