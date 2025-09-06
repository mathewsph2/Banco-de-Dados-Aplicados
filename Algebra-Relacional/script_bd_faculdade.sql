create database faculdade;
use faculdade;
CREATE TABLE cursos (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    sigla CHAR(3),
    nome VARCHAR(50),
    ch DECIMAL(4)
);
CREATE TABLE alunos (
    matricula DECIMAL(3) PRIMARY KEY,
    nome VARCHAR(20),
    endereco VARCHAR(45),
    codcurso INT,
    CONSTRAINT fk_alunos_curso FOREIGN KEY (codcurso)
        REFERENCES cursos (codigo)
);
insert into cursos(sigla, nome, ch) values
('ADS','Análise e Desenvolvimento de Sistemas', 2200),
('DIR','Direito',4000),
('ADM','Administração',3000);

insert into alunos values
(123,'Miriã','Rua A',1),
(234,'Fulano','Rua B',1),
(345,'Beltrano','Rua C',2),
(456,'Ciclano','Rua D',3);

alter table alunos change nome nomealuno varchar(20);
alter table cursos change nome nomecurso varchar(50);	