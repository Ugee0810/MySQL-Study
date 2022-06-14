# 날짜 : 2022/06/14
# 이름 : 송환욱
# 내용 : 데이터베이스 관리 실습

#실습하기 3-1
#일반 관리자 생성
CREATE USER 'TESTER'@'%' IDENTIFIED BY '1234';
#권한부여
GRANT ALL PRIVILEGES ON TESTDB.* TO 'TESTER'@'%';
#변경사항 적용
FLUSH PRIVILEGES;

#실습하기 3-2
#관리자 비밀번호 수정
SET PASSWORD FOR 'TESTER'@'%'=PASSWORD('1Q2W3E');