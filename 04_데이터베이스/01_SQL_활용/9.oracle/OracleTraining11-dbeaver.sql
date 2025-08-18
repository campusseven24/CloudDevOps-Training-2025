-- join lab
/*
 * - Oracle 전통 방식 : where절에 조인조건과 필터조건 함께
 * - ANSI 표준 방식 : ON절에 조인조건, WHERE절에 필터조건 분리
 * - 외부조인 표기 : Oralce (+) vs LEFT/RIGHT JOIN
 * - 자체 조인 
 * - 비등가 조인 
 */

-- 1. DALLAS에 근무하는 모든 사원의 사번, 이름, 직무, 부서명을 조회하시오.

-- ORCLE 전통방식(방언)
SELECT E.ENAME, E.ENAME, E.JOB, D.DNAME  
FROM EMP E, DEPT D 			-- EMP와 DEPT 테이블을 조인 (별칭 사용)
WHERE E.DEPTNO = D.DEPTNO 	-- 조인조건
AND D.LOC = 'DALLAS'		-- 필터조건	
ORDER BY E.DEPTNO ;
-- ANSI 표준 방식
SELECT E.ENAME, E.ENAME, E.JOB, D.DNAME  
FROM EMP E 
JOIN DEPT D ON E.DEPTNO = D.DEPTNO -- JOIN ~ ON 으로 조인 조건 명시
WHERE D.LOC = 'DALLAS'			   -- 조인 후 필터 조건 적용	
ORDER BY E.DEPTNO ;

-- 2. 급여 등급별 사원 현황
/*
 * 급여등급이 3등급인 사원들의 이름, 급여, 부서명을 조회하시오.
 * 힌트 : 3개 테이블 조인 필요 
 */
-- ORCLE 전통방식(방언)
SELECT E.ENAME, E.SAL, D.DNAME  
FROM EMP E, DEPT D, SALGRADE S  -- 3개 테이블 조인
WHERE E.DEPTNO = D.DEPTNO 		-- 조인조건1: emp-dept
AND E.SAL BETWEEN S.LOSAL AND S.HISAL 	-- 조인조건2: 급여가 등급범위내 (비등가조인)
AND S.GRADE = 3					-- 필터조건: 3등급만
ORDER BY E.SAL;

-- ANSI 표준 방식
SELECT E.ENAME, E.SAL, D.DNAME  
FROM EMP E
JOIN DEPT D ON E.DEPTNO = D.DEPTNO -- 첫번째 조인: EMP-DEPT
JOIN SALGRADE S ON E.SAL BETWEEN S.LOSAL AND S.HISAL  -- 두번째 조인:급여범위
WHERE S.GRADE = 3 		-- 3등급만 필터링
ORDER BY E.SAL;			-- 급여순 정렬



-- SUBQUERY LAB
/* 3.
 * 평균 급여보다 많이 받으면서 MANAGER 직급인 직원의 
 * 사번, 이름, 직급, 급여를 조회하시오. 
 */
SELECT AVG(SAL)
FROM EMP;

SELECT EMPNO, ENAME, JOB, SAL 
FROM EMP 
WHERE JOB = 'MANAGER'
AND SAL > (
			SELECT AVG(SAL)
			FROM EMP	
		   );
/*
 * 4. ANY 연산자 사용
 * 
 * SALESMAN 직급 중 누구보다라도 급여를 많이 받는 다른 직급의 직원들을 조회하시오.
 * (급여순으로 정렬)
 * 
 */
SELECT SAL
FROM EMP 
WHERE JOB = 'SALESMAN';

SELECT EMPNO, ENAME, JOB , SAL
FROM EMP 
WHERE JOB != 'SALESMAN'
AND SAL > ANY (
				SELECT SAL
				FROM EMP 
				WHERE JOB = 'SALESMAN'
			   );

