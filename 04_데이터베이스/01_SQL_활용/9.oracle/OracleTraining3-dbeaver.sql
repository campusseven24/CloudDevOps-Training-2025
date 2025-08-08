-- 5-17 급여가 2000이상 3000이하인 사원데이터 조회하시오
SELECT *
FROM emp 
WHERE sal >= 2000
 AND sal <= 3000
 ;

-- 5-18
SELECT *
FROM emp 
WHERE sal BETWEEN 2000 AND 3000;

-- 5-19  sal가 2000~3000 사이 이외의 값 데이터만 출력하시오
SELECT *
FROM emp 
WHERE sal NOT BETWEEN 2000 AND 3000
ORDER BY sal desc;

-- 5-20  대문자 S로 시작하는 ENAME 열을 조회하시오.
SELECT *
FROM emp 
WHERE ENAME LIKE 'S%';

-- 5-21 사원 이름의 두번째 글자가 L인 데이터를 조회하시오.
SELECT *
FROM emp 
WHERE ENAME LIKE '_L%';

-- 5-22 사원 이름의 AM 포함하는 데이터를 조회하시오.
SELECT *
FROM emp
WHERE ENAME LIKE '%AM%';

-- 5-23 사원 이름의 AM 미포함하는 데이터를 조회하시오.
SELECT *
FROM emp
WHERE ENAME NOT LIKE '%AM%';

-- UNION
SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
WHERE DEPTNO = 10
UNION 
SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
WHERE DEPTNO = 20;

-- 
SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
WHERE DEPTNO = 10
UNION 
SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
WHERE DEPTNO = 10
;

--
SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
WHERE DEPTNO = 10
UNION ALL
SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
WHERE DEPTNO = 10
;

SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
MINUS 
SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
WHERE DEPTNO = 10;  -- 10번 부서 제외한 모든 직원 

SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
INTERSECT  
SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
WHERE DEPTNO = 10;  -- 10번 부서 직원만 


--이름이 'M'으로 시작하거나 'N'으로 끝나는 
--직원의 사번, 이름, 입사일을 조회하시오. 정렬은 이름순으로.
SELECT EMPNO, ENAME, HIREDATE 
FROM EMP
WHERE ENAME LIKE 'M%'
 OR ENAME LIKE '%N'
ORDER BY ENAME ;

-- 직무가 'SALESMAN'이 아닌 직원 중에서
-- 급여가 1500 이상 3000 이하인 직원의
-- 이름, 직무, 급여, 연봉을 조회하시오.
SELECT ENAME,
		JOB,
		SAL,
		SAL * 12 + NVL(COMM, 0) AS "연봉"
FROM EMP 
WHERE JOB != 'SALESMAN'
AND SAL BETWEEN 1500 AND 3000
ORDER BY SAL;

-- 관리자(MGR)가 있는 직원 중 급여가 2000 이상인 직원의
-- 이름, 관리자번호, 급여를 조회하고,
-- 관리자번호, 사원이름 순으로 정렬하시오.
SELECT ENAME, MGR, SAL
FROM EMP
WHERE MGR IS NOT NULL 
AND SAL >= 2000 
ORDER BY MGR, ENAME;

-- 부서번호 10과 30의 직원 중 급여가 1500 이상인
-- 직원을 UNION을 사용하여 조회하시오.
-- 사번, 이름, 급여, 부서번호를 출력하고, 
-- 부서번호(오름차순),급여기준 내림차순으로 정렬하시오. 
SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
WHERE DEPTNO  = 10
 AND SAL >= 1500
UNION 
SELECT EMPNO, ENAME, SAL, DEPTNO 
FROM EMP 
WHERE DEPTNO  = 30
 AND SAL >= 1500
ORDER BY DEPTNO, SAL DESC ;







