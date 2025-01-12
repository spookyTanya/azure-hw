CREATE TABLE raw_data (
    ID INT NOT NULL,
    NAME VARCHAR(255),
    HOST_ID INT,
    HOST_NAME VARCHAR(255),
    NEIGHBOURHOOD_GROUP VARCHAR(255),
    NEIGHBOURHOOD VARCHAR(255),
    LATITUDE FLOAT,
    LONGITUDE FLOAT,
    ROOM_TYPE VARCHAR(50),
    PRICE FLOAT,
    MINIMUM_NIGHTS INT,
    NUMBER_OF_REVIEWS INT,
    LAST_REVIEW DATE,
    REVIEWS_PER_MONTH FLOAT,
    CALCULATED_HOST_LISTINGS_COUNT FLOAT,
    AVAILABILITY_365 FLOAT
);

CREATE TABLE transformed_data (
    ID INT NOT NULL,
    NAME VARCHAR(255),
    HOST_ID INT,
    HOST_NAME VARCHAR(255),
    NEIGHBOURHOOD_GROUP VARCHAR(255),
    NEIGHBOURHOOD VARCHAR(255),
    LATITUDE FLOAT,
    LONGITUDE FLOAT,
    ROOM_TYPE VARCHAR(50),
    PRICE FLOAT,
    MINIMUM_NIGHTS INT,
    NUMBER_OF_REVIEWS INT,
    LAST_REVIEW DATE,
    REVIEWS_PER_MONTH FLOAT,
    CALCULATED_HOST_LISTINGS_COUNT FLOAT,
    AVAILABILITY_365 FLOAT
);

-- check if transformation was correct
SELECT * FROM dbo.transformed_data WHERE price = 0 OR latitude IS NULL OR longitude IS NULL;
