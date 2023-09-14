/* JOIN */

USE DSTRAINING
GO 




/*
SELECT *
FROM [ListOfOrders] as A --renaming
LEFT JOIN [OrderBreakdown] B --other renaming
ON A.[Order ID] = B.[Order ID] --The same order
*/

/*
SELECT *
FROM [ListOfOrders] as A 
FULL JOIN [OrderBreakdown] B 
ON A.[Order ID] = B.[Order ID] 
*/

SELECT *
FROM [ListOfOrders] as A
LEFT OUTER JOIN [OrderBreakdown] B 
ON A.[Order ID] = B.[Order ID] 