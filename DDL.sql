drop table if EXISTS Renter;
drop table if EXISTS Instrument;
drop table if EXISTS Rented_Ticket;


CREATE TABLE Renter (
  customerID Varchar(6),
  parent_name Varchar(20),
  student_name Varchar(20),
  street Varchar(20),
  city Varchar(10),
  zipcode Varchar(5),
  home_phone Varchar(10),
  work_phone Varchar(10),
  school Varchar(15),
  PRIMARY KEY (customerID)
);

CREATE TABLE Instrument (
  serial_num Varchar(10),
  instrument Varchar(15),
  brand Varchar(10),
  cost double precision,
  status Varchar(8),
  PRIMARY KEY (serial_num)
);

CREATE TABLE Rented_Ticket (
  rent_id Varchar(6),
  customerID Varchar(6),
  serial_num Varchar(6),
  date_out date,
  due_back date,
  status Varchar(8),
  total_cost double,
  paid boolean,
  PRIMARY KEY (rent_id),
  foreign KEY (customerID) references Renter(customerID),
  foreign KEY (serial_num) references Instrument(serial_num)
);