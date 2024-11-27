SELECT 
    COUNT(*) AS n_admins
FROM 
    worker
WHERE 
    department = 'Admin' 
    AND 
    MONTH(joining_date) >= 4 -- April
