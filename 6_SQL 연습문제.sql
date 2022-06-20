# 날짜 : 2022/06/20
# 이름 : 송환욱
# 내용 : SQL 연습문제

#문제1 : 다음과 같은 속성을 가진 Book 테이블을 생성 후 그림과 같이 데이터를 삽입하시오.
CREATE TABLE `Book` (
`BookID`    INT AUTO_INCREMENT PRIMARY KEY,
`BookName`  VARCHAR(20),
`Publisher` VARCHAR(20),
`Price`     INT
);
INSERT INTO `Book` (`BOOKNAME`, `PUBLISHER`, `PRICE`) VALUES ('축구의 역사', '굿스포츠', 7000);
INSERT INTO `Book` (`BOOKNAME`, `PUBLISHER`, `PRICE`) VALUES ('축구아는 여자', '나무수', 13000);
INSERT INTO `Book` (`BOOKNAME`, `PUBLISHER`, `PRICE`) VALUES ('축구의 이해', '대한미디어', 22000);
INSERT INTO `Book` (`BOOKNAME`, `PUBLISHER`, `PRICE`) VALUES ('골프 바이블', '대한미디어', 35000);
INSERT INTO `Book` (`BOOKNAME`, `PUBLISHER`, `PRICE`) VALUES ('피겨 교본', '굿스포츠', 8000);
INSERT INTO `Book` (`BOOKNAME`, `PUBLISHER`, `PRICE`) VALUES ('역도 단계별기술', '굿스포츠', 6000);
INSERT INTO `Book` (`BOOKNAME`, `PUBLISHER`, `PRICE`) VALUES ('야구의 추억', '이상미디어', 20000);
INSERT INTO `Book` (`BOOKNAME`, `PUBLISHER`, `PRICE`) VALUES ('야구를 부탁해', '이상미디어', 13000);
INSERT INTO `Book` (`BOOKNAME`, `PUBLISHER`, `PRICE`) VALUES ('올림픽 이야기', '삼성당', 7500);
INSERT INTO `Book` (`BOOKNAME`, `PUBLISHER`, `PRICE`) VALUES ('Olympic Champions', 'Pearson', 13000);

#문제2 : 다음과 같은 속성을 가진 Customer 테이블을 생성 후 그림과 같이 데이터를 삽입하시오.
CREATE TABLE `Customer` (
`custid`  INT AUTO_INCREMENT PRIMARY KEY,
`name`    VARCHAR(10),
`address` VARCHAR(20),
`phone`   CHAR(13) DEFAULT NULL
);
INSERT INTO `Customer` (`NAME`, `ADDRESS`, `PHONE`) VALUES ('박지성', '영국 맨체스타', '000-5000-0001');
INSERT INTO `Customer` (`NAME`, `ADDRESS`, `PHONE`) VALUES ('김연아', '대한민국 서울', '000-6000-0001');
INSERT INTO `Customer` (`NAME`, `ADDRESS`, `PHONE`) VALUES ('장미란', '대한민국 강원도', '000-7000-0001');
INSERT INTO `Customer` (`NAME`, `ADDRESS`, `PHONE`) VALUES ('추신수', '미국 클리블랜드', '000-8000-0001');
INSERT INTO `Customer` (`NAME`, `ADDRESS`) VALUES ('박세리', '대한민국 대전');

#문제3 : 다음과 같은 속성을 가진 Orders 테이블을 생성 후 그림과 같이 데이터를 삽입하시오.
CREATE TABLE `Orders` (
`orderid`   INT AUTO_INCREMENT PRIMARY KEY,
`custid`    INT,
`bookid`    INT,
`saleprice` INT,
`orderdate` DATE
);
INSERT INTO `ORDERS` (`CUSTID`, `BOOKID`, `SALEPRICE`, `ORDERDATE`) VALUES (1, 1, 6000, '2014-07-01');
INSERT INTO `ORDERS` (`CUSTID`, `BOOKID`, `SALEPRICE`, `ORDERDATE`) VALUES (1, 3, 21000, '2014-07-03');
INSERT INTO `ORDERS` (`CUSTID`, `BOOKID`, `SALEPRICE`, `ORDERDATE`) VALUES (2, 5, 8000, '2014-07-03');
INSERT INTO `ORDERS` (`CUSTID`, `BOOKID`, `SALEPRICE`, `ORDERDATE`) VALUES (3, 6, 6000, '2014-07-04');
INSERT INTO `ORDERS` (`CUSTID`, `BOOKID`, `SALEPRICE`, `ORDERDATE`) VALUES (4, 7, 20000, '2014-07-05');
INSERT INTO `ORDERS` (`CUSTID`, `BOOKID`, `SALEPRICE`, `ORDERDATE`) VALUES (1, 2, 12000, '2014-07-07');
INSERT INTO `ORDERS` (`CUSTID`, `BOOKID`, `SALEPRICE`, `ORDERDATE`) VALUES (4, 8, 13000, '2014-07-07');
INSERT INTO `ORDERS` (`CUSTID`, `BOOKID`, `SALEPRICE`, `ORDERDATE`) VALUES (3, 10, 12000, '2014-07-08');
INSERT INTO `ORDERS` (`CUSTID`, `BOOKID`, `SALEPRICE`, `ORDERDATE`) VALUES (2, 10, 7000, '2014-07-09');
INSERT INTO `ORDERS` (`CUSTID`, `BOOKID`, `SALEPRICE`, `ORDERDATE`) VALUES (3, 8, 13000, '2014-07-10');

