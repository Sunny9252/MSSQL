
-- SELECT CONVERT(varchar, GETDATE(), 1) AS Without_Century, 
--     CONVERT(varchar, GETDATE(), 101) AS With_Century;

SELECT CONVERT(varchar, GETDATE(), 101) AS United_States 
    , CONVERT(varchar, GETDATE(), 102) AS ANSI
    , CONVERT(varchar, GETDATE(), 103) AS UK_France
    , CONVERT(varchar, GETDATE(), 104) AS Germany
    , CONVERT(varchar, GETDATE(), 105) AS Italy;

    