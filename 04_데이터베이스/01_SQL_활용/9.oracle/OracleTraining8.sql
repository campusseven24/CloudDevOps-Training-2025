-- ORACLE 제약조건(CONSTRINTS) 쿼리 

-- 14-1: NOT NULL 제약조건을 가진 테이블 생성 
CREATE TABLE TABLE_NOTNULL(
  LOGIN_ID VARCHAR2(20) NOT NULL, -- 로그인 ID: 필수 입력
  LOGIN_PWD VARCHAR2(20) NOT NULL, -- 로그인 패스워드: 필수 입력  
  TEL VARCHAR2(20)
);

DESC TABLE_NOTNULL;

-- 14-2: 제약조건 위반 테스트 
INSERT INTO TABLE_NOTNULL (login_id, login_pwd, tel)
VALUES ('TEST_ID_01', NULL, '010-1234-5678');  -- SQL 오류: ORA-01400

-- 14-3: 제약조건 준수한 데이터 입력 
INSERT INTO TABLE_NOTNULL (login_id, login_pwd)
VALUES ('TEST_ID_01', '1234');

SELECT * FROM TABLE_NOTNULL;

-- 14-4: 이미 저장된 데이터의 필수 항목을 NULL로 변경
UPDATE TABLE_NOTNULL
 SET LOGIN_PWD = NULL       -- NOT NULL 컬럼을 NULL로 업데이트 시도
WHERE login_id = 'TEST_ID_01';  -- SQL 오류: ORA-01407

-- 14-5 : 시스템 제약조건 정보 조회 
-- 현재 사용자가 소유한 모든 제약조건 정보 조회 
SELECT owner,       -- 제약조건 소유자
       constraint_name,     -- 제약조건 이름
       constraint_type,     -- 제약조건 타입 (C: check/not null)
       table_name           -- 테이블 이름 
FROM USER_CONSTRAINTS;

-- 14-6 : 명시적 제약조건 이름 지정 
-- 제약조건에 의미있는 이름을 부여하여 테이블을 생성하시오 








