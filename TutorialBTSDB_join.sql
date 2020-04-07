--USE master
--SELECT * FROM TutorialBTSDB.dbo.BTS_Members
--FULL OUTER JOIN TutorialBTStoJoin.dbo.BTS_Members_tojoin
--ON TutorialBTSDB.dbo.BTS_Members.Name = TutorialBTStoJoin.dbo.BTS_Members_tojoin.Name
--GO


USE master
SELECT * FROM TutorialBTSDB.dbo.BTS_Members
RIGHT JOIN TutorialBTStoJoin.dbo.BTS_Members_tojoin 
ON TutorialBTSDB.dbo.BTS_Members.Name = TutorialBTStoJoin.dbo.BTS_Members_tojoin.Name
WHERE TutorialBTSDB.dbo.BTS_Members.Name IS NULL
GO