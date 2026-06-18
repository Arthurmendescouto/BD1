
CREATE DATABASE IF NOT EXISTS paxeterna
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE paxeterna;

CREATE TABLE Cliente (
    cpf          CHAR(11)     NOT NULL,
    nome         VARCHAR(100) NOT NULL,
    rg           VARCHAR(20)  NOT NULL,
    data_nascimento DATE       NOT NULL,
    logradouro   VARCHAR(100),
    num_endereco VARCHAR(10),
    bairro       VARCHAR(100),
    cep          CHAR(8),
    cidade       VARCHAR(100),
    uf           CHAR(2),
    PRIMARY KEY (cpf)
);

CREATE TABLE Telefone (
    telefone CHAR(11) NOT NULL,
    cpf      CHAR(11) NOT NULL,
    PRIMARY KEY (telefone, cpf),
    CONSTRAINT FK_Telefone_Cliente
        FOREIGN KEY (cpf) REFERENCES Cliente (cpf)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Contrato (
    id_contrato    INT UNSIGNED  NOT NULL AUTO_INCREMENT,
    fk_Cliente_cpf CHAR(11)      NOT NULL,
    data_inicio    DATE          NOT NULL,
    data_termino   DATE          NOT NULL,
    valor_contrato DECIMAL(6, 2) UNSIGNED NOT NULL,
    status         ENUM('ativo', 'cancelado') NOT NULL,
    data_obito     DATE,
    PRIMARY KEY (id_contrato),
    CONSTRAINT FK_Contrato_Cliente
        FOREIGN KEY (fk_Cliente_cpf) REFERENCES Cliente (cpf)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Dependentes (
    cpf                      CHAR(11)     NOT NULL,
    fk_Contrato_id_contrato  INT UNSIGNED NOT NULL,
    nome_dependente          VARCHAR(100) NOT NULL,
    data_nascimento          DATE         NOT NULL,
    parentesco               VARCHAR(50),
    valor_adicional_dependente DECIMAL(6, 2) UNSIGNED NOT NULL,
    data_inicio              DATE,
    data_obito               DATE,
    PRIMARY KEY (cpf, fk_Contrato_id_contrato),
    CONSTRAINT FK_Dependentes_Contrato
        FOREIGN KEY (fk_Contrato_id_contrato) REFERENCES Contrato (id_contrato)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

CREATE TABLE Recurso (
    id_recurso    INT UNSIGNED  NOT NULL AUTO_INCREMENT,
    nome          VARCHAR(100)  NOT NULL,
    valor         DECIMAL(7, 2) UNSIGNED NOT NULL,
    tipo          ENUM('servico', 'produto') NOT NULL,
    quantidade    INT UNSIGNED  NOT NULL DEFAULT 0,
    classificacao ENUM('caixao', 'flores', 'translado', 'mortalha',
                       'velorio', 'tanatopraxia') NOT NULL,
    unidade_medida ENUM('km', 'm', 'unidade') NOT NULL,
    PRIMARY KEY (id_recurso)
);

CREATE TABLE Contrato_Recurso (
    fk_Recurso_id_recurso   INT UNSIGNED  NOT NULL,
    fk_Contrato_id_contrato INT UNSIGNED  NOT NULL,
    quantidade              INT UNSIGNED  NOT NULL,
    valor                   DECIMAL(7, 2) UNSIGNED NOT NULL,
    PRIMARY KEY (fk_Recurso_id_recurso, fk_Contrato_id_contrato),
    CONSTRAINT FK_ContRec_Recurso
        FOREIGN KEY (fk_Recurso_id_recurso) REFERENCES Recurso (id_recurso)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    CONSTRAINT FK_ContRec_Contrato
        FOREIGN KEY (fk_Contrato_id_contrato) REFERENCES Contrato (id_contrato)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

CREATE TABLE Pagamento_contrato (
    id_pagamento            INT UNSIGNED  NOT NULL AUTO_INCREMENT,
    fk_Contrato_id_contrato INT UNSIGNED  NOT NULL,
    valor                   DECIMAL(7, 2) UNSIGNED NOT NULL,
    data_pagamento          DATE,
    forma_pagamento         ENUM('dinheiro', 'cartao de credito',
                                 'cartao de debito', 'pix', 'boleto'),
    status                  ENUM('pago', 'cancelado', 'pendente') NOT NULL,
    PRIMARY KEY (id_pagamento),
    CONSTRAINT FK_PagCont_Contrato
        FOREIGN KEY (fk_Contrato_id_contrato) REFERENCES Contrato (id_contrato)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

CREATE TABLE Compra (
    id_compra      INT UNSIGNED  NOT NULL AUTO_INCREMENT,
    fk_Cliente_cpf CHAR(11)      NOT NULL,
    data_compra    DATE          NOT NULL,
    valor_total    DECIMAL(9, 2) UNSIGNED NOT NULL,
    PRIMARY KEY (id_compra),
    CONSTRAINT FK_Compra_Cliente
        FOREIGN KEY (fk_Cliente_cpf) REFERENCES Cliente (cpf)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Itens (
    fk_Compra_id_compra    INT UNSIGNED  NOT NULL,
    fk_Recurso_id_recurso  INT UNSIGNED  NOT NULL,
    quantidade             INT UNSIGNED  NOT NULL,
    valor                  DECIMAL(7, 2) UNSIGNED NOT NULL,
    PRIMARY KEY (fk_Compra_id_compra, fk_Recurso_id_recurso),
    CONSTRAINT FK_Itens_Compra
        FOREIGN KEY (fk_Compra_id_compra) REFERENCES Compra (id_compra)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT FK_Itens_Recurso
        FOREIGN KEY (fk_Recurso_id_recurso) REFERENCES Recurso (id_recurso)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

CREATE TABLE Pagamento_avulso (
    id_pagamento        INT UNSIGNED  NOT NULL AUTO_INCREMENT,
    fk_Compra_id_compra INT UNSIGNED  NOT NULL,
    valor               DECIMAL(7, 2) UNSIGNED NOT NULL,
    data_pagamento      DATE,
    forma_pagamento     ENUM('dinheiro', 'cartao de credito',
                             'cartao de debito', 'pix', 'boleto'),
    status              ENUM('pago', 'cancelado', 'pendente') NOT NULL,
    PRIMARY KEY (id_pagamento),
    CONSTRAINT FK_PagAvulso_Compra
        FOREIGN KEY (fk_Compra_id_compra) REFERENCES Compra (id_compra)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
