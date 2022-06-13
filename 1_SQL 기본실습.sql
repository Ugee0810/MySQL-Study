#날짜 : 2022/06/13
#이름 : 송환욱
#내용 : SQL 기본실습

#실습하기 1-1
#DB 추가
CREATE DATABASE `MyDB`;
DROP DATABASE `MyDB`;
########연습######################################################
CREATE DATABASE `MYMY`;
DROP DATABASE `MYMY`;

#실습하기 1-2
#테이블 추가
CREATE TABLE `User1` (
	`uid`  VARCHAR(10), #문자열(최대10자)VARCHAR == C#-STRING)
	`name` VARCHAR(10), #가변형
	`hp` 	 CHAR(13), 	  #고정형
	`age`  TINYINT
);
########연습######################################################
CREATE TABLE `USER2` (
	`ID`		  VARCHAR(10),
	`이름`     VARCHAR(10),
	`나이`     TINYINT,
	`거주지`   VARCHAR(10),
	`최종학력` VARCHAR(10)
);

DROP TABLE `User1`;

#실습하기 1-3
#테이블에 데이터 추가
INSERT INTO `USER1` VALUES ('A101', '김유신', '010-1748-5968', '25');
INSERT INTO `USER1` VALUES ('A102', '김춘추', '010-6497-4865', '98');
INSERT INTO `USER1` VALUES ('A103', '장보고', '010-1864-3798', '47');

INSERT INTO `USER1` (`UID`, `NAME`, `AGE`)
				VALUES ('A104', '강감찬', '66');
				
INSERT INTO `USER1` SET
				`UID` = 'A105',
				`NAME` = '이순신',
				`HP` = '010-9785-1462';
########연습######################################################
INSERT INTO `USER2` SET
`ID` 		  = 'A001',
`이름`	   = '송환욱',
`나이`		= '22',
`거주지`   = '창원',
`최종학력` = '전문대졸';

#실습하기 1-4
#쿼리문에서 조회하기
SELECT * FROM `USER1`;
SELECT * FROM `USER1` WHERE `UID`='A101';
SELECT * FROM `USER1` WHERE `NAME`='김춘추';
SELECT * FROM `USER1` WHERE `AGE` > 30;
SELECT `UID`, `NAME`, `AGE` FROM `USER1`;
########연습######################################################


#실습하기 1-5
#테이블에 데이터 수정
UPDATE `USER1` SET `HP`='010-1122-3344' WHERE `UID`='A104';
UPDATE `USER1` SET `AGE`=51 WHERE `UID`='A105';
UPDATE `USER1` SET `HP`='010-1234-1001', `AGE`=27 WHERE `UID`='A101'
########연습######################################################
UPDATE `USER2` SET `나이`='13' WHERE `ID`='A001';
UPDATE `USER2` SET `나이`='22' WHERE `ID`='A001';


#실습하기 1-6
#테이블에 데이터 삭제
DELETE FROM `USER1` WHERE `UID`='A101';
DELETE FROM `USER1` WHERE `UID`='A102' AND `AGE`=25;
DELETE FROM `USER1` WHERE `AGE`>= 30;
########연습######################################################
#DELETE FROM `USER2` WHERE `` = ;
