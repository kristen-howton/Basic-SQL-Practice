USE DogWalkerMVC;

--Adding a value
INSERT INTO dbo.Dog ([Name], OwnerId, Breed, Notes, ImageUrl)
VALUES ('Minni', 2, 'Greyhound', 'No notes', NULL)

--Testing Distinct 
SELECT DISTINCT name
FROM Dog;

--Filtering data
SELECT DISTINCT [Name]
FROM Dog
WHERE name = 'Remy';

SELECT NeighborhoodId
FROM Walker
WHERE NeighborhoodId = 9 
OR NeighborhoodId = 2;

--Using between keyword
SELECT Duration
FROM Walks
WHERE Duration BETWEEN 1750 AND 1800;

--LIKE keyword
SELECT [Name]
FROM Owner
WHERE [Name] LIKE 'P%';

--IN keyword
SELECT [Name]
FROM Owner
WHERE [Name]
IN ('Patricia Young', 'Robert Brown');

--IS keyword and only works with NULL
SELECT ImageUrl
FROM Dog
WHERE ImageUrl IS NULL

--ORDER BY
SELECT [Name]
FROM Neighborhood
ORDER BY [Name] DESC;

--Set function: SUM
SELECT SUM (Duration) FROM Walks;

--Set function: COUNT
SELECT COUNT ([Name])
FROM Owner;

SELECT COUNT ([Name])
FROM Owner
WHERE [Name] = 'Patricia Young';

--MAX
SELECT MAX (Duration)
FROM Walks

--MIN
SELECT MIN (Duration)
FROM Walks

--AVG
SELECT AVG (Duration)
FROM Walks

--SUM
SELECT SUM (Duration)
FROM Walks

--DISTINCT COUNT
SELECT COUNT (DISTINCT [Name])
FROM Owner;

--GROUP BY
SELECT COUNT ([Name]) AS 'CountOfNames', [Name] 
FROM Dog
GROUP BY [Name];

--HAVING
SELECT COUNT (DISTINCT [Name]) AS 'DistinctNames', [Name] 
FROM Dog
GROUP BY [Name]
HAVING COUNT ([Name]) > 1;

--INNER JOIN
SELECT o.Name AS 'OwnerName', d.Name AS 'DogName'
FROM Owner o
INNER JOIN Dog d ON d.OwnerId = o.Id;

--LEFT JOIN, results from Owner with NULLS
SELECT o.Name AS 'OwnerName', d.Name AS 'DogName'
FROM Owner o
LEFT JOIN Dog d ON d.OwnerId = o.Id;

--RIGHT JOIN, results from dog with NULLS
SELECT o.Name AS 'OwnerName', d.Name AS 'DogName'
FROM Owner o
LEFT JOIN Dog d ON d.OwnerId = o.Id;

--INSERT
INSERT INTO Owner (Email, [Name], [Address], NeighborhoodId, Phone)
VALUES ('Jonathan@email.com', 'Jon Howton', '1123 Address Street', 2, '555-666-7777'),
		('Riley@email.com', 'Riley Howton', '1123 Address Street', 2, '555-666-8888');

--UPDATE
UPDATE Owner
SET
Name = 'Kristen Howton',
Email = 'email@email.com'
WHERE Id = 20;


--DELETE
DELETE 
FROM Owner
WHERE Id =20;













