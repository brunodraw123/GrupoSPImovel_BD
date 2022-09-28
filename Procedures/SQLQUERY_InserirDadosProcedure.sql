CREATE OR ALTER PROCEDURE [InserirDados]
        @Cliente NVARCHAR(80),
        @TipoCliente NVARCHAR(60),
        @NomeContato NVARCHAR(80),
        @TelefoneContato NVARCHAR(13),
        @Cidade NVARCHAR(40),
        @Bairro NVARCHAR(40),
        @Logradouro NVARCHAR(80)
AS 
BEGIN

    INSERT INTO 
        [Cliente]
        (
        Cliente,
        TipoCliente,
        NomeContato,
        TelefoneContato,
        Cidade,
        Bairro,
        Logradouro
        )
    VALUES
        (
            @Cliente,
            @TipoCliente,
            @NomeContato,
            @TelefoneContato,
            @Cidade,
            @Bairro,
            @Logradouro
        )
END

select * from [Cliente]