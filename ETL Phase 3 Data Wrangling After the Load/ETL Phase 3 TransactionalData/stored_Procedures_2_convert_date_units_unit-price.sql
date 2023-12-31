USE [DSTRAINING]
GO
/****** Object:  StoredProcedure [dbo].[BLD_WRK_TransactionalData]    Script Date: 07/09/2023 01:48:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Steph Gys
-- Create date: 20230906
-- Description:	RAW -> WRK
-- MOD DATE:   
-- =============================================


ALTER PROC [dbo].[BLD_WRK_TransactionalData]


AS
BEGIN

-- =============================================
-- DROP TABLE    
-- =============================================
IF OBJECT_ID('WRK_TransactionalData') IS NOT NULL
DROP TABLE [WRK_TransactionalData]

-- =============================================
-- CREATE TABLE    
-- =============================================

CREATE TABLE [WRK_TransactionalData]
(
      [RowNumber]		 INT IDENTITY(1,1)
	  ,[Order ID]		 VARCHAR(100) -- NO CONSIDER AS INT
      ,[Order Date]		 DATE
      ,[Customer ID]	 VARCHAR(100) -- NO CONSIDER AS INT
      ,[Region]			 VARCHAR(1) -- NO CONSIDER AS INT
      ,[Rep]			 VARCHAR(100)
      ,[Item]			 VARCHAR(1000)
      ,[Units]			 INT
      ,[Unit Price]		 FLOAT
      
)

-- =============================================
-- TRUNCATE TABLE     
-- =============================================
TRUNCATE TABLE [WRK_TransactionalData]


-- =============================================
-- INSERT INTO     
-- =============================================
INSERT INTO [WRK_TransactionalData]
(
	  [Order ID]		 
      ,[Order Date]		 
      ,[Customer ID]	 
      ,[Region]			 
      ,[Rep]			 
      ,[Item]			 
      ,[Units]			 
      ,[Unit Price]		 		 
)
SELECT
	   [Order ID]
      ,CONVERT(DATE,[Order Date],20)  --varchar() to  date (oneline: tsql convert)
      ,[Customer ID]
      ,[Region]
      ,[Rep]
      ,[Item]
      ,CAST([Units] as INT) --varchar() to  INT
      ,CAST([Unit Price] as FLOAT) --varchar() to  float
FROM [RAW_TransactionalData]
--(x ligne(s) affectée(s))



END













/*
	-- THIS IS MY FIRST PROC

	SELECT * FROM [dbo].[RAW_CustomerList]

	SELECT * FROM [dbo].[RAW_TransactionalData]

	SELECT * FROM [dbo].[WRK_TransactionalData]
END
*/