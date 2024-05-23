ALTER TABLE Pracownik
ADD DataUtworzenia DATETIME2 DEFAULT GETDATE(),
    DataModyfikacji DATETIME2;

CREATE TRIGGER TRG_Pracownik_Data
ON Pracownik
AFTER UPDATE
AS
BEGIN
    IF @@ROWCOUNT = 0
        RETURN;

    IF EXISTS (SELECT * FROM inserted)
    BEGIN
        UPDATE Pracownik
        SET DataModyfikacji = GETDATE()
        FROM Pracownik
        INNER JOIN inserted ON Pracownik.Id = inserted.Id;
    END
END;

