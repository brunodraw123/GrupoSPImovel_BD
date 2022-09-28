
-- Criando o banco de dados

USE [master]
CREATE DATABASE [dbTeste]
GO
-- Criando a tabela e as colunas
USE [dbTeste]
CREATE TABLE [Cliente]
(
    ClienteId INT NOT NULL IDENTITY(1,1),
    Cliente NVARCHAR(80) NOT NULL,
    TipoCliente NVARCHAR(60) NOT NULL,
    NomeContato NVARCHAR(80) NOT NULL,
    TelefoneContato NVARCHAR(13) NOT NULL,
    Cidade NVARCHAR(40) NOT NULL,
    Bairro NVARCHAR(40) NOT NULL,
    Logradouro NVARCHAR(80) NOT NULL,
    DataCadastro DATETIME NOT NULL DEFAULT GETDATE(),
    DataAtualizacao DATETIME NULL,
)
GO

