#날짜 : 2022/06/21
#이름 : 송환욱
#내용 : 교재 4장 데이터의 추가,삭제,갱신

###############################
#16강 행 추가하기
###############################
#테이블 생성/데이터 저장
CREATE TABLE `sample41` (
`NO` INT(11) NOT NULL,
`A`  VARCHAR(30),
`B`  DATE
);
#p153 : SAMPLE41 테이블의 열 구성 확인하기.
DESC `SAMPLE41`;

#p154 : SAMPLE41 테이블에 행 추가하기
INSERT INTO `SAMPLE41` VALUES (1, 'ABC', '2014-01-25');

#p155 : 열을 지정해 행 추가하기
INSERT INTO `SAMPLE41` (`A`, `NO`) VALUES ('XYZ', 2);

#p156 : NOT NULL 제약 회피하기
INSERT INTO `SAMPLE41` (`NO`, `A` , `B`) VALUES (3, NULL, NULL);

#테이블 생성/데이터 저장
CREATE TABLE `sample411` (
`NO` INT(11) NOT NULL,
`D`  INT(11) DEFAULT 0
);
#p157 : SAMPLE411의 열 구성 확인하기.
DESC `SAMPLE411`;

#p158 : SAMPLE411에 행 추가하기, DEFAULT로 값을 지정해 행 추가하기
INSERT INTO `SAMPLE411` (`NO`, `D`) VALUES (1, 1);
INSERT INTO `SAMPLE411` (`NO`, `D`) VALUES (2, DEFAULT);

#p159 : 암묵적으로 디폴트 값을 가지는 행 추가하기
INSERT INTO `SAMPLE411` (`NO`) VALUES (3);

###############################
#17강 삭제하기
###############################
#p161 : SAMPLE41 테이블 조회
SELECT *
FROM `SAMPLE41`;

#p162 : SAMPLE41 테이블에서 NO 열이 3인 행 삭제하기
DELETE
FROM `SAMPLE41`
WHERE `NO` = 3;

###############################
#18강 데이터 갱신하기
###############################
#p165 : SAMPLE41 테이블
SELECT * FROM `SAMPLE41`;

#p166 : SAMPLE41의 셀 값을 갱신하기
UPDATE `SAMPLE41` SET `B` = '2014-09-07' WHERE `NO` = 2;

#p168 : UPDATE 명령으로 증가 연산하기
UPDATE `SAMPLE41` SET `NO` = `NO` + 1;

#p170 : MYSQL에서 UPDATE 명령 1 실행
UPDATE `SAMPLE41` SET `NO` = `NO` + 1, `A` = `NO`;

#p171 : MYSQL에서 UPDATE 명령 2 실행
UPDATE `SAMPLE41` SET `A` = `NO`, `NO` = `NO` + 1;

#p173 : NULL 초기화
UPDATE `SAMPLE41` SET `A` = NULL;