USE TutorialMerge
MERGE dbo.dogandcat AS target  /* target table 지정 */
USING dbo.cat AS source  /* source table 지정 */
ON source.Name = target.Name  /* 조건 설정(Name이 같은 경우) */

/* 조건이 맞을 때(두 테이블에 있는 이름이 같을 때) UPDATE */
WHEN MATCHED THEN
    UPDATE SET target.Name = source.Name, target.Breeds = source.Breeds

/* 조건이 맞지 않을 때(이름이 다를 때) INSERT */
WHEN NOT MATCHED BY TARGET THEN
    INSERT (Name, Breeds, Size, EaseofTraining)
    VALUES(source.Name, source.Breeds, source.Size, source.EaseofTraining)

/* 조건이 맞지 않을 때(source table에 정보가 없을 때) DELETE */
WHEN NOT MATCHED BY SOURCE THEN
    DELETE;

SELECT * FROM dbo.dog;