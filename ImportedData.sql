Insert into Instrument values 
    ('000001', '6064137', 'Flute', 'Armstrong', 139.00, 'Out'),
    ('000002', '311986', 'Flute', 'Yamaha', 139.00, 'Out'),
    ('000003', '7096281', 'Flute', 'Armstrong', 139.00, 'Out');
    ('000004', '7290167', 'Alto Saxophone', 'Armstrong', 189.00, 'Ready');
    ('000005', '9018291A', 'Trumpet', 'Bach', 139.00, 'Ready');
    ('000006', '1002018', 'Tuba', 'Armstrong', 139.00, 'Ready');

Insert into Renter values
    ('000001', 'Amonda Bulris', 'Sophia Bulris', '2180 state Rt 3', 'Cadyville', 12918, '5184199182','','Saranac');
    ('000002', 'Amanda Latulip', 'Liam Latulip', '45 wildflower ln', 'Cadyville', 12918, '5183890987','5185782111','Morrisonville');
    ('000003', 'Heidi Glover', 'Eric Glover', '6 Black Bear Path', 'Morrisonville', 12962, '5185782191','','Saranac');  
    ('000004', 'Ringo Power', 'Cammy Power', '7 Black Bear Path', 'Morrisonville', 12961, '5185924567','','Chazy');
    ('000005', 'Cammile Sutkoff', 'Pheonix Coron', '20 Saranac street', 'Saranac', 12918, '5184199182','','Saranac');
    ('000006', 'Heidi Glover', 'Ava Glover', '6 Black Bear Path', 'Morrisonville', 12962, '5185782191','','Saranac');
    
Insert into Rented_Ticket values
    ('000001', '000001', '000001', '2023-02-12', '2023-06-30', 'out', 121.12, False),
    ('000002', '000002', '000004', '2023-02-12', '2023-06-30', 'returned', 121.12, True),
    ('000003', '000001', '000003', '2023-02-12', '2023-06-30', 'out', 121.12, True),
    ('000004', '000006', '000002', '2023-02-12', '2023-06-30', 'out', 121.12, True);