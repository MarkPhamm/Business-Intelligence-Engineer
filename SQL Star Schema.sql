-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/CXphAq
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE `fact_table` (
    `vendor_id` int  NOT NULL ,
    `datetime_id` int  NOT NULL ,
    `passenger_count_id` int  NOT NULL ,
    `trip_distance_id` int  NOT NULL ,
    `pickup_location_id` int  NOT NULL ,
    `drop_location_id` int  NOT NULL ,
    `rate_code_id` int  NOT NULL ,
    `payment_type_id` int  NOT NULL ,
    `payment_type` text  NOT NULL ,
    `fare_amount` float  NOT NULL ,
    `extra` float  NOT NULL ,
    `mta_tax` float  NOT NULL ,
    `tip_amount` float  NOT NULL ,
    `tolls_amount` float  NOT NULL ,
    `improvement_surcharge` float  NOT NULL ,
    `total_amount` float  NOT NULL ,
    PRIMARY KEY (
        `vendor_id`
    )
);

CREATE TABLE `datetime_dim` (
    `datetime_id` int  NOT NULL ,
    `tpep_pickup_datetime` timestamp  NOT NULL ,
    `pick_hour` int  NOT NULL ,
    `pick_day` int  NOT NULL ,
    `pick_month` int  NOT NULL ,
    `pick_year` int  NOT NULL ,
    `pick_weekday` int  NOT NULL ,
    `tpep_dropoff_datetime` timestamp  NOT NULL ,
    `drop_hour` int  NOT NULL ,
    `drop_day` int  NOT NULL ,
    `drop_month` int  NOT NULL ,
    `drop_year` int  NOT NULL ,
    `drop_weekday` int  NOT NULL ,
    PRIMARY KEY (
        `datetime_id`
    )
);

CREATE TABLE `passenger_count_dim` (
    `passenger_count_id` int  NOT NULL ,
    `passenger_count` int  NOT NULL ,
    PRIMARY KEY (
        `passenger_count_id`
    )
);

CREATE TABLE `trip_distance_dim` (
    `trip_distance_id` int  NOT NULL ,
    `trip_distance` float  NOT NULL ,
    PRIMARY KEY (
        `trip_distance_id`
    )
);

CREATE TABLE `pickup_location_dim` (
    `pickup_location_id` int  NOT NULL ,
    `pickup_longitude` float  NOT NULL ,
    `pickup_latitude` float  NOT NULL ,
    PRIMARY KEY (
        `pickup_location_id`
    )
);

CREATE TABLE `drop_location_dim` (
    `drop_location_id` int  NOT NULL ,
    `drop_longitude` float  NOT NULL ,
    `drop_latitude` float  NOT NULL ,
    PRIMARY KEY (
        `drop_location_id`
    )
);

CREATE TABLE `rate_code_dim` (
    `rate_code_id` int  NOT NULL ,
    `RatecodeID` int  NOT NULL ,
    `rate_code_name` text  NOT NULL ,
    PRIMARY KEY (
        `rate_code_id`
    )
);

CREATE TABLE `payment_type_dim` (
    `payment_type_id` int  NOT NULL ,
    `payment_type` text  NOT NULL ,
    `payment_type_name` text  NOT NULL ,
    PRIMARY KEY (
        `payment_type_id`
    )
);

ALTER TABLE `datetime_dim` ADD CONSTRAINT `fk_datetime_dim_datetime_id` FOREIGN KEY(`datetime_id`)
REFERENCES `fact_table` (`datetime_id`);

ALTER TABLE `passenger_count_dim` ADD CONSTRAINT `fk_passenger_count_dim_passenger_count_id` FOREIGN KEY(`passenger_count_id`)
REFERENCES `fact_table` (`passenger_count_id`);

ALTER TABLE `trip_distance_dim` ADD CONSTRAINT `fk_trip_distance_dim_trip_distance_id` FOREIGN KEY(`trip_distance_id`)
REFERENCES `fact_table` (`trip_distance_id`);

ALTER TABLE `pickup_location_dim` ADD CONSTRAINT `fk_pickup_location_dim_pickup_location_id` FOREIGN KEY(`pickup_location_id`)
REFERENCES `fact_table` (`pickup_location_id`);

ALTER TABLE `drop_location_dim` ADD CONSTRAINT `fk_drop_location_dim_drop_location_id` FOREIGN KEY(`drop_location_id`)
REFERENCES `fact_table` (`drop_location_id`);

ALTER TABLE `rate_code_dim` ADD CONSTRAINT `fk_rate_code_dim_rate_code_id` FOREIGN KEY(`rate_code_id`)
REFERENCES `fact_table` (`rate_code_id`);

ALTER TABLE `payment_type_dim` ADD CONSTRAINT `fk_payment_type_dim_payment_type_id` FOREIGN KEY(`payment_type_id`)
REFERENCES `fact_table` (`payment_type_id`);

