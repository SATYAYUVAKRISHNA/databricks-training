INSERT INTO owners VALUES
('O101','Ramesh','Hyderabad',9876543200,'ramesh@gmail.com'),
('O102','Suresh','Vijayawada',9876543201,'suresh@gmail.com');

INSERT INTO customers VALUES
('C101','Arjun','Guntur',9876543210,'arjun@gmail.com'),
('C102','Krishna','Tenali',9876543211,'krishna@gmail.com');

INSERT INTO cars VALUES
('CAR101','Swift','Hatchback','O101'),
('CAR102','Innova','SUV','O102');

INSERT INTO rentals VALUES
('R101','C101','CAR101','2026-05-01','2026-05-03',250,5000.00),
('R102','C102','CAR102','2026-05-04','2026-05-06',180,4000.00);