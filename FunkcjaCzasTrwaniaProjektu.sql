SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION dbo.CzasTrwaniaProjektu
(
    @ProjektKod VARCHAR(50)
)
RETURNS INT
AS
BEGIN
    DECLARE @CzasTrwaniaDni INT;

    SELECT @CzasTrwaniaDni = DATEDIFF(DAY, DataRoz, DataZak)
    FROM Projekt
    WHERE Kod = @ProjektKod;

    RETURN @CzasTrwaniaDni;
END
GO
