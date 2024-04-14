-- Description
-- 낚시앱에서 사용하는 FISH_INFO 테이블은 잡은 물고기들의 정보를 담고 있습니다. FISH_INFO 테이블의 구조는 다음과 같으며 ID, FISH_TYPE, LENGTH, TIME은 각각 잡은 물고기의 ID, 물고기의 종류(숫자), 잡은 물고기의 길이(cm), 물고기를 잡은 날짜를 나타냅니다.

-- Column name	Type	Nullable
-- ID	INTEGER	FALSE
-- FISH_TYPE	INTEGER	FALSE
-- LENGTH	FLOAT	TRUE
-- TIME	DATE	FALSE
-- 단, 잡은 물고기의 길이가 10cm 이하일 경우에는 LENGTH 가 NULL 이며, LENGTH 에 NULL 만 있는 경우는 없습니다.

-- 문제
-- FISH_INFO 테이블에서 가장 큰 물고기 10마리의 ID와 길이를 출력하는 SQL 문을 작성해주세요. 결과는 길이를 기준으로 내림차순 정렬하고, 길이가 같다면 물고기의 ID에 대해 오름차순 정렬해주세요. 단, 가장 큰 물고기 10마리 중 길이가 10cm 이하인 경우는 없습니다.

-- ID 컬럼명은 ID, 길이 컬럼명은 LENGTH로 해주세요.

-- 예시
-- 예를 들어 FISH_INFO 테이블이 다음과 같다면

-- ID	FISH_TYPE	LENGTH	TIME
-- 0	0	30	2021/12/04
-- 1	0	50	2020/03/07
-- 2	0	40	2020/03/07
-- 3	1	20	2022/03/09
-- 4	1	NULL	2022/04/08
-- 5	2	13	2021/04/28
-- 6	3	60	2021/07/27
-- 7	0	55	2021/01/18
-- 8	2	73	2020/01/28
-- 9	3	73	2021/04/08
-- 10	2	22	2020/06/28
-- 11	2	17	2022/12/23
-- 이 때 가장 큰 물고기 10마리는 물고기의 ID 4, 5를 제외한 나머지 입니다. 결과를 길이 에 대해 내림차순 정렬하고, 길이가 같다면 물고기의 ID에 대해 오름차순 정렬하면 다음과 같습니다

-- ID	LENGTH
-- 8	73
-- 9	73
-- 6	60
-- 7	55
-- 1	50
-- 2	40
-- 0	30
-- 10	22
-- 3	20
-- 11	17





SELECT ID, LENGTH 
FROM FISH_INFO
ORDER BY LENGTH DESC, ID ASC
LIMIT 10;

