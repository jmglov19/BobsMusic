-- What customer is renting what instruments
select Renter.parent_name, t.instrument, t.status
from (select Instrument.instrument, customerID, RT.status
        from Instrument
        inner join Rented_Ticket RT on Instrument.instrumentID = RT.instrumentID) as t
inner join Renter on t.customerID = Renter.customerID;

-- Find a customers status on their rentals
select Rented_Ticket.status, I.instrumentID, instrument, due_back
from Rented_Ticket
inner join Instrument I on I.instrumentID = Rented_Ticket.instrumentID
where customerID in (select customerID
                    from Renter
                    where parent_name = 'Amonda Bulris');

-- Renew a customers ticket

-- Find out what instruments are available

-- Find out how many of each instrument are in the database

-- Add a new Customer

-- Add a new instrument

-- Add a new ticket