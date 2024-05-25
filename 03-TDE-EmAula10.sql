
PROFESSOR(id int NOT NULL PRIMARY KEY, nome varchar(30) NOT NULL, especializacao varchar(20), idade int);
DISCIPLINA(id_disc int NOT NULL PRIMARY KEY, disciplina varchar(20), carga_horaria int, prof_id int NOT NULL references PROFESSOR(id));
SOFTWARE(id int NOT NULL PRIMARY KEY, nome varchar(30) NOT NULL, tipo varchar(30));
UTILIZA(id int NOT NULL, cod_disc int NOT NULL references DISCIPLINA(id_disc), cod_soft int NOT NULL references SOFTWARE(id));

CREATE TABLE PROFESSOR
(
          id int NOT NULL,
          nome varchar(30) NOT NULL, 
          especializacao varchar(20), 
          idade int
          PRIMARY KEY (id)
);

CREATE TABLE DISCIPLINA
(
          id_disc int NOT NULL,
          disciplina varchar(20),
          carga_horaria int,
          prof_id int NOT NULL,
          CONSTRAINT professor_leciona_disciplina
          PRIMARY KEY (id_disc),
          FOREIGN KEY (prof_id) references PROFESSOR(id)
);

CREATE TABLE SOFTWARE
(
          id int NOT NULL, 
          nome varchar(30) NOT NULL,
          tipo varchar(30),
          PRIMARY KEY (id)
);

CREATE TABLE UTILIZA
(
          id int NOT NULL, 
          cod_disc int NOT NULL, 
          cod_soft int NOT NULL,
          CONSTRAINT disciplina_utiliza_software
          FOREIGN KEY (cod_disc) references DISCIPLINA(id_disc),
          CONSTRAINT software_utiliza_disciplina
          FOREIGN KEY (cod_soft) references SOFTWARE(id)
);