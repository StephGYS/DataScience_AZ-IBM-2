
/****** Script de la commande SelectTopNRows à partir de SSMS  ******/
/*
Commentaire 
*/

SELECT TOP 1000 [Order ID]
      ,[Product Name]
      ,[Discount]
      ,[Sales]  --This column shows sales in dollars
      ,[Quantity]
      ,[Category]
  FROM [DSTRAINING].[dbo].[OrderBreakdown]