USE TempDBRealta;
GO;

CREATE PROCEDURE sp_update_hotel
(
    @hotel_id INT,
    @hotel_name NVARCHAR(85),
    @hotel_description NVARCHAR(500),
    @hotel_rating_star SMALLINT,
    @hotel_phonenumber NVARCHAR(25),
    @hotel_modified_date DATETIME,
    @hotel_addr_id INT
)
AS
BEGIN 
	BEGIN TRY
		BEGIN TRANSACTION
			UPDATE Hotel.Hotels
			SET hotel_name = @hotel_name,
				hotel_description = @hotel_description,
				hotel_rating_star = @hotel_rating_star,
				hotel_phonenumber = @hotel_phonenumber,
				hotel_modified_date = @hotel_modified_date,
				hotel_addr_id = @hotel_addr_id
			WHERE hotel_id = @hotel_id
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		IF @@ROWCOUNT > 0
		ROLLBACK TRANSACTION
		THROW;
	END CATCH
END;

GO;

CREATE PROCEDURE sp_update_hotel_reviews
(
   @hore_id INT,
   @hore_user_review NVARCHAR(125),
   @hore_rating TINYINT,
   @hore_created_on DATETIME,
   @hore_user_id INT,
   @hore_hotel_id INT
)
AS
BEGIN
   BEGIN TRANSACTION
   BEGIN TRY
      -- Update data di tabel Hotel.Hotel_Reviews
      UPDATE Hotel.Hotel_Reviews
      SET hore_user_review = @hore_user_review,
          hore_rating = @hore_rating,
          hore_created_on = @hore_created_on,
          hore_user_id = @hore_user_id,
          hore_hotel_id = @hore_hotel_id
      WHERE hore_id = @hore_id;
      
      -- Jika tidak ada error, commit transaksi
      COMMIT TRANSACTION
   END TRY
   BEGIN CATCH
      -- Jika ada error, rollback transaksi
      ROLLBACK TRANSACTION
      -- Tampilkan pesan error
      PRINT ERROR_MESSAGE()
   END CATCH
END;

GO;

CREATE PROCEDURE sp_update_facilities
(
@id int,
@faciName nvarchar(125),
@faciDescription nvarchar(255),
@faciMaxNumber int,
@faciMeasureUnit varchar(15),
@faciRoomNumber nvarchar(6),
@faciStartdate datetime,
@faciEndate datetime,
@faciLowPrice money,
@faciHighPrice money,
@faciRatePrice money,
@faciDiscount smallmoney,
@faciTaxRate smallmoney,
@faciModifiedDate datetime,
@faciCagroId int,
@faciHotelId int
)
AS
BEGIN
   BEGIN TRANSACTION
   BEGIN TRY
      -- Update data di tabel Hotel.Hotel_Reviews
      UPDATE Hotel.Facilities
      SET	
	    faci_name = @faciName,
	    faci_description = @faciDescription,
	    faci_max_number = @faciMaxNumber,
	    faci_measure_unit = @faciMeasureUnit,
	    faci_room_number = @faciRoomNumber,
	    faci_startdate = @faciStartdate,
	    faci_endate = @faciEndate,
	    faci_low_price = @faciLowPrice,
	    faci_high_price = @faciHighPrice,
	    faci_rate_price = @faciRatePrice,
	    faci_discount = @faciDiscount,
	    faci_tax_rate = @faciTaxRate,
	    faci_modified_date = @faciModifiedDate,
	    faci_cagro_id = @faciCagroId,
	    faci_hotel_id = @faciHotelId
      WHERE faci_id = @id;
      
      -- Jika tidak ada error, commit transaksi
      COMMIT TRANSACTION
   END TRY
   BEGIN CATCH
      -- Jika ada error, rollback transaksi
      ROLLBACK TRANSACTION
      -- Tampilkan pesan error
      PRINT ERROR_MESSAGE()
   END CATCH
END;

GO;


CREATE PROCEDURE sp_update_facility_photos
(
    @faPhoId INT,
    @faphoThumbnailFilename NVARCHAR(50) = NULL,
    @faphoPhotoFilename NVARCHAR(50) = NULL,
    @faphoPrimary BIT = NULL,
    @faphoUrl NVARCHAR(255) = NULL,
    @faphoModifiedDate DATETIME = NULL,
    @faphoFaciId INT = NULL
)
AS
BEGIN
   BEGIN TRANSACTION
   BEGIN TRY
      -- Update data di tabel Hotel.Facility_Photos
      UPDATE Hotel.Facility_Photos
      SET 
        fapho_faci_id = @faphoFaciId,
        fapho_thumbnail_filename = @faphoThumbnailFilename,
        fapho_photo_filename = @faphoPhotoFilename,
        fapho_primary = @faphoPrimary,
        fapho_url = @faphoUrl,
        fapho_modified_date = @faphoModifiedDate  
      WHERE fapho_id = @faPhoId;
      
      -- Jika tidak ada error, commit transaksi
      COMMIT TRANSACTION
   END TRY
   BEGIN CATCH
      -- Jika ada error, rollback transaksi
      ROLLBACK TRANSACTION
      -- Tampilkan pesan error
      PRINT ERROR_MESSAGE()
   END CATCH
END;
