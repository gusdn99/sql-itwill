/*
 * 연습문제:
 * https://github.com/JakeOh/202403_itwill_java152_lab_java/blob/master/lab_sql/hr.sql
 * 파일을 다운받고 스크립트 전체 실행.
 * countries, departments, employees, jobs, locations, regions 테이블 사용.
*/

-- "COUNTRIES"
-- "DEPARTMENTS"
-- "EMPLOYEES"
-- "JOBS"
-- "JOB_HISTORY"
-- "LOCATIONS"
-- "REGIONS"


-- 1. 직원의 last_name과 부서 이름을 검색. (inner join)
select e.last_name, d.department_name from employees e
    join departments d on e.department_id = d.department_id;

-- 2. 직원의 last_name과 부서 이름을 검색. 부서 번호가 없는 직원도 출력. (left outer join)
select e.last_name, d.department_name from employees e
    left join departments d on e.department_id = d.department_id;
    
-- 3. 직원의 last_name과 직무 이름(job title)을 검색.
select e.last_name, j.job_title from employees e, jobs j
where e.job_id = j.job_id;
    
-- 4. 직원의 last_name과 직원이 근무하는 도시 이름(city)를 검색.
select e.last_name, l.city
from employees e, departments d, locations l
where e.department_id = d.department_id and d.location_id = l.location_id;

-- 5. 직원의 last_name과 직원이 근무하는 도시 이름(city)를 검색. 근무 도시를 알 수 없는 직원도 출력.
select e.last_name, l.city from employees e
    left join departments d on e.department_id = d.department_id
    left join locations l on d.location_id = l.location_id;

-- 6. 2008년에 입사한 직원들의 last_name을 검색.
select last_name from employees where to_char(hire_date, 'YYYY') = '2008';

-- 7. 2008년에 입사한 직원들의 부서 이름과 부서별 인원수 검색.
select d.department_name, count(e.department_id) as COUNT from employees e
    join departments d on e.department_id = d.department_id
where to_char(hire_date, 'YYYY') = '2008'
group by d.department_name;

-- 8. 2008년에 입사한 직원들의 부서 이름과 부서별 인원수 검색. 
--    단, 부서별 인원수가 5명 이상인 경우만 출력.
select d.department_name, count(e.department_id) as COUNT from employees e
    join departments d on e.department_id = d.department_id
where to_char(hire_date, 'YYYY') = '2008'
group by d.department_name having count(e.department_id) >= 5;

-- 9. 부서번호, 부서별 급여 평균을 검색. 소숫점 한자리까지 반올림 출력.
select department_id, round(avg(salary), 1) as AVG_SAL from employees group by department_id;

-- 10. 부서별 급여 평균이 최대인 부서의 부서번호, 급여 평균을 검색.
-- (1)
select department_id, round(avg(salary), 1) as AVG_SAL
from employees
group by department_id
having round(avg(salary), 1) =
(select max((round(avg(salary), 1))) from employees group by department_id);

-- (2)
select max(t.AVG_SAL)
from (
    select department_id, avg(salary) as AVG_SAL
    from employees
    group by department_id
) t;

-- with-as-select 구문
with t as (
    select department_id, avg(salary) as AVG_SAL
    from employees
    group by department_id
)
select department_id, round(AVG_SAL, 1)
from t
where AVG_SAL = (
    select max(AVG_SAL) from t
);

-- (3) 다중행 서브쿼리
select department_id, round(avg(salary), 1)
from employees
group by department_id
having avg(salary) >= ALL (
    select avg(salary) from employees
    group by department_id
);

-- 11. 사번, 직원이름, 국가이름, 급여 검색. country_id, location_id
select e.employee_id, e.first_name, e.last_name, c.country_name, e.salary
    from employees e, departments d, locations l, countries c
    where e.department_id = d.department_id and d.location_id = l.location_id and l.country_id = c.country_id;

-- 12. 국가이름, 국가별 급여 합계 검색
select c.country_name, sum(e.salary) as SUM_SAL from employees e
    join departments d on e.department_id = d.department_id
    join locations l on d.location_id = l.location_id
    join countries c on l.country_id = c.country_id
group by c.country_name;
   
-- 13. 사번, 직원이름, 직무 이름, 급여를 검색.
select e.employee_id, e.first_name, e.last_name, j.job_title, e.salary from employees e, jobs j
where e.job_id = j.job_id;
    
-- 14. 직무 이름, 직무별 급여 평균, 최솟값, 최댓값 검색.
select j.job_title, round(avg(e.salary), 1) as AVG_SAL, min(e.salary) as MIN_SAL, max(e.salary) as MAX_SAL
from employees e, jobs j
where e.job_id = j.job_id
group by j.job_title;

-- 15. 국가 이름, 직무 이름, 국가별 직무별 급여 평균 검색.
select c.country_name, j.job_title, round(avg(e.salary), 1) as AVG_SAL from employees e
    join jobs j on e.job_id = j.job_id
    join departments d on e.department_id = d.department_id
    join locations l on d.location_id = l.location_id
    join countries c on l.country_id = c.country_id
group by c.country_name, j.job_title;

-- 16. 국가 이름, 직무 이름, 국가별 직무별 급여 합계을 출력.
--     미국에서, 국가별 직무별 급여 합계가 50,000 이상인 레코드만 출력. 미국 region_id = 2
select c.country_name, j.job_title, sum(e.salary) as SUM_SAL from employees e
    join jobs j on e.job_id = j.job_id
    join departments d on e.department_id = d.department_id
    join locations l on d.location_id = l.location_id
    join countries c on l.country_id = c.country_id
where c.country_id = 'US'  -- c.country_name = 'United States of America'
group by c.country_name, j.job_title having sum(e.salary) >= 50000;
