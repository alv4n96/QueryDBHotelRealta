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
END
