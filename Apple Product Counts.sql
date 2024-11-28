WITH UsersWithAppleOrNot AS (
    SELECT
        playbook_users.user_id
        , language
        , CASE
            WHEN 
                SUM(
                    CASE
                        WHEN playbook_events.device IN ('macbook pro', 'iphone 5s', 'ipad air') THEN 1
                        ELSE 0
                    END
                ) > 0 THEN 1 ELSE 0
          END AS is_apple_user
    FROM playbook_users
    JOIN playbook_events ON playbook_users.user_id = playbook_events.user_id
    GROUP BY playbook_users.user_id, playbook_users.language
)
SELECT
    language
    , SUM(is_apple_user) AS n_apple_users
    , COUNT(*) AS n_total_users
FROM UsersWithAppleOrNot
GROUP BY language
ORDER BY n_total_users DESC
