-- 출생 지역을 알고 싶음
SELECT Home FROM dbo.BTS_Members;

-- 출생 지역 중복제거
SELECT DISTINCT Home FROM dbo.BTS_Members;

-- 어느 지역 멤버가 많으냐고
SELECT DISTINCT Home, Count(Home) AS CountHome FROM dbo.BTS_Members GROUP BY Home;
