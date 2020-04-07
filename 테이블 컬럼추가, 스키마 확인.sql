-- 데이터베이스(e.g. TutorialBTSDB)의 현재 데이터 정렬 확인하기
-- SELECT CONVERT (VARCHAR(50), DATABASEPROPERTYEX('TutorialBTSDB','collation'));

-- SELECT * FROM sys.fn_helpcollations();

-- USE TutorialBTSDB
-- SELECT * 
-- FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_CATALOG = 'TutorialBTSDB';

-- SELECT *
-- FROM TutorialBTSDB.INFORMATION_SCHEMA.COLUMNS
-- WHERE TABLE_NAME = N'BTS_Members';



-- -- varchar 데이터 타입을 갖는 컬럼 추가
-- ALTER TABLE dbo.BTS_Members ADD Character_VC varchar(50);

-- -- nvarchar 데이터 타입을 갖는 컬럼 추가
-- ALTER TABLE dbo.BTS_Members ADD Character_NVC nvarchar(50);



-- SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_SET_NAME, COLLATION_NAME
-- FROM TutorialBTSDB.INFORMATION_SCHEMA.COLUMNS
-- WHERE TABLE_NAME = N'BTS_Members';


-- INSERT INTO dbo.BTS_Members 
--    ([MemberId],[Name], [Role],[Home],[FullName], [Character_VC],[Character_NVC]) 
-- VALUES 
-- 	(10, N'Emoji😃😃 !!', 0, 0, 0, 0,'Emoji😃😃 !!', N'Emoji😃😃 !!'), 
-- 	(11, N'Emoji😃😃_without N', 0, 0, 0, 0,'Emoji😃😃_without N', 'Emoji😃😃_without N') 
-- GO




-- SELECT * FROM dbo.BTS_Members;
SELECT MemberId, Name, Character_VC, Character_NVC FROM dbo.BTS_Members WHERE MemberId=10 OR MemberId=11;