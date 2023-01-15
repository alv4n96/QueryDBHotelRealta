
USE TempDBRealta;
GO

SELECT * FROM Hotel.Facility_Price_History
WHERE faph_faci_id = 1;

SELECT TOP 2 * FROM Hotel.Facilities;

SELECT TOP 2 * FROM HOtel.Facility_Price_History;


INSERT INTO Hotel.Hotel_Reviews 
(hore_user_review, hore_rating, hore_created_on, hore_user_id, hore_hotel_id)
VALUES 
(@horeUserReview, @horeRating, @horeCreatedOn, horeUserId, horeHotelId);

SELECT hore_id, hore_user_review, hore_rating, hore_created_on, hore_user_id, hore_hotel_id 
FROM Hotel.Hotel_Reviews;

SELECT COLUMN_NAME, DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Hotel_Reviews'

DELETE FROM Hotel.Hotel_Reviews
WHERE hore_id = 6;

SELECT * FROM Hotel.Hotel_reviews

UPDATE Hotel.Hotel_Reviews
SET 
	hore_user_review = @horeUserReview,
	hore_rating = @horeRating,
	hore_created_on = @horeCreatedOn,
	hore_user_id = @horeUserId,
	hore_hotel_id = @horeHotelId
WHERE hore_id = @id;

-- Query 
