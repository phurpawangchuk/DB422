CREATE TABLE Hotel(
      hotelNo int not null,
      hotelName varchar(255),
      city varchar(255),
      PRIMARY KEY(hotelNo)
);

CREATE TABLE Room(
     roomNo int not null,
     hotelNo int,
     type varchar(255),
     price int,
     PRIMARY KEY(roomNo,hotelNo),
     FOREIGN KEY(hotelNo) REFERENCES Hotel(hotelNo) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Booking (
     hotelNo int not null,
     guestNo int not null,
     dateFrom date not null,
     dateTo date,
     roomNo int,
     PRIMARY KEY(hotelNo,guestNo,dateFrom),
     FOREIGN KEY(hotelNo) REFERENCES Hotel(hotelNo) ON DELETE CASCADE ON UPDATE CASCADE,
     FOREIGN KEY(roomNo) REFERENCES Room(roomNo) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Guest(
      guestNo int not null,
      guestName varchar(255),
      guestAddress varchar(255),
      PRIMARY KEY(guestNo)
);
