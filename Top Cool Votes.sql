SELECT TOP(1) WITH TIES
      business_name
    , review_text
FROM
    yelp_reviews
ORDER BY
    cool DESC
