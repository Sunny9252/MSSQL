USE master
SELECT * FROM TutorialBTSDB.dbo.BTS_Members
GO

INSERT INTO TutorialBTStoJoin.dbo.BTS_Members_tojoin (Name)
SELECT Name FROM TutorialBTSDB.dbo.BTS_Members
GO

SELECT * FROM TutorialBTStoJoin.dbo.BTS_Members_tojoin
GO