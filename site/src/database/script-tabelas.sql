CREATE DATABASE arthamis;
USE arthamis;


-- Tabela da parte de cadastro
CREATE TABLE usuario (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
celular CHAR(11),
email VARCHAR(45), constraint chkEmail CHECK (email LIKE '%@%'),
senha VARCHAR(50), 
fkEstilo int,
foreign key (fkEstilo) references estilo(idEstilo)
);

SELECT * FROM usuario;



-- Tabela equivalente a aviso
CREATE TABLE comentario (
id INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(100),
descricao VARCHAR(250),
fk_usuario INT,
FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
);

SELECT * FROM comentario;



-- Tabela de estilo
CREATE TABLE estilo (
idEstilo int primary key auto_increment,
nome varchar(45)
);


INSERT INTO estilo VALUES
(null, 'Abstrato'),
(null, 'Pós-impressionista'),
(null, 'Renascentista'),
(null, 'Outros');


SELECT * FROM estilo;

SELECT COUNT(fkEstilo) FROM usuario;



-- Tabelas das avaliações dos museus
CREATE TABLE avaliacao (
id INT PRIMARY KEY AUTO_INCREMENT,
nomeMuseu VARCHAR(45), constraint chkNome 
CHECK (nomeMuseu in ('masp', 'pinacoteca', 'museu da imagem e do som', 'catavento', 'museu do ipiranga', 'museu da imigração')),
nota INT,
fk_usuario INT,
FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
);


SELECT * FROM avaliacao;

-- Exemplo
SELECT count(*) quantidade from avaliacao where nomemuseu = 'masp';


