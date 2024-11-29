SHOW DATABASES;
SHOW TABLES;

CREATE TABLE member(
	id int NOT NULL AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL,
	passwd VARCHAR(50) NOT NULL,
	PRIMARY KEY(id)
);

TABLE member; -- SELECT * FROM member;
DESC member; -- 테이블 설명 (구조 확인)

-- 열을 추가하기
ALTER TABLE member ADD phone VARCHAR(20);
ALTER TABLE member ADD nickname VARCHAR(50);

-- 열을 삭제하기
ALTER TABLE member DROP COLUMN nickname;

-- 열의 이름을 수정하기
ALTER TABLE member CHANGE COLUMN passwd password varchar(60);

-- 테이블의 이름을 수정하기
RENAME TABLE member TO student;
TABLE student;

-- 테이블에서 데이터 삽입
INSERT INTO student VALUES('1', '홍길순', '1235', '01022223333');
INSERT INTO student VALUES('2', '수여인', '1236', '01033334444');
INSERT INTO student VALUES('3', '가가가', '1237', '01044445555');
INSERT INTO student VALUES('4', '나나나', '1238', '01055556666');


-- 조회할때
SELECT id, name, phone FROM student;
SELECT * FROM student ORDER BY id DESC LIMIT 2;
SELECT * FROM student WHERE id=2;

INSERT INTO student VALUES('99', 'abc', '1239', null);

-- 열의 값을 수정할때
UPDATE student SET phone="01011112222" WHERE name='abc';
SELECT * FROM student;

INSERT INTO student VALUES('15', 'Tracy', 'abcd', 'null');
TABLE student;

-- 행을 삭제하려면
DELETE FROM student WHERE id='15';
