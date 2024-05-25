CADEGORIA(codigo int NOT null PRIMARY KEY, nome varchar(50) NOT null);
PRODUTOS(codigo int NOT null PRIMARY KEY, descricao varchar(70) NOT null, data_cadastro date, valor_unitario int NOT null, cod_categoria int NOT null references CADEGORIA(codigo));
FORNECEDORES(codigo int NOT null PRIMARY KEY, nome varchar(50) NOT null);
PEDE(quantidade int NOT null PRIMARY KEY, valor_unitario int NOT null, data date NOT null, cod_fornecedor int NOT null references FORNECEDORES(codigo), cod_produto int NOT null references PRODUTOS(codigo));

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
          valor_unitario int NOT null,
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
          valor_unitario int NOT null,
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