SELECT CART_ID
FROM (
    SELECT CART_ID, GROUP_CONCAT(NAME) NAME
    FROM CART_PRODUCTS
    GROUP BY CART_ID
     )TMP
WHERE TMP.NAME LIKE '%Yogurt%' AND TMP.NAME LIKE '%Milk%';