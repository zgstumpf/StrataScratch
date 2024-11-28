WITH NumberProductsPerYearPerCompany AS (
    SELECT
        year
        , company_name
        , COUNT(product_name) AS new_products
    FROM car_launches
    GROUP BY year, company_name
)
SELECT
    Year2019.company_name,
    Year2020.new_products - Year2019.new_products AS net_products
FROM NumberProductsPerYearPerCompany Year2019
JOIN NumberProductsPerYearPerCompany Year2020
ON 
    Year2019.company_name = Year2020.company_name
    AND Year2019.year = 2019
    AND Year2020.year = 2020
    
