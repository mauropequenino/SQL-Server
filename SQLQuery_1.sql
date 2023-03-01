CREATE DATABASE db_instituicao;

CREATE TABLE fornecedores (
    id_fornecedor INT IDENTITY PRIMARY KEY,
    f_name VARCHAR(100) NOT NULL DEFAULT ('Default'),
    f_status VARCHAR(100) NOT NULL DEFAULT  ('Default'),
    city VARCHAR (100) NOT NULL
);

CREATE TABLE pecas (
    id_peca INT IDENTITY PRIMARY KEY,
    p_name VARCHAR(100) NOT NULL,
    cor VARCHAR(100),
    peso DECIMAL(5,2),
    city VARCHAR(100)
)

CREATE TABLE instituicao (
    id_instituicao INT IDENTITY PRIMARY KEY,
    i_name VARCHAR(100) NOT NULL
);

CREATE TABLE projectos (
    id_projecto INT IDENTITY PRIMARY KEY,
    proj_name VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    id_inst INT UNIQUE FOREIGN KEY REFERENCES instituicao (id_instituicao)
)

CREATE TABLE fornecimentos (
    id_fornecedor INT UNIQUE FOREIGN KEY REFERENCES fornecedores (id_fornecedor),
    id_peca INT UNIQUE FOREIGN KEY REFERENCES pecas (id_peca), 
    id_projecto INT UNIQUE FOREIGN KEY REFERENCES projectos (id_projecto),
    quantity INT NOT NULL,
);
