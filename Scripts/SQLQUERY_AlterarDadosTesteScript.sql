USE[dbTeste]

BEGIN TRANSACTION
UPDATE [dbo].[Cliente]
    SET
        [Cliente] = 'TipoCliente3',
        [DataAtualizacao] = GETDATE(),
        [TipoCliente] = 'Tipo3',
        [NomeContato] = 'NomeContato3',
        [TelefoneContato] = '1311-1111',
        [Cidade] = 'Cidade3',
        [Bairro] = 'Bairro3',
        [Logradouro] = 'RuaTeste3'
    WHERE 
        [ClienteId] = 2
    ROLLBACK

    EXEC Selecionar
