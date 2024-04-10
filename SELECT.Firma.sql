SELECT CONCAT_WS(' ', imie, nazwisko) AS OSOBA FROM Pracownik
ORDER BY Nazwisko

SELECT Pracownik.Imie, Pracownik.Nazwisko, Adres.Miejscowosc
FROM Pracownik
JOIN Adres ON Pracownik.AdresId = Adres.Id
WHERE Miejscowosc like 'b%'

SELECT P.Imie, P.Nazwisko, K.Nazwisko
FROM Pracownik AS P
JOIN Pracownik AS K ON P.KierownikId = K.KierownikId
WHERE P.DzialKod = 'RD1'

SELECT P.Imie, P.Nazwisko, S.NrRejestr
FROM Pracownik P
JOIN Samochod S ON P.SamochodId = S.Id;

SELECT pr.Nazwa, COUNT(pp.PracownikId) AS Liczba_Pracownikow
FROM PROJEKT pr
LEFT JOIN Projekt_Pracownik pp ON pr.Kod = pp.ProjektKod
GROUP BY pr.Nazwa;

SELECT k.Kod, COUNT(pp.KrajKod) AS Liczba_zamieszkujacych
FROM Kraj k
JOIN Adres pp ON  k.Kod = pp.KrajKod
GROUP BY k.Kod;

SELECT pp.Imie, pp.Nazwisko, O.Nazwa
FROM Pracownik pp
JOIN Oddzial o ON O.Id = pp.OddzialId
WHERE pp.SamochodId is null;

SELECT DISTINCT p.Kod KOD_PROJEKTU, pr.Nazwisko NAZWISKO_KIEROWNIKA
FROM Projekt p
JOIN Projekt_Pracownik ppr ON p.Kod = ppr.ProjektKod
JOIN Pracownik pr ON ppr.PracownikId = pr.Id
WHERE pr.KierownikId IS NULL

SELECT DISTINCT dz.Kod, ad.Miejscowosc
FROM Pracownik pr
JOIN Dzial dz ON pr.DzialKod = dz.Kod
JOIN Oddzial od ON pr.OddzialId = od.Id
JOIN Adres ad ON od.AdresId = ad.Id

SELECT od.Nazwa NAZWA_ODDZIALU, sa.Marka, sa.Model, sa.NrRejestr
FROM Pracownik pr
JOIN Oddzial od ON od.Id = pr.OddzialId
JOIN Samochod sa ON sa.Id = pr.SamochodId





