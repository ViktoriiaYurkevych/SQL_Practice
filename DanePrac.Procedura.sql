
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE dbo.DanePracownikow @Nazwisko NVARCHAR(100)
AS
BEGIN
	SET NOCOUNT ON;
	SELECT Pracownik.Imie, Pracownik.Nazwisko, Pracownik.AdresId,
	Dzial.Nazwa AS Dzial, Oddzial.Nazwa AS Oddzial
	FROM Pracownik
	JOIN Dzial ON Pracownik.DzialKod = Dzial.Kod
	JOIN Oddzial on Pracownik.OddzialId = Oddzial.Id
	WHERE Pracownik.Nazwisko = @Nazwisko
END
GO
