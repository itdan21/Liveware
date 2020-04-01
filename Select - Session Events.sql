-- Session Events page query
SELECT [ID],[Username],[Event],[Event Date],[Event Time],[Instance],[Seats Used],[Reason],[Screen Type] 
FROM [Xpress Session Event] 
WHERE [Event Date] = '30 AUG 2019'
AND (([Event] = 'Login')) 
AND (([Screen Type] = 'Mobile'))
GROUP BY Username