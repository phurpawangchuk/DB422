-- Hotel table
INSERT INTO Hotel (hotelNo, hotelName, city)
VALUES
     (1, 'Hotel A', 'City A'),
     (2, 'Hotel B', 'City B'),
     (3, 'Hotel C', 'City C'),
     (4, 'Hotel D', 'City D'),
     (5, 'Hotel E', 'City E');

-- Room table
INSERT INTO Room (roomNo, hotelNo, type, price)
 VALUES
        (101, 1, 'Single', 50),
        (102, 1, 'Double', 80),
        (103, 2, 'Suite', 150),
        (104, 3, 'Standard', 70),
        (105, 4, 'Deluxe', 120);

-- Booking table
INSERT INTO Booking (hotelNo, guestNo, dateFrom, dateTo, roomNo)
VALUES
     (1, 1, '2024-04-01', '2024-04-05', 101),
     (1, 2, '2024-04-02', '2024-04-06', 102),
     (2, 3, '2024-04-03', '2024-04-07', 103),
     (3, 4, '2024-04-04', '2024-04-08', 104),
     (4, 5, '2024-04-05', '2024-04-09', 105),
     (4, 1, '2024-08-02', '2024-08-06', 102),
     (2, 3, '2024-08-03', '2024-08-07', 103),
     (3, 4, '2024-08-04', '2024-08-08', 104);


INSERT INTO Booking (hotelNo, guestNo, dateFrom, dateTo, roomNo)
VALUES
    (4, 5, '2024-08-05', '2024-08-09', 105),
    (4, 1, '2024-08-02', '2024-08-06', 102),
    (2, 3, '2024-08-03', '2024-08-07', 103),
-- Guest table
INSERT INTO Guest (guestNo, guestName, guestAddress)
VALUES
     (1, 'John Doe', 'Address 1'),
     (2, 'Jane Smith', 'Address 2'),
     (3, 'Alice Johnson', 'Address 3'),
     (4, 'Bob Williams', 'Address 4'),
     (5, 'Emma Brown', 'Address 5');
