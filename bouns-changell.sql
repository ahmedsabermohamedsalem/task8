





use   BikeStores531    
 

-----bouns 

--bouns
--UPDATE JOIN
--Update the staff's email address to "newemail@example.com" for all staff members working in the store named "Santa Cruz Bikes"




UPDATE s
SET s.email = 'newemail@example.com'
FROM [sales].[staffs] s
JOIN [sales].[stores] st
    ON st.store_id = s.store_id
WHERE st.store_name = 'Santa Cruz Bikes';








