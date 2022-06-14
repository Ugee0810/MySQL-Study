#SQL확인문제
#실습하기 4-1
CREATE TABLE `TBL_MEMBER` (
	`MEMBERID`   VARCHAR(10) PRIMARY KEY,
	`MEMBERNAME` VARCHAR(10) NOT NULL,
	`MEMBERHP`   CHAR(13) UNIQUE,
	`MEMBERAGE`  INT,
	`MEMBERADDR` VARCHAR(20)
);

CREATE TABLE `TBL_PRODUCT` (
	`PRODUCTCODE` INT AUTO_INCREMENT PRIMARY KEY,
	`PRODUCTNAME` VARCHAR(10) NOT NULL,
	`PRICE`       INT NOT NULL,
	`AMOUNT`      INT DEFAULT 0,
	`COMPANY`     VARCHAR(10),
	`MAKEDATE`    DATE
);

#실습하기 4-2
INSERT INTO `TBL_MEMBER` SET
	`MEMBERID`   = 'P101',
	`MEMBERNAME` = '김유신',
	`MEMBERHP`   = '010-1234-1001',
	`MEMBERAGE`  = 25,
	`MEMBERADDR` = '신라';
	
INSERT INTO `TBL_MEMBER` SET
	`MEMBERID`   = 'P102',
	`MEMBERNAME` = '김춘추',
	`MEMBERHP`   = '010-1234-1002',
	`MEMBERAGE`  = 23,
	`MEMBERADDR` = '신라';

INSERT INTO `TBL_MEMBER` SET
	`MEMBERID`   = 'P103',
	`MEMBERNAME` = '장보고',
	`MEMBERAGE`  = 31,	
	`MEMBERADDR` = '통일신라';

INSERT INTO `TBL_MEMBER` SET
	`MEMBERID`   = 'P104',
	`MEMBERNAME` = '강감찬',
	`MEMBERADDR` = '고려';

INSERT INTO `TBL_MEMBER` SET
	`MEMBERID`   = 'P105',
	`MEMBERNAME` = '이순신',
	`MEMBERHP`   = '010-1234-1005',
	`MEMBERAGE`  = 50;
	
INSERT INTO `TBL_PRODUCT` SET
	`PRODUCTNAME` = '냉장고',
	`PRICE`        = 800,
	`AMOUNT`       = 10,
	`COMPANY`      = 'LG',
	`MAKEDATE`     = NOW();
	
INSERT INTO `TBL_PRODUCT` SET
	`PRODUCTNAME` = '노트북',
	`PRICE`        = 1200,
	`AMOUNT`       = 20,
	`COMPANY`      = '삼성',
	`MAKEDATE`     = NOW();
	
INSERT INTO `TBL_PRODUCT` SET
	`PRODUCTNAME` = 'TV',
	`PRICE`        = 1400,
	`AMOUNT`       = 6,
	`COMPANY`      = 'LG',
	`MAKEDATE`     = NOW();
	
INSERT INTO `TBL_PRODUCT` SET
	`PRODUCTNAME` = '세탁기',
	`PRICE`        = 1000,
	`AMOUNT`       = 8,
	`COMPANY`      = 'LG',
	`MAKEDATE`     = NOW();
	
INSERT INTO `TBL_PRODUCT` SET
	`PRODUCTNAME` = '컴퓨터',
	`PRICE`        = 1100,
	`AMOUNT`       = 0;
	
INSERT INTO `TBL_PRODUCT` SET
	`PRODUCTNAME` = '휴대폰',
	`PRICE`        = 900,
	`AMOUNT`       = 102,
	`COMPANY`      = '삼성',
	`MAKEDATE`     = NOW();
	
#실습하기 4-3
SELECT `MEMBERNAME` FROM `TBL_MEMBER`;
SELECT `MEMBERNAME`, `MEMBERHP` FROM `TBL_MEMBER`;
SELECT * FROM `TBL_MEMBER` WHERE `MEMBERID`='P102';
SELECT * FROM `TBL_MEMBER` WHERE `MEMBERID`='P104' OR `MEMBERID`='P105';
SELECT * FROM `TBL_MEMBER` WHERE `MEMBERADDR`='신라';
SELECT * FROM `TBL_MEMBER` WHERE `MEMBERAGE`>30;
SELECT * FROM `TBL_MEMBER` WHERE `MEMBERHP` IS NULL;
UPDATE `TBL_MEMBER` SET `MEMBERAGE`=42 WHERE `MEMBERID`='P104';
UPDATE `TBL_MEMBER` SET `MEMBERADDR`='조선' WHERE `MEMBERID`='P105';
DELETE FROM `TBL_MEMBER` WHERE `MEMBERID`='P103';
SELECT * FROM `TBL_MEMBER`;

SELECT `PRODUCTNAME` FROM `TBL_PRODUCT`;
SELECT `PRODUCTNAME`, `PRICE` FROM `TBL_PRODUCT`;
SELECT * FROM `TBL_PRODUCT` WHERE `COMPANY`='LG';
SELECT * FROM `TBL_PRODUCT` WHERE `COMPANY`='삼성';
UPDATE `TBL_PRODUCT` SET
	`COMPANY`='삼성',
	`MAKEDATE`='2022-06-13'
	WHERE
	`PRODUCTCODE`=5;
SELECT * FROM `TBL_PRODUCT`;



