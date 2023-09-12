drop table if EXISTS Renter;
drop table if EXISTS Instrument;
drop table if EXISTS Rented_Ticket;


CREATE TABLE Renter (
  customerID Varchar(8),
  parent_name Varchar(25),
  student_name Varchar(25),
  street Varchar(25),
  city Varchar(20),
  zipcode Varchar(5),
  home_phone Varchar(20),
  work_phone Varchar(20),
  school Varchar(15),
  PRIMARY KEY (customerID)
);

CREATE TABLE Instrument (
  serial_num Varchar(10),
  instrument Varchar(15),
  brand Varchar(10),                                    
  status Varchar(8),
  PRIMARY KEY (serial_num)
);

CREATE TABLE Rented_Ticket (
  rentID Varchar(8),
  customerID Varchar(8),
  serial_num Varchar(10),
  semester varchar(10),
  status Varchar(8),
  paid varchar(8),
  PRIMARY KEY (rentID),
  foreign KEY (customerID) references Renter(customerID),
  foreign KEY (serial_num) references Instrument(serial_num)
);