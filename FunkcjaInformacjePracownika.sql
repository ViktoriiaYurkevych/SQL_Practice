SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION dbo.InformacjePracownika
(
    @Nazwisko NVARCHAR(100)
)
RETURNS TABLE
AS
RETURN
(
    SELECT Pracownik.Imie, Pracownik.Nazwisko, Adres.Ulica, Adres.Miejscowosc, Adres.KodPocztowy, Adres.KrajKod, 
           Dzial.Nazwa AS NazwaDzialu, Oddzial.Nazwa AS NazwaOddzialu
    FROM Pracownik
    JOIN Adres ON Pracownik.AdresId = Adres.Id
    JOIN Dzial ON Pracownik.DzialKod = Dzial.Kod
    JOIN Oddzial ON Pracownik.OddzialId = Oddzial.Id
    WHERE Pracownik.Nazwisko = @Nazwisko
)
GO
