
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE dbo.DodajPracownikow
	 @Imie NVARCHAR(100),
    @Nazwisko NVARCHAR(100),
	@Id INT,
	@DzialKod CHAR(3),
	@OddzialId INT,
	@Ulica NVARCHAR(50),
	@Miejscowosc NVARCHAR (50),
	@KodPocztowy CHAR (10),
	@KrajKod CHAR(2)

AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRANSACTION;

	INSERT INTO Adres (Ulica, Miejscowosc, KodPocztowy, KrajKod)
    VALUES (@Ulica, @Miejscowosc, @KodPocztowy, @KrajKod);

	DECLARE @NewAdresId INT;
    SET @NewAdresId = SCOPE_IDENTITY();

	INSERT INTO Pracownik (Id, Imie, Nazwisko, DzialKod, OddzialId, AdresId)
    VALUES (@Id, @Imie, @Nazwisko, @DzialKod, @OddzialId, @NewAdresId);

	COMMIT TRANSACTION;
END
GO
