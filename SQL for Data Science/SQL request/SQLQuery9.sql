USE DSTRAINING
GO

--NULL
/*
UPDATE [OrderBreakdown]
SET Discount = NULL
WHERE DISCOUNT = 0.5
*/





SELECT *
FROM [OrderBreakdown]
--ORDER BY [Product Name] --ascendant ordering 
--ORDER BY [Product Name] DESC --descendant ordering 
--ORDER BY [Quantity] 
--ORDER BY CAST([Sales] as FLOAT) DESC --descendant ordering with float convertion
--ORDER BY CONVERT(FLOAT, [Sales])   --other convertion method
--ORDER BY CAST([Quantity] as INT)


--WHERE Discount is NULL
