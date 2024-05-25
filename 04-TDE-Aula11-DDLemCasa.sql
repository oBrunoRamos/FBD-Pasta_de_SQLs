Aluno(id int NOT NULL PK, nome varchar(30) NOT NULL);
Departamento (id int NOT NULL PK, nome varchar (30));
Curso(id int NOT NULL PK, nome varchar(30) NOT NULL, id_depto int referencia departamento (id));
Professor(id int NOT NULL PK, nome varchar(30) NOT NULL);
Disciplina(id int NOT NULL PK, nome varchar(30) NOT NULL, id_prof int referencia professor(id));
Matricula(Cod_Mat int NOT NULL PK, id_aluno int NOT NULL, data_matr date, id_disciplina referencia disciplina(id), id_aluno referencia aluno(id));

CREATE TABLE Aluno
(
          id int NOT NULL,
          nome varchar(30) NOT NULL,
          PRIMARY KEY (id)
);
CREATE TABLE Departamento
(
          id int NOT NULL,
          nome varchar (30),
          PRIMARY KEY (id)
);
CREATE TABLE Curso
(
          id int NOT NULL,
          nome varchar(30) NOT NULL, 
          id_depto int,
          CONSTRAINT Departamento_possui_Curso
          PRIMARY KEY (id),
          FOREIGN KEY (id_depto) references Departamento(id)
);
CREATE TABLE Professor
(
          id int NOT NULL,
          nome varchar(30) NOT NULL,
          PRIMARY KEY (id)
);
CREATE TABLE Disciplina
(
          id int NOT NULL , 
          nome varchar(30) NOT NULL, 
          id_prof int,
          CONSTRAINT Professor_leciona_Disciplina
          PRIMARY KEY (id),
          FOREIGN KEY (id_prof) references Professor(id)
);
create table matricula(
    cod_matricula int not null,
    id_aluno int not null,
    id_disciplina int not null,
    data_matr date,
    primary key(cod_matricula),
    constraint aluno_matricula_disciplina
    foreign key (id_disciplina) references disciplina(id)
    constraint disciplina_matriculado_aluno
    foreign key (id_aluno) references aluno(id)
)

-- Todos os REFERENCES estavam como referencia (isso foi errado? Ou foi só para entendermos?)
-- Não deixei os PRIMARY KEY  e os FOREIGN KEY inline por organização
-- Criei os CONSTRAINT