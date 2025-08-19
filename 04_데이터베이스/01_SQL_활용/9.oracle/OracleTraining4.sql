-- 오라클 트랜잭션 
-- COMMIT, ROLLBACK, TCL

-- 11-1 : 실습용 테이블 생성
CREATE TABLE DEPT_TCL
 AS SELECT * FROM DEPT;
 
SELECT * FROM  DEPT_TCL;

-- 11-2 : DML 작업 수행 
/*
    DEPT_TCL 테이블에 여러 DML 작업 수행하시오 (COMMIT 하지 말것)
        - INSERT : 50번 부서 추가 (DATABASE, SEOUL)
        - UPDATE : 40번 부서의 위치를 BUSAN으로 변경
        - DELETE : RESEARCH 부서 삭제 
        
        - 트랜잭션이 자동으로 시작됨 
        - 아직 메모리에만 존재하고 DB에 반영되지 않음 
*/
INSERT INTO DEPT_TCL VALUES (50,'DATABASE', 'SEOUL');
UPDATE DEPT_TCL SET loc = 'BUSAN' WHERE deptno = 40;
DELETE FROM DEPT_TCL WHERE dname = 'RESEARCH';
SELECT * FROM DEPT_TCL;

-- 11-3 : ROLLBACK - 변경사항 취소 
/*
    - ROLLBACK 명령어 사용  
    - 트랜잭션 시작 시점으로 데이터 복구 
    - INSERT, UPDATE, DELETE가 모두 취소됨 
*/
ROLLBACK;
SELECT * FROM DEPT_TCL;

-- 11-4 : 새로운 트랜잭션 시작 
INSERT INTO DEPT_TCL VALUES (50,'NETWORK', 'SEOUL');
UPDATE DEPT_TCL SET loc = 'BUSAN' WHERE deptno = 20;
DELETE FROM DEPT_TCL WHERE deptno = 40;
SELECT * FROM DEPT_TCL;

-- 11-5 : commit - 변경사항 영구 저장 
/*
     - commit 명령어로 트랜잭션 완료  
     - 변경사항이 db에 영구 저장됨 
     - commit 후에는 rollback 불가능함  
     - rollback을 시도해도 데이터가 유지됨 
*/
commit;
SELECT * FROM DEPT_TCL;
ROLLBACK;
SELECT * FROM DEPT_TCL;

-- 11-6 : 다중 세션과 격리성 
-- 세션 1
SELECT * FROM DEPT_TCL;

-- 11-7: 세션 1에서 delete (commit 전)
/*
    - 세션 1: 50번 부서 삭제  (commit 하지 않음)
    - 세션 1: 삭제 결과 확인 (50번 부서 없음)
    - 세션 2: 조회 시 50번 부서가 여전히 보임  
*/
delete from DEPT_TCL WHERE deptno = 50;
SELECT * FROM DEPT_TCL;

-- 11-8: commit으로 다른 셰션에 반영 
/*
    세션 1의 변경사항을 commit하여 세션 2에 반영되는지 확인하시오 
        - commit 후 변경사항이 모든 세션에 반영됨 
*/

-- 세션1
commit;
SELECT * FROM DEPT_TCL;

-- 11-9 : 일관성 확인 (select) 
/*
    두 세션에서 동일한 데이터를 조회하여 읽기 일관성 확인 (Consistency) 
*/
SELECT * FROM DEPT_TCL;


-- 11-10 : 세션 1에서 update (commit 전)
/*
    - 세션 1: 30번 부서의 위치를 seoul로 변경
    - 세션 1: 변경 확인
    - 세션 2: 아직 원래 값이 보임 
    - commit 전까지는 다른 세션에 영향 없음.
*/
UPDATE DEPT_TCL set loc='SEOUL' WHERE DEPTNO = 30;
SELECT * FROM DEPT_TCL;

-- 11-11 : 두세션이 동일한 행을 수정할 때 발생하는 락 대기 상황 발생함 
/*
    - 세션1 : 30번 부서를 수정 중 (COMMIT 안함)
    - 세션2 : 동일한 30번 부서 수정 시도  
    - 세션2개 대기 상태가 됨 (행 레벨 락)
        - 세션 2는 세션 1이 COMMIT/ROLLBACK 할때까지 대기함 
*/

-- 11-12 : 세션1 COMMIT으로 락 해제 
-- 세션1
COMMIT;

-- 11-13 : 모든 변경사항 확인 
/*
    - 세션 1: 최종 데이터 확인
    - 세션 2: 최종 데이터 확인  
*/
SELECT * FROM DEPT_TCL;

