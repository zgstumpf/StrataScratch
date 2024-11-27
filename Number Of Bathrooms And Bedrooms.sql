SELECT
      city
    , property_type
    , AVG(CAST(bathrooms AS float))
    , AVG(CAST(bedrooms AS float))
FROM
    airbnb_search_details
GROUP BY
      city
    , property_type
