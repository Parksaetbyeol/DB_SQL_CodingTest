SELECT TITLE, B.BOARD_ID, REPLY_ID
    , R.WRITER_ID, R.CONTENTS, DATE_FORMAT(R.CREATED_DATE, '%Y-%m-%d') CREATED_DATE
FROM USED_GOODS_BOARD B JOIN USED_GOODS_REPLY R USING(BOARD_ID)
WHERE B.CREATED_DATE LIKE '2022-10%'
ORDER BY 6, 1

