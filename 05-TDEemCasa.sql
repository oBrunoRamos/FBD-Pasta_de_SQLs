-- Faça os scripts de criação da estrutura das tabelas, conforme modelo lógico do Slide 23:



-- Aluno(id int not null PK, nome varchar(30) not null);
CREATE TABLE Aluno
(
          id int NOT NULL,
          nome varchar(30) NOT NULL,

          PRIMARY KEY(id)
);


-- Departamento (id int not null PK, nome varchar (30));
CREATE TABLE Departamento
(
          id int NOT NULL,
          nome varchar(30),

          PRIMARY KEY(id)
)

-- Professor(id int not null PK, nome varchar(30) notnull);
CREATE TABLE Professor
(
          id int NOT NULL,
          nome varchar(30) NOT NULL,

          PRIMARY KEY(id)
);

-- Curso(id int not null PK, nome varchar(30) notnull, id_depto int referencia departamento (id));
CREATE TABLE Curso
(
          id int NOT NULL,
          nome varchar(30)NOT NULL,
          id_depto int,
          CONSTRAINT Departamento_possui_Curso
          PRIMARY KEY(id),
          FOREIGN KEY (id_depto) references Departamento(id)
);

-- Disciplina(id int not null PK, nome varchar(30) not null, id_prof int referencia professor(id));
CREATE TABLE Disciplina
(
          id int NOT NULL,
          nome varchar(30)   NOT NULL,
          id_prof int,
          CONSTRAINT Professor_leciona_Disciplina
          PRIMARY KEY(id),
          FOREIGN KEY(id_prof) references Professor(id)
);

-- Matricula(Cod_Mat int not null PK, id_aluno int not null, data_matr date, id_disciplina referencia disciplina(id), id_aluno referencia aluno(id));
CREATE TABLE Matricula
(
          Cod_Mat int NOT NULL,
          id_aluno int NOT NULL,
          id_disciplina int NOT NULL,
          data_matr date,
          PRIMARY KEY (Cod_Mat),
          CONSTRAINT Aluno_matriculase_Disciplina
          FOREIGN KEY (id_disciplina) references disciplina(id),
          CONSTRAINT Disciplina_matriculado_aluno
          FOREIGN KEY (id_aluno) references aluno (id)
);