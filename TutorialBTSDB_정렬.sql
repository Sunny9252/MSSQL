-- docs.microsoft.com/ko-kr/sql/relational-databases/collations/collation-and-unicode-support?view=sql-server-ver15 

-- 서버에서 사용할 수 있는 모든 데이터 정렬 확인하기
SELECT * FROM sys.fn_helpcollations();

-- 데이터베이스(e.g. SunnyDB)의 현재 데이터 정렬 확인하기
SELECT CONVERT (VARCHAR(50), DATABASEPROPERTYEX('SunnyDB','collation'));

-- 데이터베이스(e.g. SunnyDB) 정렬 변경하기
ALTER DATABASE SunnyDB COLLATE Vietnamese_100_CS_AI;

-- 한국어 정렬
SELECT * FROM dbo.BTS_Members
ORDER BY Name
COLLATE Korean_Wansung_CI_AS  ASC;
GO

-- 영어(미국, Latin 1) 정렬
SELECT * FROM dbo.BTS_Members
ORDER BY Name
COLLATE SQL_Latin1_General_CP1_CI_AS  ASC;
GO