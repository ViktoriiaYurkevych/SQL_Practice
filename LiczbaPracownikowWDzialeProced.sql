SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION dbo.LiczbaPracownikowWDziale
(
    @DzialKod CHAR(3)
)
RETURNS INT
AS
BEGIN
    DECLARE @LiczbaPracownikow INT;

    SELECT @LiczbaPracownikow = COUNT(*)
    FROM Pracownik
    WHERE DzialKod = @DzialKod;

    RETURN @LiczbaPracownikow;
END
GO
