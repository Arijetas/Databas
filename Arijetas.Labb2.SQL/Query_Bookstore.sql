



SELECT Författare.Förnamn + ' ' + Författare.Efternamn AS Namn, 
DATEDIFF(YYYY, Författare.Födelsedatum, GETDATE()) AS Ålder,
CONVERT(NVARCHAR(10), COUNT(DISTINCT Böcker.Titel)) + SPACE(1) + 'st' AS Titlar,
CONVERT(NVARCHAR(10), SUM(Böcker.Pris * Lagersaldo.Antal)) + SPACE(1) + 'kr' AS Total
FROM Författare 
	JOIN Böcker ON Författare.ID = Böcker.FörfattareID
	JOIN Lagersaldo ON Böcker.ISBN = Lagersaldo.ISBN
GROUP BY Författare.Förnamn + ' ' + Författare.Efternamn,
DATEDIFF(YYYY, Författare.Födelsedatum, GETDATE());