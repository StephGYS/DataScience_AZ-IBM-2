USE [DSTRAINING]
GO
/****** Object:  StoredProcedure [dbo].[BLD_WRK_CustomerList]    Script Date: 06/09/2023 23:47:44 ******/
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

	-- THIS IS MY FIRST PROC

	SELECT * FROM [dbo].[RAW_CustomerList]

END
