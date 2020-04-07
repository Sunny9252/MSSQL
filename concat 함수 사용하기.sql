SELECT Name, Description FROM fn_helpcollations()
WHERE Name LIKE 'Japanese_Bushu_Kakusu_140%' OR Name LIKE 'Japanese_XJIS_140%';

-- SELECT CONCAT ( 'Happy ', 'Birthday ', 11, '/', '25' ) AS Result;




-- SELECT CONCAT('가','J',' 같은',' my ','회사');
-- SELECT CONCAT('Varchar',' !!!!','¾', ' ¿', ' À');




-- SELECT * FROM dbo.BTS_Members;

-- SELECT (Name + KoreanName + Role) AS NewName FROM dbo.BTS_Members;

-- SELECT (Name + '@' + KoreanName + '@' + Role) AS NewName 
-- FROM dbo.BTS_Members;


-- SELECT CONCAT_WS('@', 'Giant Peng','ebs.co.kr');


-- SELECT CONCAT_WS('@', 'Varchar',' !!!!','¾', ' ¿', ' À');

-- SELECT CONCAT_WS('@', Name, KoreanName, Role) AS NewName 
-- FROM dbo.BTS_Members;


-- SELECT Name, CONCAT('-', Name, KoreanName, Role) AS NewName FROM dbo.BTS_Members;