#문제4 : 모든 회원의 회원번호, 이름, 주소를 조회하시오.
SELECT
	`CUSTID`,
	`NAME`,
	`ADDRESS`
FROM `CUSTOMER`;

#문제5 : 모든 도서의 이름과 가격을 조회하시오.
SELECT
	`BOOKNAME`,
	`PRICE`
FROM `BOOK`;

#문제6 : 모든 도서의 가격과 이름을 조회하시오.
SELECT
	`PRICE`,
	`BOOKNAME`
FROM `BOOK`;

#문제7 : 모든 도서의 도서번호, 도서이름, 출판사, 가격을 조회하시오.
SELECT
	*
FROM `BOOK`;

#문제8 : 도서 테이블에 있는 모든 출판사를 조회하시오.
SELECT
	`PUBLISHER`
FROM `BOOK`;

#문제9 : 도서 테이블에 있는 모든 출판사를 조회하시오. 단, 조회 결과에서 중복을 제거하시오.
SELECT
DISTINCT `PUBLISHER`
FROM `BOOK`;

#문제10 : 가격이 20,000원 이상인 도서를 조회하시오.
SELECT
	*
FROM `BOOK`
WHERE `PRICE` >= 20000;

#문제11 : 가격이 20,000 미만인 도서를 조회하시오.
SELECT
	*
FROM `BOOK`
WHERE `PRICE` < 20000;

#문제12 : 가격이 10,000원 이상 20,000 이하인 도서를 조회하시오.
SELECT
	*
FROM `BOOK`
WHERE `PRICE` >= 10000 AND `PRICE` <= 20000;

#문제13 : 가격이 15,000원 이상 30,000 이하인 도서의 도서번호, 도서명, 도서가격을 조회하시오.
SELECT
	`BOOKID`,
	`BOOKNAME`,
	`PRICE`
FROM `BOOK`
WHERE `PRICE` >= 15000 AND `PRICE` <= 30000;

#문제14 : 도서번호가 2, 3, 5인 도서를 조회하시오.
SELECT
	*
FROM `BOOK`
WHERE `BOOKID` IN(2, 3, 5);

#문제15 : 도서번호가 짝수번호인 도서를 조회하시오.
SELECT
	*
FROM `BOOK`
WHERE MOD(`BOOKID`, 2) = 0;

#문제16 : 박씨 성 고객을 조회하시오.
SELECT
	*
FROM `CUSTOMER`
WHERE `NAME` LIKE '박%_';

#문제17 : 대한민국에 거주하는 고객을 조회하시오.
SELECT
*
FROM `CUSTOMER`
WHERE `ADDRESS` LIKE '대한민국%';

#문제18 : 휴대폰 번호가 유효한 고객만 조회하시오.
SELECT
*
FROM `CUSTOMER`
WHERE `PHONE` <> 'NULL';

#문제19 : 출판사가 '굿스포츠' 혹은'대한미디어'인 도서를 조회하시오.
SELECT
*
FROM `BOOK`
WHERE `PUBLISHER` IN('굿스포츠', '대한미디어');

#문제20 : '축구의 역사'를 출간한 출판사를 조회하시오.
SELECT
	`PUBLISHER`
FROM `BOOK`
WHERE `BOOKNAME` = '축구의 역사';

#문제21 : 도서이름에 '축구'가 포함된 출판사를 조회하시오.
SELECT
	`PUBLISHER`
FROM `BOOK`
WHERE `BOOKNAME` LIKE '축구%';

#문제22 : 도서이름의 왼쪽 두 번째 위치에 '구'라는 문자열을 갖는 도서를 조회하시오.
SELECT
	*
FROM `BOOK`
WHERE `BOOKNAME` LIKE '_구%';

#문제23 : 축구에 관한 도서 중 가격이 20,000원 이상인 도서를 조회하시오.
SELECT
	*
FROM `BOOK`
WHERE `BOOKNAME` LIKE '축구%' AND `PRICE` >= 20000;

#문제24 : 도서를 이름순으로 조회하시오.
SELECT
	*
FROM `BOOK`
ORDER BY `BOOKNAME`;

