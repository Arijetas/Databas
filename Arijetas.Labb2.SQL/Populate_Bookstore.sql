

INSERT INTO Författare  VALUES ('Tareq', 'Taylor', '1969-07-30');
INSERT INTO Författare  VALUES ('Daniele', 'Bott', '1939-06-08');
INSERT INTO Författare	VALUES ('Abdulrazak', 'Gurnah', '1948-12-20');
INSERT INTO Författare  VALUES('Jérôme', 'Gautier', '1992-07-30');
INSERT INTO Författare  VALUES('Paula', 'Hawkins', '1972-08-24');

------------------------------------------------------------------------------------------------------------------------

INSERT INTO Böcker VALUES ('9789178872718', 'Middag i en gryta','Svenska', 249, 160, '2021-11-03', 1);
INSERT INTO Böcker VALUES ('9789151928852', 'Favoriter','Svenska', 279, 172, '2019-10-14', 1);
INSERT INTO Böcker VALUES ('9780500513606', 'Chanel: Collections and Creations', 'Engelska', 399, 207, '2007-07-23', 2);
INSERT INTO Böcker VALUES ('9789100197186', 'Paradiset', 'Svenska', 269, 276, '2021-11-12', 3);
INSERT INTO Böcker VALUES ('9789100197216', 'Den sista gåvan', 'Svenska', 269, 284, '2021-11-12', 3);
INSERT INTO Böcker VALUES ('9781620403280', 'The last gift', 'Engelska', 339, 288, '2014-02-01', 3);
INSERT INTO Böcker VALUES ('9780300175660', 'Chanel: The Vocabulary of Style', 'Engelska', 989, 304, '2011-11-01', 4);
INSERT INTO Böcker VALUES ('9780500518069', 'Dior New Looks', 'Engelska', 769, 304, '2015-10-19', 4);
INSERT INTO Böcker VALUES ('9781784161767', 'Girl On The Train', 'Engelska', 119, 512, '2016-08-23', 5);
INSERT INTO Böcker VALUES ('9789137502014', 'Ur förtärande eld', 'Svenska', 259, 293, '2021-08-31', 5);

------------------------------------------------------------------------------------------------------------------------


INSERT INTO Butiker  VALUES ('Akademibokhandeln', 'Drottninggatan 21', 'Varberg');
INSERT INTO Butiker  VALUES ('Adlibris', 'Kungsgatan 34', 'Göteborg');
INSERT INTO Butiker  VALUES ('NK', 'Hamngatan 18–20', 'Stockholm');

------------------------------------------------------------------------------------------------------------------------


INSERT INTO Lagersaldo VALUES(10, '9789178872718', 7);
INSERT INTO Lagersaldo VALUES(10, '9789151928852', 3);
INSERT INTO Lagersaldo VALUES(10, '9780500513606', 2);
INSERT INTO Lagersaldo VALUES(10, '9789100197186', 1);
INSERT INTO Lagersaldo VALUES(10, '9789100197216', 2);
INSERT INTO Lagersaldo VALUES(10, '9781620403280', 5);
INSERT INTO Lagersaldo VALUES(10, '9780300175660', 3);
INSERT INTO Lagersaldo VALUES(10, '9780500518069', 1);
INSERT INTO Lagersaldo VALUES(10, '9781784161767', 4);
INSERT INTO Lagersaldo VALUES(10, '9789137502014', 5);

INSERT INTO Lagersaldo VALUES(11, '9789178872718', 1);
INSERT INTO Lagersaldo VALUES(11, '9789151928852', 2);
INSERT INTO Lagersaldo VALUES(11, '9780500513606', 1);
INSERT INTO Lagersaldo VALUES(11, '9789100197186', 1);
INSERT INTO Lagersaldo VALUES(11, '9789100197216', 2);
INSERT INTO Lagersaldo VALUES(11, '9781620403280', 1);
INSERT INTO Lagersaldo VALUES(11, '9780300175660', 2);
INSERT INTO Lagersaldo VALUES(11, '9780500518069', 1);
INSERT INTO Lagersaldo VALUES(11, '9781784161767', 2);
INSERT INTO Lagersaldo VALUES(11, '9789137502014', 1);

INSERT INTO Lagersaldo VALUES(12, '9789178872718', 1);
INSERT INTO Lagersaldo VALUES(12, '9789151928852', 1);
INSERT INTO Lagersaldo VALUES(12, '9780500513606', 5);
INSERT INTO Lagersaldo VALUES(12, '9789100197186', 2);
INSERT INTO Lagersaldo VALUES(12, '9789100197216', 3);
INSERT INTO Lagersaldo VALUES(12, '9781620403280', 2);
INSERT INTO Lagersaldo VALUES(12, '9780300175660', 6);
INSERT INTO Lagersaldo VALUES(12, '9780500518069', 5);
INSERT INTO Lagersaldo VALUES(12, '9781784161767', 7);
INSERT INTO Lagersaldo VALUES(12, '9789137502014', 2);


------------------------------------------------------------------------------------------------------------------------

INSERT INTO Kunder VALUES('Denice', 'Larsson', 'Denice.larsson@iths.se');
INSERT INTO Kunder VALUES('Viktor', 'Rådberg', 'Viktor.rådberg@iths.se');
INSERT INTO Kunder VALUES('Arijeta', 'Sherifi', 'Arijeta.sherifi@iths.se');

------------------------------------------------------------------------------------------------------------------------

INSERT INTO Ordrar VALUES (1,3001,'9789178872718',11,'2021-11-20');
INSERT INTO Ordrar VALUES (1,3001,'9789100197216',11,'2021-11-20');
INSERT INTO Ordrar VALUES (1,3001,'9780500518069',10,'2021-11-20');
INSERT INTO Ordrar VALUES (2,3002,'9781620403280',12,'2021-11-23');
INSERT INTO Ordrar VALUES (2,3003,'9789100197216',11,'2021-11-10');
INSERT INTO Ordrar VALUES (3,3004,'9781784161767',12,'2021-11-18');
INSERT INTO Ordrar VALUES (3,3004,'9780500513606',12,'2021-11-18');
INSERT INTO Ordrar VALUES (3,3005,'9789151928852',10,'2021-11-23');





select * from Författare;
select * from Böcker;
select* from Butiker;
select * from Lagersaldo;
select * from Kunder;
select* from Ordrar;

