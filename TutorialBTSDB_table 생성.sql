USE [TutorialBTSDB] 
-- Create a new table called 'BTS_Members' in schema 'dbo' 
-- Drop the table if it already exists 
IF OBJECT_ID('dbo.BTS_Members', 'U') IS NOT NULL 
DROP TABLE dbo.BTS_Members
GO 
-- Create the table in the specified schema 
CREATE TABLE dbo.BTS_Members
( 
   MemberId        INT    NOT NULL   PRIMARY KEY, -- primary key column 
   Name      [NVARCHAR](50)  NOT NULL, 
   Role  [NVARCHAR](50)  NOT NULL, 
   Home     [NVARCHAR](50)  NOT NULL,
   FullName     [NVARCHAR](50)  NOT NULL 
); 
GO


