-- ��� ������ �˰� ����
SELECT Home FROM dbo.BTS_Members;

-- ��� ���� �ߺ�����
SELECT DISTINCT Home FROM dbo.BTS_Members;

-- ��� ���� ����� �����İ�
SELECT DISTINCT Home, Count(Home) AS CountHome FROM dbo.BTS_Members GROUP BY Home;
