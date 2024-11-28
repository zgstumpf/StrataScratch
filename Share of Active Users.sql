WITH US_Users AS (
    SELECT 
        *
    FROM fb_active_users
    WHERE country = 'USA'
)
SELECT 
    CAST(
        SUM(
            CASE
                WHEN status = 'open' THEN 1
                ELSE 0
            END
        ) 
    AS float)
    / COUNT(*) AS active_users_share
FROM US_Users
