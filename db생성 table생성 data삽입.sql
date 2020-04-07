/* Database 생성하기 */
USE master
GO
IF NOT EXISTS (
   SELECT name
   FROM sys.databases
   WHERE name = N'TutorialBasic'
)
CREATE DATABASE [TutorialBasic]
GO


/* Table 생성하기 */
USE [TutorialBasic] 

IF OBJECT_ID('dbo.mycatsanddogs', 'U') IS NOT NULL 
DROP TABLE dbo.mycatsanddogs
GO 

CREATE TABLE dbo.mycatsanddogs
( 
   Name      [NVARCHAR](50)  NOT NULL PRIMARY KEY, -- primary key column 
   Species  [NVARCHAR](50)  NOT NULL, 
   Breeds  [NVARCHAR](50)  NOT NULL, 
   Size  [NVARCHAR](50)  NOT NULL, 
   Age  INT NOT NULL,  
   EaseofTraining     [NVARCHAR](50)  NOT NULL
)

INSERT INTO dbo.mycatsanddogs 
   ([Name],[Species], [Breeds],[Size],[Age], [EaseofTraining]) 
VALUES 
	(N'송', N'Dog', N'Maltese',N'Medium',8, N'Average'),
    (N'민식',N'Dog', N'Beagle',N'Monster', 12, N'Difficult'), 
    (N'박사님',N'Dog', N'Chihauhau',N'Small', 15, N'Easy'), 
    (N'꾸이', N'Cat', N'Russian Blue', N'Medium', 3, N'Difficult'), 
    (N'호이', N'Cat', N'Domestic', N'Medium', 2, N'Crazy'), 
	(N'치즈', N'Cat', N'Stray', N'Large', 4, N'Average')
GO