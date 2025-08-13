-- NULL 처리 함수 
-- 6-45 : NVL - NULL값 처리 
-- NULL과의 연산 결과는 항상 NULL이므로 NVL로 처리 필요함
-- NVL(컬럼, 대처값) : NULL이면 대체값 반환 
SELECT EMPNO, ENAME, SAL, COMM,
		SAL+COMM, 			-- COMM이 NULL이면 결과도 NULL
		NVL(COMM, 0),		-- COMM이 NULL이면 0으로 대체	
		SAL+NVL(COMM, 0) 	-- NULL을 0으로 처리 후 계산 	
FROM EMP;

-- 6-46: NVL2 - NULL 여부에 따른 분기 처리
-- NVL2(컬럼, NULL아닐때값, NULL일때값)
SELECT EMPNO, ENAME, COMM,
		NVL2(COMM, 'O', 'X'),	-- 커미션 있으면 O, 없으면 X
		NVL2(COMM, SAL*12+COMM, SAL*12) AS ANNSAL 
FROM EMP;

-- 커미션 처리
SELECT ENAME,
		SAL,
		COMM,
		NVL(COMM, 0) AS "커미션_없으면_0",
		SAL + NVL(COMM, 0) AS "총_수입",
		NVL(TO_CHAR(COMM), '커미션 없음') AS "커미션_문자처리"
FROM EMP 
WHERE DEPTNO = 30;


-- 조건 처리 함수 
-- 6-47 : DECODE - 조건별 값 반환 (Oracle 전용)
-- DECODE(컬럼, 조건1, 결과1, 조건2, 결과2,...., 기본값)
-- swith-case문과 유사 
SELECT EMPNO, ENAME, job, sal,
		DECODE(JOB,
				'MANAGER', sal*1.1,		-- MANAGER이면 10% 인상
				'SALESMAN', sal*1.05,	-- SALESMAN이면 5% 인상
				'ANALYST', sal,			-- ANALYST이면 동결
				sal*1.03) AS upsal		-- 나머지는 3% 인상
FROM emp;

-- 6-48: case - 조건별 값 반환 (표준 SQL)
-- decode보다 복잡한 조건 처리 가능 
-- 모든 dbms에서 사용 가능 
SELECT EMPNO, ENAME, job, sal,
		CASE JOB  
			WHEN 'MANAGER' THEN sal*1.1
			WHEN 'SALESMAN' THEN sal*1.05
			WHEN 'ANALYST' THEN sal 
			ELSE sal*1.03
		END AS upsal
FROM emp;

-- 6-49 : case - 범위 조건 처리 
SELECT EMPNO, ENAME, COMM,
		CASE 
			WHEN COMM IS NULL THEN '해당사항 없음'
			WHEN comm = 0 THEN '수당없음'
			WHEN comm > 0 THEN '수당 : ' || comm 
		END AS comm_text
FROM emp;

-- 부서별 지역 표시
SELECT ENAME,
		DEPTNO,
		DECODE(DEPTNO,
				10, '뉴욕 본사 🗽',
				20, '달라스 연구소 🔬',
				30, '시카고 영업소 💼',
				40, '보스턴 운영팀 ⚙️',
				'기타 부서') AS "근무지"
FROM emp;

-- 
SELECT ename,
		job,
		sal,
		deptno,
		CASE 
			WHEN job = 'PRESIDENT' THEN '최고경영자'
			WHEN job = 'MANAGER' AND SAL >= 2500 THEN '고급 관리자'
			WHEN job = 'MANAGER' AND sal < 2500 THEN '일반 관리자'
			WHEN job = 'SALESMAN' AND COMM > 500 THEN '우수 영업사원'
			WHEN job = 'SALESMAN' THEN '일반 영업사원'
			WHEN DEPTNO = 20 THEN '연구원'
			ELSE '일반 직원'
		END AS "세부_직급"
FROM emp;

--
SELECT ename, sal, sal * 1.1 AS "인상후 급여"
FROM emp;

--
SELECT SUM(sal) AS "전체급여합계"
FROM emp;




