#SQL 고급실습
#실습하기 5-1
#직원 테이블(Member)
departmentCREATE TABLE `Member` (
	`uid`   VARCHAR(10) PRIMARY key,
	`name`  VARCHAR(10) NOT NULL,
	`hp` 	  CHAR(13) 	  UNIQUE NOT NULL,
	`pos`   VARCHAR(10) NOT NULL DEFAULT '사원',
	`dep`   INT,
	`rdate` DATE        NOT NULL
);
#부서 테이블(Department)
CREATE TABLE `Department` (
	`depNo` INT         PRIMARY KEY,
	`name`  VARCHAR(10) NOT NULL,
	`tel`   CHAR(12)    NOT NULL
);
#매출 테이블(Sales)
CREATE TABLE `Sales` (
	`seq`   INT         AUTO_INCREMENT PRIMARY KEY,
	`uid`   VARCHAR(10) NOT NULL,
	`year`  YEAR        NOT NULL,
	`month` INT         NOT NULL,
	`sale`  INT         NOT NULL
);

#실습하기 5-2
#직원 테이블(Member)
INSERT INTO `Member` VALUES ('a101', '박혁거세', '010-1234-1001', '부장', 101, NOW());
INSERT INTO `Member` VALUES ('a102', '김유신',   '010-1234-1002', '차장', 101, NOW());
INSERT INTO `Member` VALUES ('a103', '김춘추',   '010-1234-1003', '사원', 101, NOW());
INSERT INTO `Member` VALUES ('a104', '장보고',   '010-1234-1004', '대리', 102, NOW());
INSERT INTO `Member` VALUES ('a105', '강감찬',   '010-1234-1005', '과장', 102, NOW());
INSERT INTO `Member` VALUES ('a106', '이성계',   '010-1234-1006', '차장', 103, NOW());
INSERT INTO `Member` VALUES ('a107', '정철',     '010-1234-1007', '차장', 103, NOW());
INSERT INTO `Member` VALUES ('a108', '이순신',   '010-1234-1008', '부장', 104, NOW());
INSERT INTO `Member` VALUES ('a109', '허균',     '010-1234-1009', '부장', 104, NOW());
INSERT INTO `Member` VALUES ('a110', '정약용',   '010-1234-1010', '사원', 105, NOW());
INSERT INTO `Member` VALUES ('a111', '박지원',   '010-1234-1011', '사원', 105, NOW());
#부서 테이블(Department)
INSERT INTO `Department` VALUES (101, '영업1부',    '051-512-1001');
INSERT INTO `Department` VALUES (102, '영업2부',    '051-512-1002');
INSERT INTO `Department` VALUES (103, '영업3부',    '051-512-1003');
INSERT INTO `Department` VALUES (104, '영업4부',    '051-512-1004');
INSERT INTO `Department` VALUES (105, '영업5부',    '051-512-1005');
INSERT INTO `Department` VALUES (106, '영업지원부', '051-512-1006');
INSERT INTO `Department` VALUES (107, '인사부',     '051-512-1007');
#매출 테이블(Sales)
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES('a101', 2018, 1, 98100); 
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES('a102', 2018, 1, 136000); 
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES('a103', 2018, 1, 80100); 
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES('a104', 2018, 1, 78000); 
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES('a105', 2018, 1, 93000); 
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES('a101', 2018, 2, 23500); 
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES('a102', 2018, 2, 126000); 
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES('a103', 2018, 2, 18500); 
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES('a105', 2018, 2, 19000); 
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES('a106', 2018, 2, 53000); 
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES('a101', 2019, 1, 24000); 
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES('a102', 2019, 1, 109000); 
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES('a103', 2019, 1, 101000); 
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES('a104', 2019, 1, 53500); 
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES('a107', 2019, 1, 24000); 
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES('a102', 2019, 2, 160000); 
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES('a103', 2019, 2, 101000); 
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES('a104', 2019, 2, 43000); 
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES('a105', 2019, 2, 24000); 
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES('a106', 2019, 2, 109000); 
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES('a102', 2020, 1, 109000); 
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES('a104', 2020, 1, 201000); 
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES('a105', 2020, 1, 63000); 
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES('a106', 2020, 1, 122000); 
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES('a107', 2020, 1, 111000); 
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES('a102', 2020, 2, 120000); 
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES('a103', 2020, 2, 93000); 
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES('a104', 2020, 2, 84000); 
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES('a105', 2020, 2, 180000); 
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES('a108', 2020, 2, 76000); 

