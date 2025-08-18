-- INSERT, UPDATE, DELETE 

-- 10-1. 테이블 복사 (구조와 데이터 모두)
CREATE TABLE DEPT_TEMP      -- 세 테이블 생성 (CTAS-CREATE TABLE AS SELECT)
    AS SELECT * FROM DEPT;  -- DEPT 테이블의 모든 데이터와 구조를 복사  
    
-- 10-2. 복사된 테이블 확인 
SELECT * FROM dept_temp;

-- 10-3. INSERT - 컬럼명 명시 
INSERT INTO dept_temp (deptno, dname, loc)  -- 삽입할 컬럼명 명시 
VALUES (50, 'DATABASE', 'SEOUL');           -- 각 컬럼에 대응하는 값

SELECT * FROM dept_temp;

-- 10-4. INSERT - 전체 컬럼 (컬럼명 생략)
INSERT INTO dept_temp               -- 컬럼명 생략 시 모든 컬럼에 값 제공 
VALUES (60, 'NETWORK', 'BUSAN');    -- 테이블 정의 순서대로 값 입력, 모든 컬럼에 값 제공해야함.

SELECT * FROM dept_temp;

-- 10-5. INSERT - NULL 값 명시적 입력 
INSERT INTO dept_temp (deptno, dname, loc)
VALUES (70, 'WEB', NULL);       -- LOC 컬럼에 NULL 저장 

SELECT * FROM dept_temp;

-- 10-6. INSERT - 빈 문자열 입력
INSERT INTO dept_temp (deptno, dname, loc)
VALUES (80, 'MOBILE', '');      -- 빈 문자열이 NULL로 저장됨 확인 

SELECT * FROM dept_temp;

-- 10-7. INSERT - 컬럼 생략 (묵시적 NULL)
INSERT INTO dept_temp (deptno, loc)     -- DNAME 컬럼 생략
VALUES (90, 'INCHEON');                 -- 생략된 컬럼은 자동으로 NULL 

SELECT * FROM dept_temp;

-- 10-8 : 테이블 구조만 복사 (데이터 제외)
CREATE TABLE EMP_TEMP                   -- 새 테이블 생성     
    AS SELECT *                         -- 모든 컬럼 선택 
        FROM EMP                        -- EMP 테이블에서 
        WHERE 1 <> 1;                   -- 항상 FALSE 조건 = 데이터는 복사 안됨
                                        -- 구조만 복사하는 트릭 
SELECT * FROM emp_temp;

-- 10-9 : INSERT - 날짜 문자열 자동 변환  
INSERT INTO emp_temp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
VALUES (9999, '홍길동', 'PRESIDENT', NULL, '2025/01/01', 5000, 1000, 10);
SELECT * FROM emp_temp;

-- 10-10 : INSERT - 다른 날짜 형식  
INSERT INTO emp_temp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
VALUES (1111, '성춘향', 'MANAGER', 9999, '2025-01-01', 4000, NULL, 20);

SELECT * FROM emp_temp;

-- 10-11 : INSERT - 날짜 형식 오류 발생 
INSERT INTO emp_temp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
VALUES (2111, '이순신', 'MANAGER', 9999, '07/01/2001', 4000, NULL, 20);

-- 10-12 : INSERT - TO_DATE() 함수 사용
INSERT INTO emp_temp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
VALUES (2111, '이순신', 'MANAGER', 9999, TO_DATE('07/01/2001', 'DD/MM/YYYY'), 4000, NULL, 20);

SELECT * FROM emp_temp;

-- 10-13 : INSERT - SYSDATE 사용 
INSERT INTO emp_temp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
VALUES (3111, '심청이', 'MANAGER', 9999, SYSDATE, 4000, NULL, 30);

SELECT * FROM emp_temp;

-- 10-14 : INSERT - 서브쿼리 활용 
INSERT INTO emp_temp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
SELECT e.empno, e.ename, e.job, e.mgr, e.hiredate, e.sal, e.comm, e.deptno
FROM EMP E, SALGRADE S                  -- EMP와 SALGRADE 조인 
WHERE e.sal BETWEEN s.losal AND s.hisal  -- 급여 범위 조건 
AND s.grade = 1;                        -- 급여등급 1 

SELECT * FROM emp_temp;

--=================
-- 10-15: UPDATE를 위한 테이블 준비
CREATE TABLE DEPT_TEMP2
    AS SELECT * FROM DEPT;

SELECT * FROM dept_temp2;

-- 10-16: UPDATE - 조건 없이 전체 수정 
UPDATE dept_temp2               -- dept_temp2 테이블 수정 
    SET loc = 'SEOUL';          -- 모든 행의 LOC를 SEOUL로 변경 
                                -- WHERE 절이 없으면 전체 행 수정 (주의!!)
SELECT * FROM dept_temp2;

-- 10-17: ROLLBACK - 변경 취소 
ROLLBACK;                       -- 이전 COMMIT 시점으로 되돌림 
                                -- UPDATE 작업 취소 
SELECT * FROM dept_temp2;


