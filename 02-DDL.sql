------- Comentários

/*

comentário longo

*/

-------------------------------------------------------------------------------------------------------------------------

--------- Pradões de nomes

-- snake_case =  aformatação de snake_case com underline é mais utilizado em banco de dados


-- modelo lógico
clientes(cpf int NOT NULL pk, nome varchar(30), idade int, rg int NOT NULL);
enderecos(id int NOT NULL pk, rua varchar(50), numero int, cidade varchar(20), bairro varchar(20), uf char(2), cliente_cpf int references clientes(cpf));



CREATE TABLE clientes
(
          cpf int NOT NULL PRIMARY KEY,
          nome varchar(30) NOT NULL,
          idade int,
          rg int NOT NULL 
);

CREATE TABLE enderecos
(
          id int NOT NULL PRIMARY KEY,
          rua varchar(50) NOT NULL,
          numero int NOT NULL,
          cidade varchar(20) NOT NULL,
          bairro varchar(20),
          uf char(2) NOT NULL
          cliente_cpf int NOT NULL

          CONSTRAINT cliente_tem_endereco

          FOREIGN KEY (cliente_cpf) references clientes (cpf)
);