SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE dbo.UsunPracownika
    @Id INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRANSACTION;

    DECLARE @AdresId INT;

   
    SELECT @AdresId = AdresId
    FROM Pracownik
    WHERE Id = @Id;

    
    UPDATE Pracownik
    SET KierownikId = NULL
    WHERE KierownikId = @Id;

   
    UPDATE Samochod
    SET PracownikId = NULL
    WHERE PracownikId = @Id;

   
    DELETE FROM Projekt_Pracownik
    WHERE PracownikId = @Id;

   
    DELETE FROM Pracownik
    WHERE Id = @Id;

    
    DELETE FROM Adres
    WHERE Id = @AdresId;

    COMMIT TRANSACTION;
END
GO
