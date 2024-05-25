CADEGORIA(codigo int NOT null PRIMARY KEY, nome varchar(50) NOT null);
PRODUTOS(codigo int NOT null PRIMARY KEY, descricao varchar(70) NOT null, data_cadastro date, valor_unitario float NOT null, cod_categoria int NOT null references CADEGORIA(codigo));
FORNECEDORES(codigo int NOT null PRIMARY KEY, nome varchar(50) NOT null);
PEDE(quantidade int NOT null PRIMARY KEY, valor_unitario float NOT null, data date NOT null, cod_fornecedor int NOT null references FORNECEDORES(codigo), cod_produto int NOT null references PRODUTOS(codigo));

CREATE TABLE Categoria
(
          codigo int NOT null,
          nome varchar(50) NOT null,

          PRIMARY KEY (codigo)
)

CREATE TABLE Produtos
(
          codigo int NOT null,
          descricao varchar(70) NOT null,
          data_cadastro date,
          valor_unitario float NOT null,
          cod_categoria int NOT null,

          PRIMARY KEY(codigo),
          CONSTRAINT Produto_pertence_Categoria
          FOREIGN KEY (cod_categoria) references Categoria (codigo)
)

CREATE TABLE Fornecedores
(
          codigo int NOT null,
          nome varchar(50) NOT null
)

CREATE TABLE Pede
(
          quantidade int NOT null,
          valor_unitario float NOT null,
          data date NOT null,
          cod_fornecedor int NOT null,
          cod_produto int NOT null,

          PRIMARY KEY (quantidade),
          CONSTRAINT Fornecedor_pede_Produto
          FOREIGN KEY (cod_fornecedor) references Fornecedores (codigo),
          CONSTRAINT Produto_pede_Fornecedor
          FOREIGN KEY (cod_produto) references Produtos (codigo)
)

-- Por algum motivo quando fui subir no SQL lite deu o mesmo erro que em aula

INSERT INTO Categoria (codigo, nome) VALUES (1, Acougue);
INSERT INTO Categoria (codigo, nome) VALUES (2, Limpeza);
INSERT INTO Categoria (codigo, nome) VALUES (3, Higiene);

INSERT INTO Produtos (codigo, descricao, data_cadastro, valor_unitario, cod_categoria) VALUES (1, Patinho, 25/05/2024, 35.5, 1);
INSERT INTO Produtos (codigo, descricao, data_cadastro, valor_unitario, cod_categoria) VALUES (2, Desinfetante, null, 5.0, 2);
INSERT INTO Produtos (codigo, descricao, data_cadastro, valor_unitario, cod_categoria) VALUES (3, Bife, 11/04/2022, 35.9, 1);

INSERT INTO Fornecedores (codigo, nome) VALUES (1, Limpol);
INSERT INTO Fornecedores (codigo, nome) VALUES (2, Fazenda BuscaPe);
INSERT INTO Fornecedores (codigo, nome) VALUES (3, Colgate);

INSERT INTO Pede (quantidade, valor_unitario, data, cod_fornecedor, cod_produto) VALUES (10, 50.5, 20/04/2024, 2, 3);
INSERT INTO Pede (quantidade, valor_unitario, data, cod_fornecedor, cod_produto) VALUES (50, 25.2, 14/05/2024, 2, 1);
INSERT INTO Pede (quantidade, valor_unitario, data, cod_fornecedor, cod_produto) VALUES (2, 5.0, 11/04/2024, 1, 2);
