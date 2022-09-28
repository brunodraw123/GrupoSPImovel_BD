CREATE OR ALTER PROCEDURE [DeletarDados]
    @Id INT
AS
    DELETE FROM 
        [Cliente]
    WHERE
        [ClienteId] = @Id
    GO