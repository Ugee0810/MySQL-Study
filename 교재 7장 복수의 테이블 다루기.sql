#날짜 : 2022/06/22
#이름 : 송환욱
#내용 : 교재 7장 복수의 테이블 다루기

###############################
#31강 집합 연산
###############################
#테이블 생성/데이터 저장
CREATE TABLE `sample71_a` (
`A` INT
);
INSERT INTO `SAMPLE71_A` VALUES (1);
INSERT INTO `SAMPLE71_A` VALUES (2);
INSERT INTO `SAMPLE71_A` VALUES (3);
CREATE TABLE `sample71_b` (
`B` INT
);
INSERT INTO `SAMPLE71_B` VALUES (2);
INSERT INTO `SAMPLE71_B` VALUES (10);
INSERT INTO `SAMPLE71_B` VALUES (11);
#p277 : UNION으로 합집합 구하기
SELECT * FROM `SAMPLE71_A`;
SELECT * FROM `SAMPLE71_B`;

#p278 : 두 개의 SELECT 명령을 UNION해서 합집합 구하기
SELECT * FROM `SAMPLE71_A`
UNION
SELECT * FROM `SAMPLE71_B`;

#p281 : 두 개의 SELECT 명령에 UNION ALL을 적용해 합집합 구하기
SELECT * FROM `SAMPLE71_A`
UNION ALL
SELECT * FROM `SAMPLE71_B`;

###############################
#32강 테이블 결합
###############################
#테이블 생성/데이터 저장
CREATE TABLE `sample72_x` (
`X` VARCHAR(10)
);
INSERT INTO `SAMPLE72_X` VALUES ('A');
INSERT INTO `SAMPLE72_X` VALUES ('B');
INSERT INTO `SAMPLE72_X` VALUES ('C');

CREATE TABLE `sample72_y` (
`Y` INT
);
INSERT INTO `SAMPLE72_Y` VALUES (1);
INSERT INTO `SAMPLE72_Y` VALUES (2);
INSERT INTO `SAMPLE72_Y` VALUES (3);
#p287 : FROM 구로 곱집합 구하기
SELECT
*
FROM `SAMPLE72_X`, `SAMPLE72_Y`;

#p289 : 상품 테이블 작성하기
CREATE TABLE `상품` (
`상품코드` CHAR(4) NOT NULL,
`상품명` VARCHAR(30),
`메이커명` VARCHAR(30),
`가격` INT,
`상품분류` VARCHAR(30),
PRIMARY KEY (`상품코드`)
);
INSERT INTO `상품` (`상품코드`, `상품명`, `메이커명`, `가격`, `상품분류`) VALUES (0001, '상품OO', 'OO메이커', 100, '식료품');
INSERT INTO `상품` (`상품코드`, `상품명`, `메이커명`, `가격`, `상품분류`) VALUES (0002, '상품XX', 'OO메이커', 200, '식료품');
INSERT INTO `상품` (`상품코드`, `상품명`, `메이커명`, `가격`, `상품분류`) VALUES (0003, '상품AA', 'AA메이커', 1980, '생활용품');

#p290 : 재고수 테이블 작성하기
CREATE TABLE `재고수` (
`상품코드` CHAR(4),
`입고날짜` DATE,
`재고수` INT
);
INSERT INTO `재고수` (`상품코드`, `입고날짜`, `재고수`) VALUES (0001, '2014-01-03', 200);
INSERT INTO `재고수` (`상품코드`, `입고날짜`, `재고수`) VALUES (0002, '2014-02-10', 500);
INSERT INTO `재고수` (`상품코드`, `입고날짜`, `재고수`) VALUES (0003, '2014-02-14', 10);

#p292 : 상품 테이블과 재고수 테이블을 교차결합하기
SELECT
	*
FROM `상품`, `재고수`;

#p293 : 상품코드가 같은 행을 검색하기
SELECT
	*
FROM `상품`, `재고수`
WHERE `상품`.`상품코드` = `재고수`.`상품코드`;

#p294 : 검색할 행과 반환할 열 제한하기
SELECT
	`상품`.`상품명`,
	`재고수`.`재고수`
