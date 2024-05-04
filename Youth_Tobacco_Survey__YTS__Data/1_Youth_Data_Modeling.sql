CREATE DATABASE Youth;
use Youth;
drop table Youth_Tobacco_Survey;
CREATE TABLE Youth_Tobacco_Survey (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Year int,
    LocationAbbr VARCHAR(255),
    LocationDesc VARCHAR(255),
    TopicType VARCHAR(255),
    TopicDesc VARCHAR(255),
    MeasureDesc VARCHAR(255),
    DataSource VARCHAR(255),
    Response VARCHAR(255),
    Data_Value_Unit VARCHAR(255),
    Data_Value_Type VARCHAR(255),
    Data_Value FLOAT,
    Data_Value_Footnote_Symbol VARCHAR(255),
    Data_Value_Footnote VARCHAR(255),
    Data_Value_Std_Err FLOAT,
    Low_Confidence_Limit FLOAT,
    High_Confidence_Limit FLOAT,
    Sample_Size INT,
    Gender VARCHAR(255),
    Race VARCHAR(255),
    Age VARCHAR(255),
    Education VARCHAR(255),
    GeoLocation VARCHAR(255), -- Assuming alphanumeric format
    TopicTypeId VARCHAR(255),
    TopicId VARCHAR(255), -- Assuming alphanumeric format
    MeasureId VARCHAR(255), -- Assuming alphanumeric format
    StratificationID1 VARCHAR(255), -- Assuming alphanumeric format
    StratificationID2 VARCHAR(255), -- Assuming alphanumeric format
    StratificationID3 VARCHAR(255), -- Assuming alphanumeric format
    StratificationID4 VARCHAR(255), -- Assuming alphanumeric format
    SubMeasureID VARCHAR(255), -- Assuming alphanumeric format
    DisplayOrder INT
);

