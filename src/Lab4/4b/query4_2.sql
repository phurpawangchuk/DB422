-- 5.7 - List full details of all hotels
SELECT * FROM Hotel;

-- 5.8 - List full details of all hotels
SELECT * FROM Hotel WHERE city='London';

-- 5.9 - List the name and address of all guest living in London ,sort by name
SELECT guestName,guestAddress,city FROM Guest G
        INNER JOIN Booking B ON B.guestNo=G.guestNo
        INNER JOIN Hotel H ON H.hotelNo=B.hotelNo
        WHERE city='London'
        ORDER BY guestName ASC;

-- 5.10 -
SELECT type FROM Room WHERE price<400 ORDER BY price ASC;

-- 5.11 -
SELECT * FROM Booking WHERE dateTo is null;

-- 5.12 -
SELECT count(hotelNo) as NumberOfHotel FROM Hotel;

-- 5.13 --
SELECT avg(price) 'Average Price' FROM Room;

-- 5.14 --
SELECT sum(price) 'Total Revenue/Night' FROM Room WHERE type='Double';

-- 5.15 --
SELECT count(DISTINCT guestName) 'Total Booking' FROM Booking B
    INNER JOIN Guest G ON G.guestNo=B.guestNo
    WHERE dateFrom BETWEEN '2024-05-01' AND '2024-05-10';

-- 5.16 --
SELECT price,type from Room R
    INNER JOIN Hotel H ON H.hotelNo=R.hotelNo
    WHERE hotelName='Grosvenor Hotel';

-- 5.17 --
SELECT guestName FROM Guest G
    INNER JOIN Booking B ON B.guestNo=G.guestNo
    INNER JOIN  Hotel H ON B.hotelNo=H.hotelNo
    WHERE hotelName='Grosvenor Hotel';

-- 5.18 --
SELECT R.roomNo,H.hotelNo,type, price,guestName
    FROM Room R
        INNER JOIN Hotel H on H.hotelNo = R.hotelNo
        INNER JOIN  Booking B ON B.roomNo=R.roomNo
        INNER JOIN  Guest G on B.guestNo = G.guestNo
        WHERE hotelName='Grosvenor Hotel';

-- 5.19 --
SELECT sum(price) as 'Total Income' FROM Room R
        INNER JOIN Booking B on B.roomNo = R.roomNo
        INNER JOIN Hotel H on H.hotelNo = B.hotelNo
        WHERE hotelName='Grosvenor Hotel' and

-- 5.20 --
SELECT R.roomNo,H.hotelNo,type
        FROM Room R
        INNER JOIN Booking B on B.roomNo = R.roomNo
        INNER JOIN Hotel H on H.hotelNo = B.hotelNo
        WHERE dateFrom is null and hotelName='Grosvenor Hotel';

-- 5.21 --
SELECT sum(price) as 'Lost Income' FROM Room R
        INNER JOIN Booking B on R.roomNo = B.roomNo
        INNER JOIN Hotel H on R.hotelNo = H.hotelNo
        WHERE fromDate is null and hotelName='Grosvenor Hotel';

-- 5.22 --
SELECT hotelName,roomNo,COUNT(roomNo) as 'Room Count'
        FROM Room R
        INNER JOIN Hotel H on H.hotelNo=R.roomNo
        GROUP BY hotelName,roomNo;

-- 5.23 --
SELECT hotelName,roomNo,city,COUNT(roomNo) as 'Room Count'
        FROM Room R
        INNER JOIN Hotel H on H.hotelNo=R.roomNo
        GROUP BY hotelName,roomNo,city
        HAVING city='London';


-- 5.24 --
SELECT  hotelName, avg(B.roomNo)
        FROM Booking B
        INNER JOIN Room R ON R.roomNo=B.roomNo
        INNER JOIN Hotel H on H.hotelNo = R.hotelNo
        WHERE MONTH(dateFrom)=8
        GROUP BY hotelName;

-- 5.25 --
SELECT type,hotelName,count(type)
    FROM Room r
    INNER JOIN Hotel h ON h.hotelNo=r.hotelNo
    INNER JOIN Booking b ON b.roomNo=r.roomNo
    WHERE city='London'
    GROUP BY type, hotelName;

-- 5.26 --
SELECT hotelName,sum(price) as Lost_Income
    FROM Hotel h
    INNER JOIN Room r ON r.hotelNo=h.hotelNo
    INNER JOIN Booking b ON b.roomNo=r.roomNo
    WHERE b.dateFrom is not null
    GROUP BY hotelName;

-- 5.27 --
   --seed data in data4_2.sql

-- 5.28 --
  UPDATE Room SET price=price+0.5*price;



