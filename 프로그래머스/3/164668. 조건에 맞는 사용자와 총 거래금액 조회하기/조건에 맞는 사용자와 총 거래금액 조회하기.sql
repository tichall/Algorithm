SELECT USER_ID, NICKNAME, TOTAL_SALES
FROM  
(
SELECT U.USER_ID, U.NICKNAME, SUM(PRICE) TOTAL_SALES
FROM USED_GOODS_BOARD B LEFT JOIN USED_GOODS_USER U
ON B.WRITER_ID = U.USER_ID
WHERE STATUS = 'DONE'
GROUP BY 1
) A
WHERE TOTAL_SALES >= 700000
ORDER BY 3