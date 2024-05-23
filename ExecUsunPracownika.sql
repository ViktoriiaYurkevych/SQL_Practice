EXEC dbo.UsunPracownika @Id = 1;

SELECT * FROM Pracownik WHERE Id = 1; 
SELECT * FROM Adres WHERE Id = 1; 
SELECT * FROM Samochod WHERE PracownikId = 1; 
SELECT * FROM Projekt_Pracownik WHERE PracownikId = 1;