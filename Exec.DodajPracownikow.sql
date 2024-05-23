DELETE FROM Samochod WHERE Marka = 'Audi' AND Model = 'RS6'
DELETE FROM Pracownik WHERE Nazwisko = 'Kowalski';
DELETE FROM Adres WHERE Ulica = 'Wielka 1' AND Miejscowosc = 'Warszawa';

EXEC dbo.DodajPracownikow 
    @Imie = 'Jan', 
    @Nazwisko = 'Kowalski', 
    @DzialKod = 'BD1', 
    @OddzialId = 21, 
    @Ulica = 'Wielka 1', 
    @Miejscowosc = 'Warszawa', 
    @KodPocztowy = '000601', 
    @KrajKod = 'PL',
	@MarkaSamochodu = 'Audi',
	@ModelSamochodu = 'RS6',
	@NrRejestruSamochodu = 'DW3648W';

SELECT * FROM Pracownik WHERE Nazwisko = 'Kowalski';
SELECT * FROM Adres WHERE Ulica = 'Wielka 1' AND Miejscowosc = 'Warszawa';
SELECT * FROM Samochod WHERE NrRejestr = 'DW3648W'

update Pracownik
SET KierownikId = 40
WHERE Nazwisko = 'Kowalski';

SELECT * FROM Pracownik WHERE Nazwisko = 'Kowalski';
