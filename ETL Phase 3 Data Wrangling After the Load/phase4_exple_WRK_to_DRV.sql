USE DSTRAINING
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		
-- Create date: 
-- Description:	WRK -> DRV
--          COMBINING TABLES:  [WRK_CustomerList]
--							   [WRK_TansactionalData]
--			TO UNDERSTAND REVENUE SPLIT BY GENDER
-- MOD DATE:   
-- =============================================

ALTER PROC [dbo].[BLD_DRV_WRK_RevenueByCustomerGender]

AS

BEGIN

/*
DROP TABLE [DRV_WRK_RevenueByCustomerGender] --DELETE
*/

SELECT 
	A.[Customer ID]
	,A.Gender
	,B.[Units] * B.[Unit Price] as Revenue
INTO [DRV_WRK_RevenueByCustomerGender] --CREATE TABLE
FROM [dbo].[WRK_CustomerList] A
LEFT JOIN [dbo].[WRK_TransactionalData] B
ON A.[Customer ID] = B.[Customer ID]
--(43 ligne(s) affectée(s))

END