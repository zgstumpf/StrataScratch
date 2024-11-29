WITH DistinctHosts AS (
    SELECT
        *
    FROM airbnb_hosts
    GROUP BY host_id, nationality, gender, age
)
SELECT
      host.host_id
    , guest.guest_id
FROM 
    DistinctHosts host
JOIN 
    airbnb_guests guest 
ON 
    host.gender = guest.gender  
    AND
    host.nationality = guest.nationality
