SELECT TOP(5) WITH TIES
    state
    , COUNT(*) AS n_businesses
FROM yelp_business
WHERE stars = 5
GROUP BY state
ORDER BY n_businesses DESC
