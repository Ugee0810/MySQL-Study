#날짜 : 2022/06/15
#이름 : 송환욱
#내용 : 교재 2장 테이블에서 데이터 검색
#p52
#테이블 생성
CREATE TABLE `SAMPLE21` (
	`NO`       INT AUTO_INCREMENT PRIMARY KEY,
	`NAME`     VARCHAR(10),
	`BIRTHDAY` CHAR(10),
	`ADDRESS`  VARCHAR(100)
);

#데이터 입력
INSERT INTO `SAMPLE21` (`NAME`, `BIRTHDAY`, `ADDRESS`) VALUES ('박준용', '1976-10-18', '대구광역시');
INSERT INTO `SAMPLE21` (`NAME`, `ADDRESS`) 				 VALUES ('김재진', '대구광역시 동구');
INSERT INTO `SAMPLE21` (`NAME`, `ADDRESS`) 				 VALUES ('홍길동', '서울특별시');

#p53 : SELCET * FROM 테이블명 -> 전체 조회
SELECT * FROM `SAMPLE21`;

#p62 : DESC 명령 -> 테이블 구조 참조
DESC `SAMPLE21`;

#p66 : SELECT 구에서 열 지정하기 
SELECT `NO`, `NAME` FROM `SAMPLE21`;

#p68 : WHERE 구
SELECT * FROM `SAMPLE21` WHERE `NO` = 2;

#p70 : NO 열 값이 2가 아닌 행만 검색
SELECT * FROM `SAMPLE21` WHERE `NO` <> 2;

#p71 : NAME 열 값이 '박준용'인 행만 추출
SELECT * FROM `SAMPLE21` WHERE `NAME` = '박준용';

#p72 : 연산자로 NULL 검색하기
SELECT * FROM `SAMPLE21` WHERE `BIRTHDAY` = NULL;

#p73 : IS NULL로 NULL 검색하기
SELECT * FROM `SAMPLE21` WHERE `BIRTHDAY` IS NULL;

#p76 : SAMPLE24 테이블
CREATE TABLE `SAMPLE24` (
	`NO` INT AUTO_INCREMENT PRIMARY KEY,
	`A`  INT,
	`B`  INT,
	`C`  INT
);

INSERT INTO `SAMPLE24` (`A`, `B`, `C`) VALUE (1, 0, 0);
INSERT INTO `SAMPLE24` (`A`, `B`, `C`) VALUE (0, 1, 0);
INSERT INTO `SAMPLE24` (`A`, `B`, `C`) VALUE (0, 0, 1);
INSERT INTO `SAMPLE24` (`A`, `B`, `C`) VALUE (2, 2, 0);
INSERT INTO `SAMPLE24` (`A`, `B`, `C`) VALUE (1, 2, 2);

#p77 : AND 연산자로 조건식 조합하기(A 열과 B 열이 모두 0이 아닌 행 검색)
SELECT * FROM `SAMPLE24` WHERE `A` <> 0 AND `B` <> 0;

#p78 : A 열이 0이 아니거나 B 열이 0이 아닌 행을 검색
SELECT * FROM `SAMPLE24` WHERE `A` <> 0 OR `B` <> 0;

#p80 : A 열이 1 또는 2이고, B 열이 1 또는 2인 행을 검색
SELECT * FROM `SAMPLE24` WHERE `A` = 1 OR `A` = 2 AND `B` = 1 OR `B` = 2;

#p82 : A 열이 0이 아니거나 B 열이 0이 아닌 행을 제외한 나머지 행을 검색
SELECT * FROM `SAMPLE24` WHERE NOT(`A` <> 0 OR `B` <> 0);

#p85-1 : SAMPLE25 테이블
CREATE TABLE `SAMPLE25` (
	`NO`   INT AUTO_INCREMENT PRIMARY KEY,
	`TEXT` VARCHAR(100)
);

INSERT INTO `SAMPLE25` (`TEXT`) VALUES ('SQL은 RDBMS를 조작하는 언어이다.');
INSERT INTO `SAMPLE25` (`TEXT`) VALUES ('LIKE에서는 메타문자 %와 _를 사용할 수 있다.');
INSERT INTO `SAMPLE25` (`TEXT`) VALUES ('LIKE는 SQL에서 사용할 수 있는 술어 중 하나이다.');

#p85-2 : LIKE 술어 `SQL%`로 패턴 매칭(전방 일치)
SELECT * FROM `SAMPLE25` WHERE `TEXT` LIKE 'SQL%';

#p86 : TEXT 열 데이터에 'SQL'을 포함하는 행을 검색
SELECT * FROM `SAMPLE25` WHERE `TEXT` LIKE '%SQL%';

#p88 : TEXT 열이 %를 포함하는 행을 검색
SELECT * FROM `SAMPLE25` WHERE `TEXT` LIKE '%\%%';