



SELECT F�rfattare.F�rnamn + ' ' + F�rfattare.Efternamn AS Namn, 
DATEDIFF(YYYY, F�rfattare.F�delsedatum, GETDATE()) AS �lder,
CONVERT(NVARCHAR(10), COUNT(DISTINCT B�cker.Titel)) + SPACE(1) + 'st' AS Titlar,
CONVERT(NVARCHAR(10), SUM(B�cker.Pris * Lagersaldo.Antal)) + SPACE(1) + 'kr' AS Total
FROM F�rfattare 
	JOIN B�cker ON F�rfattare.ID = B�cker.F�rfattareID
	JOIN Lagersaldo ON B�cker.ISBN = Lagersaldo.ISBN
GROUP BY F�rfattare.F�rnamn + ' ' + F�rfattare.Efternamn,
DATEDIFF(YYYY, F�rfattare.F�delsedatum, GETDATE());