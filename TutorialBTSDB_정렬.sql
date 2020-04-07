-- docs.microsoft.com/ko-kr/sql/relational-databases/collations/collation-and-unicode-support?view=sql-server-ver15 

-- �������� ����� �� �ִ� ��� ������ ���� Ȯ���ϱ�
SELECT * FROM sys.fn_helpcollations();

-- �����ͺ��̽�(e.g. SunnyDB)�� ���� ������ ���� Ȯ���ϱ�
SELECT CONVERT (VARCHAR(50), DATABASEPROPERTYEX('SunnyDB','collation'));

-- �����ͺ��̽�(e.g. SunnyDB) ���� �����ϱ�
ALTER DATABASE SunnyDB COLLATE Vietnamese_100_CS_AI;

-- �ѱ��� ����
SELECT * FROM dbo.BTS_Members
ORDER BY Name
COLLATE Korean_Wansung_CI_AS  ASC;
GO

-- ����(�̱�, Latin 1) ����
SELECT * FROM dbo.BTS_Members
ORDER BY Name
COLLATE SQL_Latin1_General_CP1_CI_AS  ASC;
GO