FROM `상품`, `재고수`
WHERE `상품`.`상품코드` = `재고수`.`상품코드` AND
		`상품`.`상품분류` = '식료품';

#p296 : 메이커 테이블 작성하기
CREATE TABLE `메이커` (
`메이커코드` CHAR(4) NOT NULL,
`메이커명` VARCHAR(30),
PRIMARY KEY (`메이커코드`)
);
INSERT INTO `메이커` (`메이커코드`, `메이커명`) VALUES ('M001', 'OO메이커');
INSERT INTO `메이커` (`메이커코드`, `메이커명`) VALUES ('M002', 'AA메이커');

CREATE TABLE `상품2` (
`상품코드` CHAR(4) NOT NULL,
`상품명` VARCHAR(30),
`메이커코드` VARCHAR(30),
`가격` INT,
`상품분류` VARCHAR(30),
PRIMARY KEY (`상품코드`)
);
INSERT INTO `상품2` (`상품코드`, `상품명`, `메이커코드`, `가격`, `상품분류`) VALUES (0001, '상품OO', 'M001', 100, '식료품');
INSERT INTO `상품2` (`상품코드`, `상품명`, `메이커코드`, `가격`, `상품분류`) VALUES (0002, '상품XX', 'M002', 200, '식료품');
INSERT INTO `상품2` (`상품코드`, `상품명`, `메이커코드`, `가격`, `상품분류`) VALUES (0003, '상품AA', 'M003', 1980, '생활용품');

#p297 : 상품 테이블과 메이커 테이블을 내부결합하기
SELECT
	S.`상품명`,
	M.`메이커명`
FROM `상품2` S
INNER JOIN `메이커` M
ON S.`메이커코드` = M.`메이커코드`;

#p299 : 상품 테이블을 자기결합하기
SELECT
	S1.`상품명`,
	S2.`상품명`
FROM `상품` S1
INNER JOIN `상품` S2
ON S1.`상품코드` = S2.`상품코드`;

#p300 : 내부결합에서는 상품코드가 0009인 상품이 제외된다.
CREATE TABLE `상품3` (
`상품코드` CHAR(4) NOT NULL,
`상품명` VARCHAR(30),
`메이커코드` VARCHAR(30),
`가격` INT,
`상품분류` VARCHAR(30),
PRIMARY KEY (`상품코드`)
);
INSERT INTO `상품3` (`상품코드`, `상품명`, `메이커코드`, `가격`, `상품분류`) VALUES (0001, '상품OO', 'M001', 100, '식료품');
INSERT INTO `상품3` (`상품코드`, `상품명`, `메이커코드`, `가격`, `상품분류`) VALUES (0002, '상품XX', 'M001', 200, '식료품');
INSERT INTO `상품3` (`상품코드`, `상품명`, `메이커코드`, `가격`, `상품분류`) VALUES (0003, '상품AA', 'M002', 1980, '생활용품');
INSERT INTO `상품3` (`상품코드`, `상품명`, `메이커코드`, `가격`, `상품분류`) VALUES (0009, '추가상품', 'M001', 300, '식료품');

SELECT
	`상품3`.`상품명`,
	`재고수`.`재고수`
FROM `상품3`
INNER JOIN `재고수`
ON `상품3`.`상품코드` = `재고수`.`상품코드`
WHERE `상품3`.`상품분류` = '식료품';

#p301 : 외부결합으로 상품코드 0009인 상품도 결과에 포함하기
SELECT
	`상품3`.`상품명`,
	`재고수`.`재고수`
FROM `상품3` LEFT JOIN `재고수`
ON `상품3`.`상품코드` = `재고수`.`상품코드`
WHERE `상품3`.`상품분류` = '식료품';

#p302 : Oracle에서 구식 외부결합으로 0009의 상품을 결과에 포함하기 <- 사용하지 않는다!
SELECT
	`상품3`.`상품명`,
	`재고수`.`재고수`
FROM `상품3`, `재고수`
WHERE `상품3`.`상품코드` = `재고수`.`상품코드` (+) AND
		`상품3`.`상품분류` = '식료품';