-- DML : insert, update, delete 

-- 테이블 생성 
create table emp_work as select * from emp;
create table dept_work as select * from dept;
create table salgrade_work as select * from salgrade;

-- 1. 신입사원 입사 처리  
/*
    2025년 신입사원 3명 입사했습니다.
    이순신(개발팀), 신사임당(마케팅팀), 손홍민(개발팀)
*/
desc emp_work;
select * from emp_work;
select max(empno) from emp_work;        -- 현재 최대 사번 

select deptno, dname from dept_work;

ALTER table emp_work
MODIFY ename VARCHAR2(30);

INSERT INTO emp_work(empno, ename, job, mgr, hiredate, sal, comm, deptno) 
VALUES (7935, '이순신', 'ANALYST', 7566, sysdate, 2000, null,  20);

INSERT INTO emp_work(empno, ename, job, mgr, hiredate, sal, comm, deptno) 
VALUES (7936, '신사임당', 'SALESMAN', 7698, sysdate, 2200, 500,  30);

INSERT INTO emp_work(empno, ename, job, mgr, hiredate, sal, comm, deptno) 
VALUES (7937, '손홍민', 'ANALYST', 7698, sysdate, 2400, null,  20);

select * from emp_work WHERE empno >= 7935;


--2. 부서 통폐합  
/*
    30번 부서(SALES)와 40번 부서(OPERATIONS)를 통합하여  
    35번 부서(SALES_OP)로 만들고, 직원들을 이동시키시오.
*/


desc dept_work;
SELECT * FROM dept_work;
SELECT * FROM EMP_WORK;

-- step1 : 새 부서 생성하기 
insert into dept_work (DEPTNO, DNAME, LOC)
values (35, 'SALES_OP', 'SEOUL');

-- step2 : 직원들 부서 이동 
UPDATE emp_work
  SET deptno = 35
 WHERE deptno IN (30, 40); 
 
-- step3 : 기존 부서 삭제 
DELETE FROM dept_work
 WHERE deptno IN (30, 40);












