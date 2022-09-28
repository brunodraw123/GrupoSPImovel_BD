CREATE OR ALTER PROCEDURE [AlterarDados]
    @Cliente NVARCHAR(80),
    @TipoCliente NVARCHAR(60),
    @NomeContato NVARCHAR(80),
    @TelefoneContato NVARCHAR(13),
    @Cidade NVARCHAR(40),
    @Bairro NVARCHAR(40),
    @Logradouro NVARCHAR(80),
    @Id INT
AS
UPDATE [dbo].[Cliente]
        SET
            [Cliente] = @Cliente,
            [DataAtualizacao] = GETDATE(),
            [TipoCliente] = @TipoCliente,
            [NomeContato] = @NomeContato,
            [TelefoneContato] = @TelefoneContato,
            [Cidade] = @Cidade,
            [Bairro] = @Bairro,
            [Logradouro] = @Logradouro
        WHERE 
            [ClienteId] = @Id

