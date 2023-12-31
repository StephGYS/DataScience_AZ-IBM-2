USE [DSTRAINING]
GO
/****** Object:  StoredProcedure [dbo].[BLD_WRK_TransactionalData]    Script Date: 07/09/2023 00:31:57 ******/
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
    ,[Order Date]
    ,[Customer ID]
    ,[Region]
    ,[Rep]
    ,[Item]
    ,[Units]
    ,[Unit Price]

FROM [RAW_TransactionalData]
--(43 ligne(s) affectée(s))



END













/*
	-- THIS IS MY FIRST PROC

	SELECT * FROM [dbo].[RAW_CustomerList]

	SELECT * FROM [dbo].[RAW_TransactionalData]
END
*/