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





-- Data Fix