-- EXEC [InserirDados] "clienteTexto","tipoExclusivo","nomeDeTexto","2901920190","novaCidade","novoBairro","novoLograduro"
-- EXEC [DeletarDados] 5;
-- EXEC [Selecionar];
-- EXEC [AlterDados];
-- DROP TABLE [Cliente];

USE [dbTeste]
DECLARE @Cliente NVARCHAR(80)
DECLARE @TipoCliente NVARCHAR(60)
DECLARE @NomeContato NVARCHAR(80)
DECLARE @TelefoneContato NVARCHAR(13)
DECLARE @Cidade NVARCHAR(40)
DECLARE @Bairro NVARCHAR(40)
DECLARE @Logradouro NVARCHAR(80)

DECLARE @I INT
SET @I = 1

WHILE @I <= 5000
        BEGIN
    SET @Cliente = CONCAT('Teste', @I)
    SET @TipoCliente =  CONCAT('Tipo', @I)
    SET @NomeContato = CONCAT('NomeContato', @I)
    SET @TelefoneContato = CONCAT('19 9', RIGHT(CHECKSUM(NEWID()),8))
    SET @Cidade = CONCAT('Cidade', @I)
    SET @Bairro = CONCAT('Bairro', @I)
    SET @Logradouro = CONCAT('RuaTeste', @I)

    EXEC [InserirDados] 
            @Cliente,
            @TipoCliente,
            @NomeContato,
            @TelefoneContato,
            @Cidade,
            @Bairro,
            @Logradouro
    SET @I = @I + 1
END

SELECT *
FROM [Cliente]