#문제25 : 도서를 가격순으로 조회하고, 가격이 같으면 이름순으로 조회하시오.
SELECT
	*
FROM `BOOK`
ORDER BY `PRICE`, `BOOKNAME`;

#문제26 : 도서를 가격의 내림차순을 조회하시오. 단, 가격이 같다면 출판사를 오름차순으로 조회하시오.
SELECT
	*
FROM `BOOK`
ORDER BY `PRICE` DESC, `PUBLISHER` ASC;

#문제27 : 도서가격이 큰 1, 2, 3위 도서를 조회하시오.
SELECT
	*
FROM `BOOK`
ORDER BY `PRICE` DESC
LIMIT 3;

#문제28 : 도서가격이 작은 1, 2, 3위 도서를 조회하시오.
SELECT
	*
FROM `BOOK`
ORDER BY `PRICE` ASC
LIMIT 3;

#문제29 : 고객이 주문한 도서의 총 판매액을 조회하시오.
SELECT
SUM(`SALEPRICE`) AS `총판매액`
FROM `ORDERS`;

#문제30 : 고객이 주문한 도서의 총 판매액, 평균값, 최저가, 최고가를 조회하시오.
SELECT
SUM(`SALEPRICE`) AS `총판매액`,
AVG(`SALEPRICE`) AS `평균값`,
MIN(`SALEPRICE`) AS `최저가`,
MAX(`SALEPRICE`) AS `최고가`
FROM `ORDERS`;

#문제31 : 도서 판매 건수를 조회하시오.
SELECT
MAX(`ORDERID`) AS `판매건수`
FROM `ORDERS`;

#문제32 : 도서제목에 '야구'가 포함된 도서를 '농구'로 변경한 후 도서 목록을 조회하시오.
UPDATE `BOOK`
SET    `BOOKNAME` = '농구의 추억'
WHERE  `BOOKNAME` = '야구의 추억';
UPDATE `BOOK`
SET    `BOOKNAME` = '농구를 부탁해'
WHERE  `BOOKNAME` = '야구를 부탁해';
SELECT
*
FROM `BOOK`;

#문제33 : 가격이 8,000원 이상인 도서를 구매한 고객에 대하여 고객별 주문 도서의 총 수량을 조회하시오. 단, 두 권 이상 구매한 고객만 구한다.
##############X############
SELECT
	`CUSTID`,
FROM `ORDERS`
WHERE
	`SALEPRICE` >= 8000;

#문제34 : 고객과 고객의 주문에 관한 데이터를 모두 조회하시오.
SELECT
	*
FROM `CUSTOMER` AS C
JOIN `ORDERS`   AS O
ON C.custid = O.custid;

#문제35 : 고객과 고객의 주문에 관한 데이터를 고객번호 순으로 정렬하여 조회하시오.
SELECT
	*
FROM `CUSTOMER` AS C
JOIN `ORDERS` AS O
ON C.custid = O.custid
ORDER BY O.custid ASC;

#문제36 : 고객의 이름과 고객이 주문한 도서의 판매가격을 조회하시오.
SELECT
	C.name,
	O.saleprice
FROM `CUSTOMER` AS C
JOIN `ORDERS` AS O
ON C.custid = O.custid;

#문제37 : 고객별로 주문한 모든 도서의 총 판매액을 조회하고, 고객별로 정렬하시오.
############X##############
SELECT
	C.NAME,
	SUM(`SALEPRICE`) AS `총판매액`
FROM `CUSTOMER` AS C
JOIN `ORDERS` AS O
ON C.CUSTID = O.CUSTID
WHERE 
ORDER BY C.NAME ASC;

#문제38 : 고객의 이름과 고객이 주문한 도서의 이름을 조회하시오.
############X##############
SELECT
	C.name,
	B.BookName
FROM `CUSTOMER` AS C
JOIN `BOOK`     AS B
JOIN `ORDERS`   AS O
ON B.BookID = O.bookid;
WHERE 
;

#문제39 : 가격이 20,000원인 도서를 주문한 고객의 이름과 도서의 이름을 조회하시오.


#문제40 : 도서를 구매하지 않은 고객을 포함해서 고객명과 고객이 주문한 도서의 판매가격을 조회하시오.


#문제41 : 가장 비싼 도서의 이름을 조회하시오.


#문제42 : 도서를 주문하지 않은 고객의 이름을 조회하시오.


#문제43 : 김연아 고객이 주문한 도서의 총 판매액을 조회하시오.


#문제44 : Book 테이블에 새로운 도서 '스포츠 의학'을 삽입하시오. 스포츠 의학은 한솔의학서적에서 출간했으며 가격은 미정이다.


#문제45 : Customer 테이블에서 고객번호가 5인 고객의 주소를 '대한민국 부산'으로 변경하시오.

 
#문제46 : Customer 테이블에서 고객번호가 5인 고객을 삭제하시오.
