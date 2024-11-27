SELECT TOP(5)
      name
    , review_count
FROM
    yelp_business
ORDER BY
    review_count DESC
