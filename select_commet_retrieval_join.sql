-- Description
-- 다음은 중고거래 게시판 정보를 담은 USED_GOODS_BOARD 테이블과 중고거래 게시판 첨부파일 정보를 담은 USED_GOODS_REPLY 테이블입니다. USED_GOODS_BOARD 테이블은 다음과 같으며 BOARD_ID, WRITER_ID, TITLE, CONTENTS, PRICE, CREATED_DATE, STATUS, VIEWS은 게시글 ID, 작성자 ID, 게시글 제목, 게시글 내용, 가격, 작성일, 거래상태, 조회수를 의미합니다.

-- Column name	Type	Nullable
-- BOARD_ID	VARCHAR(5)	FALSE
-- WRITER_ID	VARCHAR(50)	FALSE
-- TITLE	VARCHAR(100)	FALSE
-- CONTENTS	VARCHAR(1000)	FALSE
-- PRICE	NUMBER	FALSE
-- CREATED_DATE	DATE	FALSE
-- STATUS	VARCHAR(10)	FALSE
-- VIEWS	NUMBER	FALSE
-- USED_GOODS_REPLY 테이블은 다음과 같으며 REPLY_ID, BOARD_ID, WRITER_ID, CONTENTS, CREATED_DATE는 각각 댓글 ID, 게시글 ID, 작성자 ID, 댓글 내용, 작성일을 의미합니다.

-- Column name	Type	Nullable
-- REPLY_ID	VARCHAR(10)	FALSE
-- BOARD_ID	VARCHAR(5)	FALSE
-- WRITER_ID	VARCHAR(50)	FALSE
-- CONTENTS	VARCHAR(1000)	TRUE
-- CREATED_DATE	DATE	FALSE
-- 문제
-- USED_GOODS_BOARD와 USED_GOODS_REPLY 테이블에서 2022년 10월에 작성된 게시글 제목, 게시글 ID, 댓글 ID, 댓글 작성자 ID, 댓글 내용, 댓글 작성일을 조회하는 SQL문을 작성해주세요. 결과는 댓글 작성일을 기준으로 오름차순 정렬해주시고, 댓글 작성일이 같다면 게시글 제목을 기준으로 오름차순 정렬해주세요.




SELECT 
    TITLE,  
    A.BOARD_ID, 
    REPLY_ID,
    B.WRITER_ID, 
    B.CONTENTS, 
    DATE_FORMAT(B.CREATED_DATE, '%Y-%m-%d') 
    CREATED_DATE
FROM USED_GOODS_BOARD A INNER JOIN USED_GOODS_REPLY  B 
ON B.BOARD_ID = A.BOARD_ID
WHERE DATE_FORMAT(A.CREATED_DATE, '%Y-%m') = '2022-10'
ORDER BY B.CREATED_DATE, TITLE;