#실습하기 5-3
SELECT * FROM `MEMBER` WHERE `NAME` = '김유신';
SELECT * FROM `MEMBER` WHERE `POS` = '차장' AND `DEP` = 101;
SELECT * FROM `MEMBER` WHERE `POS` = '차장' OR `DEP` = 101;
SELECT * FROM `MEMBER` WHERE `NAME` != '김춘추';
SELECT * FROM `MEMBER` WHERE `NAME` <> '김춘추';
SELECT * FROM `MEMBER` WHERE `POS` = '사원' OR `POS` = '대리';
SELECT * FROM `MEMBER` WHERE `POS` IN('사원', '대리');
SELECT * FROM `MEMBER` WHERE `DEP` IN(101, 102, 103);
SELECT * FROM `MEMBER` WHERE `NAME` LIKE '%신';
SELECT * FROM `MEMBER` WHERE `NAME` LIKE '김%';
SELECT * FROM `MEMBER` WHERE `NAME` LIKE '김__';
SELECT * FROM `MEMBER` WHERE `NAME` LIKE '_성_';
SELECT * FROM `MEMBER` WHERE `NAME` LIKE '정_';

SELECT * FROM `SALES` WHERE `SALE`  > 50000;
SELECT * FROM `SALES` WHERE `SALE`  >= 50000 AND `SALE` < 100000 AND `MONTH` = 1;
SELECT * FROM `SALES` WHERE `SALE`  BETWEEN 50000 AND 100000;
SELECT * FROM `SALES` WHERE `SALE`  NOT BETWEEN 50000 AND 100000;
SELECT * FROM `SALES` WHERE `YEAR`  IN(2020);
SELECT * FROM `SALES` WHERE `MONTH` IN(1, 2);

#실습하기 5-4
#오름차순(ASC), 내림차순(DESC)
SELECT * FROM `SALES` ORDER BY `SALE`
SELECT * FROM `SALES` ORDER BY `SALE` ASC;
SELECT * FROM `SALES` ORDER BY `SALE` DESC;
SELECT * FROM `MEMBER` ORDER BY `NAME`;
SELECT * FROM `MEMBER` ORDER BY `NAME` DESC;
SELECT * FROM `MEMBER` ORDER BY `NAME` ASC;
SELECT * FROM `SALES` WHERE `SALE` > 50000 ORDER BY `SALE` DESC;
SELECT * FROM `SALES` WHERE `SALE` > 50000 ORDER BY `YEAR`, `MONTH`, `SALE` DESC;

#실습하기 5-5
#레코드 수를 제한해서 추출
SELECT * FROM `SALES` LIMIT 3;
SELECT * FROM `SALES` LIMIT 0, 3;
SELECT * FROM `SALES` LIMIT 1, 3;
SELECT * FROM `SALES` LIMIT 4, 5;
SELECT * FROM `SALES` ORDER BY `SALE` DESC LIMIT 3, 5;
SELECT * FROM `SALES` WHERE `SALE` < 50000 ORDER BY `SALE` DESC LIMIT 3;
SELECT * FROM `SALES` WHERE `SALE` > 50000 ORDER BY `YEAR` DESC, `MONTH`, `SALE` DESC LIMIT 5;
	#SALES테이블의 SALE데이터의 50000이상의 수를 연도 내림차순, 월 오름차순, 가격 오름차순으로 5개 출력
	
#실습하기 5-6
#mYSQL 내장함수
SELECT SUM(SALE) AS `합계` FROM `SALES`;
SELECT AVG(SALE) AS `평균` FROM `SALES`;
SELECT MAX(SALE) AS `최대값` FROM `SALES`;
SELECT MIN(SALE) AS `최소값` FROM `SALES`;
SELECT COUNT(SALE) AS `갯수` FROM `SALES`;
SELECT COUNT(*) AS `갯수` FROM `SALES`;
SELECT SUBSTRING(HP, 10, 4) AS `전화번호 끝자리` FROM `MEMBER`;
INSERT INTO `MEMBER` VALUES ('b101', '을지문덕', '010-5555-1234', '사장', 107, NOW());

#확인 문제 1 : 2018년 1월 매출의 총합을 구하시오.
SELECT SUM(SALE)
	AS `2018년 1월 총 매출`
	FROM `SALES`
	WHERE `YEAR` IN(2018) AND `MONTH` IN(1);
	
#확인 문제 2 : 2019년 2월달에 5만원 이상 매출에 대한 총합과 평균을 구하시오.
SELECT * FROM `SALES` WHERE `SALE` > 50000 AND `YEAR`IN(2019) AND `MONTH`IN(2); #조회
SELECT SUM(SALE), AVG(SALE)
	AS `2019년 2월 내 5만원 이상 매출의 총합과 평균`
	FROM `SALES`
	WHERE `SALE` > 50000 AND `YEAR` IN(2019) AND `MONTH` IN(2);
	
#확인 문제 3 : 2020년 전체 매출 가운데 최저, 최고 매출을 구하시오.
SELECT MIN(SALE), MAX(SALE)
	FROM `SALES`
	WHERE `YEAR`IN(2020);