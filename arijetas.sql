--------------MOONMISSIONS----------------

SELECT Spacecraft,[Launch date],[Carrier rocket],Operator,[Mission type] 
INTO SuccessfulMissions 
FROM MoonMissions
WHERE Outcome =  'Successful';

GO

UPDATE SuccessfulMissions 
SET Operator = LTRIM(Operator);

GO

UPDATE SuccessfulMissions 
SET Spacecraft = TRIM(LEFT(Spacecraft, CHARINDEX ('(', Spacecraft + '(')-1)) 
FROM SuccessfulMissions;

GO

SELECT Operator, [Mission type],
COUNT (Operator) AS [Mission count]
FROM SuccessfulMissions
GROUP BY Operator, [Mission type]
HAVING COUNT(Operator) > 1
ORDER BY Operator, [Mission type];

GO

----------------USERS---------------------

SELECT ID, UserName,CONCAT(FirstName,' ',LastName) AS Name,
Password, Email, Phone,
CASE WHEN CONVERT(int,SUBSTRING(ID,10,1)%2) = 0
THEN 'Female' ELSE 'Male' END AS Gender
INTO NewUsers
FROM Users;

GO

SELECT UserName, COUNT(UserName) AS Dubble
From  NewUsers
GROUP BY UserName
HAVING COUNT (UserName) > 1;

GO
 
 Update NewUsers 
 SET UserName = SUBSTRING(Name,2,4)
 WHERE UserName IN ('felber', 'sigpet')

GO

DELETE FROM NewUsers
WHERE Gender = 'Female' AND ID < '70%';

GO

INSERT INTO NewUsers (ID, UserName, Name, Password, Email, Phone, Gender)
VALUES ('940114-****', 'etas', 'Arijeta Sherifi', 'aaaaaaaaaa',
'arijeta.sherifi@iths.se', '0707696068', 'Female');
 
GO

