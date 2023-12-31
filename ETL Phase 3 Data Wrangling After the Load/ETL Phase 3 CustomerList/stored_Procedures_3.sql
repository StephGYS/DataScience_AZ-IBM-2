USE [DSTRAINING]
GO
/****** Object:  StoredProcedure [dbo].[BLD_WRK_CustomerList]    Script Date: 07/09/2023 00:31:57 ******/
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


ALTER PROC [dbo].[BLD_WRK_CustomerList]


AS
BEGIN

-- =============================================
-- DROP TABLE    --supprimer
-- =============================================
IF OBJECT_ID('WRK_CustomerList') IS NOT NULL
DROP TABLE [WRK_CustomerList]

-- =============================================
-- CREATE TABLE    
-- =============================================

CREATE TABLE [WRK_CustomerList]
(
      [RowNumber]		 INT IDENTITY(1,1)
      ,[Customer ID]     VARCHAR(100) --DUE TO NO MODIFY
      ,[City]			 VARCHAR(1000)
      ,[ZipCode]		 VARCHAR(5)   --DUE TO NO MODIFY
      ,[Gender]			 VARCHAR(1)
      ,[Age]			 FLOAT
)

-- =============================================
-- TRUNCATE TABLE     --vider les colonnes
-- =============================================
TRUNCATE TABLE [WRK_CustomerList]


-- =============================================
-- INSERT INTO     
-- =============================================
INSERT INTO [WRK_CustomerList]
(
	  [Customer ID]     
      ,[City]			 
      ,[ZipCode]		 
      ,[Gender]			
      ,[Age]			 
)
SELECT
	  [Customer ID]     
      ,[City]			 
      ,[ZipCode]		 
      ,[Gender]			
      ,[Age] 
FROM [RAW_CustomerList]
--(43 ligne(s) affectée(s))



END













/*
	-- THIS IS MY FIRST PROC

	SELECT * FROM [dbo].[RAW_CustomerList]

	SELECT * FROM [dbo].[RAW_TransactionalData]
END
*/