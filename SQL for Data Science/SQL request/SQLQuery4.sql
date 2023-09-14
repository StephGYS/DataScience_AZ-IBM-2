USE DSTRAINING
GO

SELECT * FROM [P12-OrderBreakdown]
WHERE 
(
	[Category] = 'Furniture'
	AND 
	Convert(FLOAT,[Sales]) > 100
)
OR [Category] = 'Technology'