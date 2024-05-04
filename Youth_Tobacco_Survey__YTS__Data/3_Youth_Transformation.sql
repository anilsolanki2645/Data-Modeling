-- Transformation or Cleaning of data for Analysis

USE Youth;

DESC Youth_Tobacco_Survey;

SELECT * FROM Youth_Tobacco_Survey;

-- Drop unnecessary columns From Table

-- [1] Drop Data_Value_Footnote_Symbol column
SELECT Data_Value_Footnote_Symbol FROM Youth_Tobacco_Survey;
ALTER TABLE Youth_Tobacco_Survey
DROP COLUMN Data_Value_Footnote_Symbol;

-- [2] Drop Data_Value_Footnote_Symbol column
SELECT Data_Value_Footnote FROM Youth_Tobacco_Survey;
ALTER TABLE Youth_Tobacco_Survey
DROP COLUMN Data_Value_Footnote;

-- [3] Drop Data_Value_Unit column
SELECT Data_Value_Unit FROM Youth_Tobacco_Survey;
ALTER TABLE Youth_Tobacco_Survey
DROP COLUMN Data_Value_Unit;

-- [4] Drop Data_Value_Type column
SELECT Data_Value_Type FROM Youth_Tobacco_Survey;
ALTER TABLE Youth_Tobacco_Survey
DROP COLUMN Data_Value_Type;

-- Remove Null Values Rows From All the Columns 

DELETE FROM Youth_Tobacco_Survey
WHERE Year IS NULL OR LocationAbbr IS NULL OR LocationDesc IS NULL OR TopicType IS NULL
OR Year IS NULL OR TopicDesc IS NULL OR MeasureDesc IS NULL OR DataSource IS NULL
OR Year IS NULL OR Response IS NULL OR Data_Value IS NULL OR Data_Value_Std_Err IS NULL
OR Year IS NULL OR Low_Confidence_Limit IS NULL OR High_Confidence_Limit IS NULL OR Sample_Size IS NULL
OR Year IS NULL OR Gender IS NULL OR Race IS NULL OR Age IS NULL
OR Year IS NULL OR Education IS NULL OR GeoLocation IS NULL OR TopicTypeId IS NULL
OR Year IS NULL OR TopicId IS NULL OR MeasureId IS NULL OR StratificationID1 IS NULL
OR Year IS NULL OR StratificationID2 IS NULL OR StratificationID3 IS NULL OR StratificationID4 IS NULL
OR Year IS NULL OR SubMeasureID IS NULL OR DisplayOrder IS NULL;