-- 코드를 입력하세요
SELECT A.member_name, B.review_text, DATE_FORMAT(B.review_date,'%Y-%m-%d') 'REVIEW_DATE'
FROM member_profile A INNER JOIN rest_review B ON A.member_id = B.member_id
WHERE A.member_id = (SELECT member_id 
                     FROM rest_review
                        GROUP BY member_id
                        ORDER BY COUNT(review_id) DESC
                        LIMIT 1)
ORDER BY B.review_date, review_text