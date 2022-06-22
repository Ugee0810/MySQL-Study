#날짜 : 2022/06/22
#이름 : 송환욱
#내용 : 교재 6장 데이터베이스 객체 작성과 삭제

###############################
#26강 테이블 작성,삭제,변경
###############################
#p234 : CREATE TABLE로 테이블 작성하기
CREATE TABLE `SAMPLE62` (
`NO` INTEGER NOT NULL,
`A`  VARCHAR(30),
`B`  DATE
);

#p237 : ALTER TABLE로 테이블에 열 추가하기
ALTER TABLE `SAMPLE62` ADD `NEWCOL` INTEGER;

#p238 : ALTER TABLE로 열 속성 변경하기
ALTER TABLE `SAMPLE62` MODIFY `NEWCOL` VARCHAR(20);

#p239 : ALTER TABLE로 열 이름 변경하기
ALTER TABLE `SAMPLE62` CHANGE `NEWCOL` C VARCHAR(20);

###############################
#27강 제약
###############################
#p243-1 : 테이블 열에 제약 정의하기
CREATE TABLE `SAMPLE631` (
`A` INT NOT NULL,
`B` INT NOT NULL UNIQUE,
`C` VARCHAR(30)
);

#p243-2 : 테이블에 '테이블 제약' 정의하기
CREATE TABLE `SAMPLE632` (
`NO` INT NOT NULL,
`SUB_NO` INT NOT NULL,
`NAME` VARCHAR(30),
PRIMARY KEY (`NO`, `SUB_NO`)
);

#p244-1 : '테이블 제약`에 이름 붙이기
CREATE TABLE `SAMPLE632` (
`NO` INT NOT NULL,
`SUB_NO` INT NOT NULL,
`NAME` VARCHAR(30),
CONSTRAINT `PKEY_SAMPLE` PRIMARY KEY (`NO`, `SUB_NO`)
);

#p244-2 : 열 제약 추가하기
ALTER TABLE `SAMPLE631`
MODIFY `C` VARCHAR(30) NOT NULL;

#p245-1 : 테이블 제약 추가하기(기본키 제약 추가하기)
ALTER TABLE `SAMPLE631` ADD CONSTRAINT `PKEY_SAMPLE631` PRIMARY KEY(`A`);

#p245-2 : 열 제약 삭제하기(C열의 NOT NULL제약 없애기)
ALTER TABLE `SAMPLE631` MODIFY `C` VARCHAR(30);

#p245-3 : 테이블 제약 삭제하기 PKEY_SAMPLE631 제약 삭제하기
ALTER TABLE `SAMPLE631` DROP CONSTRAINT `PKEY_SAMPLE631`;

#p245-4 : 테이블 제약 삭제하기(기본키 계약 삭제하기)
ALTER TABLE `SAMPLE631` DROP `PKEY_SAMPLE631`;

#p246 : SAMPLE634 테이블 작성하기
CREATE TABLE `SAMPLE634` (
`P` INT NOT NULL,
`A` VARCHAR(30),
CONSTRAINT PKEY_SAMPLE634 PRIMARY KEY(`P`)
);

#p247-1 : SAMPLE634에 행 추가하기
INSERT INTO `SAMPLE634` VALUES (1, '첫째줄');
INSERT INTO `SAMPLE634` VALUES (2, '둘째줄');
INSERT INTO `SAMPLE634` VALUES (3, '셋째줄');

#p247-2 : SAMPLE634에 중복하는 행 추가하기
INSERT INTO `SAMPLE634` VALUES (2,'넷째줄'); # <- ERROR

#p247-3 : SAMPLE634을 중복된 값으로 갱신하기
UPDATE `SAMPLE634`
SET `P` = 2
WHERE `P` = 3; # <- ERROR

#p248 : `A`열과`B`열로 이루어진 기본키
SELECT `A`, `B` FROM `SAMPLE635`;

###############################
#29강 인덱스 작성과 삭제
###############################
#p258 : 인덱스 작성하기
CREATE INDEX ISAMPLE65 ON `sample62`(`NO`);

#p259 : 인덱스 삭제하기
DROP INDEX `ISAMPLE65` ON `SAMPLE62`;

#p260 : EXPLAIN으로 인덱스 사용 확인하기 1 (MySql)
EXPLAIN SELECT * FROM `SAMPLE62` WHERE `A` = 'A';

#p261 : EXPLAIN으로 인덱스 사용 확인하기 2 (MySql)
EXPLAIN SELECT * FROM `SAMPLE62` WHERE `NO` > 10;

###############################
#30강 뷰 작성과 삭제
###############################
#p266 : 뷰 작성하기
CREATE VIEW `SAMPLE_VIEW_67` AS SELECT * FROM `SAMPLE54`;

SELECT * FROM `SAMPLE_VIEW_67`;

#p267-1 : 열을 지정해 뷰 작성하기
CREATE VIEW `SAMPLE_VIEW_672` (`N`, `V`, `V2`) AS SELECT `NO`, `A`, A*2 FROM `SAMPLE54`;

SELECT * FROM `SAMPLE_VIEW_672` WHERE N = 1;

#p267-2 : 뷰 삭제하기
DROP VIEW `SAMPLE_VIEW_67`;