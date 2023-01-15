DECLARE @ModiDateFaci DATETIME;

DECLARE AutoDateFacilities CURSOR FOR
SELECT faci_modified_date FROM Hotel.Facilities WHERE faci_modified_date IS NULL;

OPEN AutoDateFacilities;

FETCH NEXT FROM AutoDateFacilities INTO @ModiDateFaci;

WHILE @@FETCH_STATUS = 0
BEGIN
   UPDATE Hotel.Facilities
   SET faci_modified_date = GETDATE()
   WHERE CURRENT OF AutoDateFacilities;
   
   FETCH NEXT FROM AutoDateFacilities INTO @ModiDateFaci;
END

CLOSE AutoDateFacilities;
DEALLOCATE AutoDateFacilities;
