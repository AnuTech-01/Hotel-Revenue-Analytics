USE hotel_rev_db;

SHOW TABLES;

SHOW KEYS FROM dim_hotels WHERE Key_name = 'PRIMARY';

-- fact_bookings
ALTER TABLE fact_bookings 
ADD CONSTRAINT fk_booking_hotel 
FOREIGN KEY (property_id) REFERENCES dim_hotels(property_id);

-- dim_rooms
SHOW KEYS FROM dim_rooms WHERE Key_name = 'PRIMARY';

SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'hotel_rev_db'
AND ((TABLE_NAME='dim_rooms' AND COLUMN_NAME='room_id')
  OR (TABLE_NAME='fact_bookings' AND COLUMN_NAME='room_category'));
  
ALTER TABLE fact_bookings 
ADD CONSTRAINT fk_booking_room 
FOREIGN KEY (room_category) REFERENCES dim_rooms(room_id);

SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'hotel_rev_db'
AND ((TABLE_NAME='dim_date' AND COLUMN_NAME='date')
  OR (TABLE_NAME='fact_bookings' AND COLUMN_NAME='check_in_date'));
  
ALTER TABLE fact_bookings 
ADD CONSTRAINT fk_booking_date 
FOREIGN KEY (check_in_date) REFERENCES dim_date(date);

SELECT TABLE_NAME, COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'hotel_rev_db'
AND TABLE_NAME = 'fact_aggregated_bookings'
AND COLUMN_NAME IN ('property_id', 'check_in_date', 'room_category');

ALTER TABLE fact_aggregated_bookings 
ADD CONSTRAINT fk_agg_hotel 
FOREIGN KEY (property_id) REFERENCES dim_hotels(property_id);

ALTER TABLE fact_aggregated_bookings 
ADD CONSTRAINT fk_agg_date 
FOREIGN KEY (check_in_date) REFERENCES dim_date(date);

ALTER TABLE fact_aggregated_bookings 
ADD CONSTRAINT fk_agg_room 
FOREIGN KEY (room_category) REFERENCES dim_rooms(room_id);


