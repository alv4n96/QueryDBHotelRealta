USE TempDBRealta;
GO;

DROP TRIGGER Hotel.tr_hotel_facilities_price_history
DROP TRIGGER Hotel.tr_Hotel_Facilities

CREATE TRIGGER Hotel.tr_hotel_facilities_price_history
ON Hotel.Facilities
AFTER INSERT, UPDATE
AS
BEGIN
    --Inser New Record to H.Faci_P_H for each insert/update data row in H.Faci
    SET NOCOUNT ON;
    --Declare variable
    DECLARE @faci_id INT
    DECLARE @faci_startdate DATETIME
    DECLARE @faci_endate DATETIME
    DECLARE @faci_low_price MONEY
    DECLARE @faci_high_price MONEY
    DECLARE @faci_rate_price MONEY
    DECLARE @faci_discount SMALLMONEY = 0
    DECLARE @faci_tax_rate SMALLMONEY = 0
    DECLARE @faci_modified_date DATETIME 

    --syntax
    SELECT 
        @faci_startdate = i.faci_startdate
        ,@faci_endate = i.faci_endate
        ,@faci_low_price =  i.faci_low_price
        ,@faci_high_price = i.faci_high_price
        ,@faci_rate_price = i.faci_rate_price
        ,@faci_discount = ISNULL(i.faci_discount, 0)
        ,@faci_tax_rate =  ISNULL(i.faci_tax_rate, 0)
        ,@faci_modified_date = GETDATE()
        ,@faci_id =  i.faci_id
    FROM inserted i

    INSERT INTO Hotel.Facility_Price_History(
		faph_startdate
		,faph_enddate
		,faph_low_price
		,faph_high_price
		,faph_rate_price
		,faph_discount
		,faph_tax_rate
		,faph_modified_date
		,faph_faci_id
	)
    VALUES(
        @faci_startdate
        ,@faci_endate
        ,@faci_low_price
        ,@faci_high_price
        ,@faci_rate_price
        ,@faci_discount
        ,@faci_tax_rate
        ,@faci_modified_date
        ,@faci_id
    )
END;

CREATE TRIGGER Hotel.tr_Hotel_Facilities
ON Hotel.Facilities
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Hotel.Facilities
    SET faci_modified_date = GETDATE()
    FROM Hotel.Facilities;
END;
