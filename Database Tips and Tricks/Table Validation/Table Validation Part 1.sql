/*----------------------------------------------------
Scott Peters
https://advancedsqlpuzzles.com
Last Updated: 10/06/2022
Microsoft SQL Server T-SQL

*/----------------------------------------------------

DROP TABLE IF EXISTS ##TableInformation;
GO

CREATE TABLE ##TableInformation
(LookupID SMALLINT PRIMARY KEY,
Schema1Name VARCHAR(250) NOT NULL,
Schema2Name VARCHAR(250) NOT NULL,
Table1Name VARCHAR(250) NOT NULL,
Table2Name VARCHAR(250) NOT NULL,
Exists1 VARCHAR(1000) NOT NULL,    -- Join condition between Table 1 and Table 2
Exists2 VARCHAR(1000) NOT NULL);   -- Join condition between Table 1 and Table 2
GO


INSERT INTO ##TableInformation VALUES (
1---------------LookupID
,'dbo'----------Schema1Name
,'dbo'----------Schema2Name
,'MyTable1'-----Table1Name
,'MyTable2'-----Table2Name
,'CONCAT(t1.CustID, t1.Region, t1.City)'--Exists1 (this must have the prefix "t1.")
,'CONCAT(t2.CustID, t2.Region, t2.City)'--Exists2 (this must have the prefix "t2.")
);
GO
