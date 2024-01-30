SELECT Airplane_Flights.*
FROM Airplane_Flights, Cities
WHERE Cities.Id = Airplane_Flights.CityId AND Cities.Name = 'Kyiv'
ORDER BY Airplane_Flights.Time ASC;

SELECT *
FROM Airplane_Flights
WHERE Duration = (SELECT MAX (Duration) FROM Airplane_Flights);

SELECT *
FROM Airplane_Flights
WHERE Duration > '02:00:00';

SELECT Cities.Name, COUNT (Airplane_Flights.Id) AS Count_flights
FROM Airplane_Flights LEFT JOIN Cities ON Airplane_Flights.CityId = Cities.Id
GROUP BY Cities.Name;

SELECT Cities.Name
FROM Cities, Airplane_Flights
WHERE Cities.Id = Airplane_Flights.CityId AND 
      Airplane_Flights.Id = (SELECT MAX (Id) FROM Airplane_Flights);

SELECT Cities.Name, COUNT (Airplane_Flights.Id) AS Count_flights, NULL AS MONTH
FROM Airplane_Flights JOIN Cities ON Airplane_Flights.CityId = Cities.Id
GROUP BY Cities.Name 
UNION ALL
SELECT NULL AS Name, COUNT (Airplane_Flights.Id) AS Count_flights, 
       MONTH (Airplane_Flights.Date) 
FROM Airplane_Flights JOIN Cities ON Airplane_Flights.CityId = Cities.Id
WHERE MONTH (Airplane_Flights.Date) = 8
GROUP BY MONTH (Airplane_Flights.Date);

SELECT Airplane_Flights.*
FROM Airplane_Flights, Business_class
WHERE Airplane_Flights.Id = Business_class.FlightId AND 
      Airplane_Flights.Date = '2023-07-03' AND
      AvailableSeats = ANY (SELECT AvailableSeats
	                        FROM Business_class
	                        WHERE Business_class.AvailableSeats > 0);

SELECT COUNT (Tickets.Sold) AS Sold_tickets, SUM (Tickets.Price) AS Suma
FROM Tickets, Airplane_Flights
WHERE  Airplane_Flights.Id = Tickets.FlightId AND
       Airplane_Flights.Date = '2023-07-07' AND Tickets.Sold = 1;

SELECT Airplane_Flights.Id, Airplane_Flights.Date,
       COUNT (Tickets.Id) AS Count_tickets
FROM Airplane_Flights JOIN Tickets ON Airplane_Flights.Id = Tickets.FlightId
WHERE Airplane_Flights.Date = '2023-07-07' AND Tickets.Sold = 1
GROUP BY Airplane_Flights.Id, Airplane_Flights.Date;

SELECT Airplane_Flights.FlightNumber AS Flight_number, Cities.Name AS City
FROM Airplane_Flights, Cities
WHERE Cities.Id = Airplane_Flights.CityId;