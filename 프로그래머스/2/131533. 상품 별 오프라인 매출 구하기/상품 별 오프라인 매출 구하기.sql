-- 코드를 입력하세요

SELECT PRODUCT_CODE, SUM(PRICE * SALES_AMOUNT) AS SALES
FROM PRODUCT P RIGHT JOIN OFFLINE_SALE O 
ON P.PRODUCT_ID = O.PRODUCT_ID
GROUP BY 1
ORDER BY 2 DESC, 1


