SELECT
      department
    , COUNT(*) AS num_workers
FROM
    worker
WHERE 
    MONTH(joining_date) >= 4 -- April
GROUP BY
    department
ORDER BY 
    num_workers DESC
