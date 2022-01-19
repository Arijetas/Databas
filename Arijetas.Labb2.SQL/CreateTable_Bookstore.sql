--Skapa en egen databas
--Skapa tabellerna
--Fylla tabellerna med info
--Joina tabeller


--CREATE DATABASE Bookstore;

--GO

--USE Bookstore


GO 

DROP TABLE Böcker;
DROP TABLE Författare;
DROP TABLE Lagersaldo;
DROP TABLE Butiker;
DROP TABLE Kunder;
DROP TABLE Ordrar;

GO

CREATE TABLE Författare 
(
    ID					INT					NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Förnamn				NVARCHAR(20)		NOT NULL,
    Efternamn			NVARCHAR(20)		NOT NULL,
    Födelsedatum		DATE				NOT NULL,
);


						GO

CREATE TABLE Böcker
(
	ISBN				NVARCHAR(13)		NOT NULL PRIMARY KEY
	CHECK(LEN(ISBN) = 13 AND (ISBN LIKE '978%' OR ISBN LIKE '979%')),
	Titel				NVARCHAR(100)		NOT NULL,
	Språk				NVARCHAR(12)		NOT NULL,
	Pris				MONEY				NOT NULL,
	[Antal sidor]		INT					NOT NULL,
	Utgivningsdatum		DATE				NOT NULL,
	FörfattareID		INT					NOT NULL FOREIGN KEY REFERENCES Författare(ID) ON DELETE CASCADE
);

						GO

CREATE TABLE Butiker
(	
	ButikID				INT					NOT NULL PRIMARY KEY  IDENTITY(10,1),
	Butiksnamn			NVARCHAR(20)		NOT NULL,
	Adress				NVARCHAR(100)		NOT NULL,
	Stad				NVARCHAR(20)		NOT NULL
);

						GO


CREATE TABLE Lagersaldo
(
	ButikID				INT					NOT NULL FOREIGN KEY REFERENCES Butiker(ButikID),
	ISBN				NVARCHAR(13)		NOT NULL FOREIGN KEY REFERENCES Böcker(ISBN),
	Antal				INT					NOT NULL
	PRIMARY KEY (ButikID, ISBN)
);


						GO

CREATE TABLE Kunder 
(
	KundID				INT					NOT NULL PRIMARY KEY IDENTITY (1,1),
	Förnamn				NVARCHAR(10)		NOT NULL,
	Efternamn			NVARCHAR(10)		NOT NULL,
	Epostadress			NVARCHAR(100)		NOT NULL
);

						GO

CREATE TABLE Ordrar
(
	KundID				INT					NOT NULL FOREIGN KEY REFERENCES Kunder(KundID),
	Ordernummer			INT					NOT NULL,
	Artikelnummer		NVARCHAR(13)		NOT NULL FOREIGN KEY REFERENCES Böcker(ISBN),
	ButikID				INT					NOT NULL FOREIGN KEY REFERENCES Butiker(ButikID),
	Beställningsdatum	DATE				NOT NULL
);
