USE [DSTRAINING]
GO
/****** Object:  StoredProcedure [dbo].[BLD_WRK_CustomerList]    Script Date: 07/09/2023 01:37:01 ******/
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
-- TRUNCATE TABLE     
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
	   RIGHT('0000000'+[Customer ID],7)    --ADD 3zero(000) to Customer ID 
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