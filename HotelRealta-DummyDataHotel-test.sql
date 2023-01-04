--memasukkan file insert

USE TempDBRealta;
GO
-- Dummy Data;
-- Insert rows into table 'Users.users'

INSERT INTO Users.users ([user_id])
VALUES (1),(2),(3),(4),(5)
GO

INSERT INTO Master.address ([addr_id])
VALUES (1),(2),(3),(4),(5)
GO

INSERT INTO Master.category_group ([cagro_id])
VALUES (1),(2),(3),(4),(5)
GO

INSERT INTO Hotel.Hotels (hotel_name, hotel_description, hotel_rating_star, hotel_phonenumber, hotel_modified_date, hotel_addr_id)
VALUES
('Hotel Amaris Palembang', 'Hotel bintang 3 dengan fasilitas yang lengkap dan modern di Palembang', 3, '+62 823 3456 7891', '2022-01-01', 1),
('Grand Clarion Hotel Palembang', 'Hotel bintang 4 dengan kamar yang luas dan nyaman di Palembang', 4, '+62 823 1234 5678', '2022-02-01', 2),
('Aston Hotel Palembang', 'Hotel bintang 5 dengan fasilitas spa dan kolam renang di Palembang', 5, '+62 823 9012 3456', '2022-03-01', 3),
('Hotel Santika Palembang', 'Hotel bintang 3 dengan fasilitas kelas atas di Palembang', 3, '+62 823 7890 1234', '2022-04-01', 3),
('Ibis Hotel Palembang', 'Hotel bintang 3 dengan tarif terjangkau di Palembang', 3, '+62 823 4567 8901', '2022-05-01', 2),
('Grand Mercure Hotel Palembang', 'Hotel bintang 4 dengan fasilitas mewah di Palembang', 4, '+62 823 1234 5679', '2022-06-01', 5),
('Marriott Hotel Palembang', 'Hotel bintang 5 dengan fasilitas spa dan fitness center di Palembang', 5, '+62 823 9012 3457', '2022-07-01', 1),
('Zest Hotel Palembang', 'Hotel bintang 3 dengan desain modern dan nyaman di Palembang', 3, '+62 823 7890 1235', '2022-08-01', 4),
('The Westin Hotel Palembang', 'Hotel bintang 4 dengan fasilitas kelas atas di Palembang', 4, '+62 823 4567 8902', '2022-09-01', 5),
('Swiss-Belhotel Palembang', 'Hotel bintang 5 dengan fasilitas mewah di Palembang', 5, '+62 823 1234 5680', '2022-10-01', 4)

INSERT INTO Hotel.Facilities (faci_name, faci_description, faci_max_number, faci_measure_unit, faci_room_number, faci_startdate, faci_endate, faci_low_price, faci_high_price, faci_rate_price, faci_discount, faci_tax_rate, faci_cagro_id, faci_hotel_id)
VALUES ('Pool', 'Outdoor pool with sun loungers and parasols', 100, 'people', 'POOL01', '2022-01-01', '2022-12-31', 50, 100, 75, 10, 5, 1, 1),
       ('Gym', 'Fully equipped gym with treadmills, stationary bikes, and weights', 50, 'people', 'GYM01', '2022-01-01', '2022-12-31', 30, 50, 40, 5, 3, 2, 2),
       ('Spa', 'Luxurious spa offering massages, facials, and body treatments', 20, 'people', 'SPA01', '2022-01-01', '2022-12-31', 80, 120, 100, 15, 8, 3, 3),
       ('Restaurant', 'Fine dining restaurant serving international cuisine', 100, 'people', 'REST01', '2022-01-01', '2022-12-31', 40, 80, 60, 10, 5, 4, 4),
       ('Bar', 'Trendy bar serving cocktails and light snacks', 50, 'people', 'BAR01', '2022-01-01', '2022-12-31', 20, 30, 25, 5, 3, 5, 5),
       ('Pool', 'Outdoor pool with sun loungers and parasols', 100, 'people', 'POOL02', '2022-01-01', '2022-12-31', 50, 100, 75, 10, 5, 1, 1),
       ('Gym', 'Fully equipped gym with treadmills, stationary bikes, and weights', 50, 'people', 'GYM02', '2022-01-01', '2022-12-31',20, 30, 25, 5, 3, 5, 5),
	   ('Swimming Pool', 'Our hotel has a large outdoor swimming pool with a depth of 1.5 meters', 50, 'people', 'POOL1', '2022-01-01', '2022-12-31', 50000, 100000, 75000, 10, 10, 1, 1),
	   ('Fitness Center', 'Our hotel has a fully equipped fitness center open 24 hours a day', 30, 'people', 'FIT1', '2022-01-01', '2022-12-31', 30000, 50000, 40000, 5, 10, 1, 1),
	   ('Sauna', 'Our hotel has a traditional sauna that can accommodate up to 10 people', 10, 'people', 'SAU1', '2022-01-01', '2022-12-31', 25000, 35000, 30000, 5, 10, 1, 1),
	   ('Spa', 'Our hotel has a luxurious spa with a variety of treatments and therapies', 15, 'people', 'SPA1', '2022-01-01', '2022-12-31', 100000, 150000, 125000, 10, 10, 1, 1),
	   ('Conference Room', 'Our hotel has a spacious conference room that can accommodate up to 200 people', 200, 'people', 'CON1', '2022-01-01', '2022-12-31', 200000, 300000, 250000, 10, 10, 1, 1),
	   ('Restaurant', 'Our hotel has a fine dining restaurant that serves a variety of international cuisines', 100, 'people', 'RES1','2022-01-01', '2022-12-31', 200000, 300000, 250000, 10, 10, 1, 1







-- Data Fix