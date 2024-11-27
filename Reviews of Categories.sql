-- https://www.sqlservercentral.com/articles/understanding-and-using-apply-part-1

WITH ReviewsPerBusinessPerCategory AS (
    SELECT
          business_id
        , review_count
        , value AS category
        , categories AS all_categories_of_business
    FROM
        yelp_business
    CROSS APPLY
        STRING_SPLIT(categories, ';')
)
SELECT
      category
    , SUM(review_count) AS review_count
FROM
    ReviewsPerBusinessPerCategory
GROUP BY
    category
ORDER BY
    review_count DESC
