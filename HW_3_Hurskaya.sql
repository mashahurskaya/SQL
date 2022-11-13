--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name, monthly_salary 
from employee as ee
inner join employee_salary as es 
on ee.id = es.employee_id 
inner join salary as ss 
on ss.id = es.salary_id
order by ee.id;

--2. Вывести всех работников у которых ЗП меньше 2000.
select employee_name, monthly_salary 
from employee as ee
inner join employee_salary as es 
on ee.id = es.employee_id 
inner join salary as ss 
on ss.id = es.salary_id
where monthly_salary < 2000
order by ee.id;

--3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select ss.*
from salary ss
left join employee_salary es 
on ss.id = es.salary_id
where es.id is null;

--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select ss.*
from salary ss
left join employee_salary es 
on ss.id = es.salary_id
where es.id is null and monthly_salary < 2000;

--5. Найти всех работников кому не начислена ЗП.
select e.*
from employee e
left join employee_salary es 
on e.id = es.employee_id
where es.id is null;

--6. Вывести всех работников с названиями их должности.
select employee_name, roles_name
from employee as ee
left join roles_employee as re
on ee.id = re.employee_id 
left join roles as rl 
on rl.id = re.role_id
order by ee.id;

--7. Вывести имена и должность только Java разработчиков.
select employee_name, roles_name
from employee as ee
inner join roles_employee as re
on ee.id = re.employee_id 
inner join roles as rl 
on rl.id = re.role_id
where roles_name like '%Java developer';

--8. Вывести имена и должность только Python разработчиков.
select employee_name, roles_name
from employee as ee
inner join roles_employee as re
on ee.id = re.employee_id 
inner join roles as rl 
on rl.id = re.role_id
where roles_name like '%Python developer';

--9. Вывести имена и должность всех QA инженеров.
select employee_name, roles_name
from employee as ee
inner join roles_employee as re
on ee.id = re.employee_id 
inner join roles as rl 
on rl.id = re.role_id
where roles_name like '%QA%';

--10. Вывести имена и должность ручных QA инженеров.
select employee_name, roles_name
from employee as ee
inner join roles_employee as re
on ee.id = re.employee_id 
inner join roles as rl 
on rl.id = re.role_id
where roles_name like '%Manual QA%';

--11. Вывести имена и должность автоматизаторов QA
select employee_name, roles_name
from employee as ee
inner join roles_employee as re
on ee.id = re.employee_id 
inner join roles as rl 
on rl.id = re.role_id
where roles_name like '%Automation QA%';

--12. Вывести имена и зарплаты Junior специалистов
select employee_name, monthly_salary, roles_name  
from employee as ee 
left join employee_salary as es
on ee.id = es.employee_id 
left join salary as sl
on sl.id = es.salary_id 
inner join roles_employee as re
on ee.id = re.employee_id
inner join roles as rl
on rl.id = re.role_id
where roles_name like '%Junior%';

--13. Вывести имена и зарплаты Middle специалистов
select employee_name, monthly_salary, roles_name
from employee as ee 
left join employee_salary as es
on ee.id = es.employee_id 
left join salary as sl
on sl.id = es.salary_id 
inner join roles_employee as re
on ee.id = re.employee_id
inner join roles as rl
on rl.id = re.role_id
where roles_name like '%Middle%';

--14. Вывести имена и зарплаты Senior специалистов
select employee_name, monthly_salary, roles_name
from employee as ee 
left join employee_salary as es
on ee.id = es.employee_id 
left join salary as sl
on sl.id = es.salary_id 
inner join roles_employee as re
on ee.id = re.employee_id
inner join roles as rl
on rl.id = re.role_id
where roles_name like '%Senior%';

--15. Вывести зарплаты Java разработчиков
select roles_name, monthly_salary
from roles r
inner join roles_employee re 
on r.id = re.role_id
inner join employee e
on re.employee_id = e.id
left join employee_salary es
on e.id = es.employee_id
left join salary s
on es.salary_id = s.id
where roles_name like '%Java developer%';

--16. Вывести зарплаты Python разработчиков
select roles_name, monthly_salary
from roles r
inner join roles_employee re 
on r.id = re.role_id
inner join employee e
on re.employee_id = e.id
left join employee_salary es
on e.id = es.employee_id
left join salary s
on es.salary_id = s.id
where roles_name like '%Python developer%';

--17. Вывести имена и зарплаты Junior Python разработчиков
select employee_name, monthly_salary, roles_name
from roles r
inner join roles_employee re 
on r.id = re.role_id
inner join employee e
on re.employee_id = e.id
left join employee_salary es
on e.id = es.employee_id
left join salary s
on es.salary_id = s.id
where roles_name like '%Junior Python developer';

--18. Вывести имена и зарплаты Middle JS разработчиков
select employee_name, monthly_salary, roles_name
from roles r
inner join roles_employee re 
on r.id = re.role_id
inner join employee e
on re.employee_id = e.id
left join employee_salary es
on e.id = es.employee_id
left join salary s
on es.salary_id = s.id
where roles_name like '%Middle JavaScript developer';

--19. Вывести имена и зарплаты Senior Java разработчиков
select employee_name, monthly_salary, roles_name
from roles r
inner join roles_employee re 
on r.id = re.role_id
inner join employee e
on re.employee_id = e.id
left join employee_salary es
on e.id = es.employee_id
left join salary s
on es.salary_id = s.id
where roles_name like '%Senior Java developer';

--20. Вывести зарплаты Junior QA инженеров
select roles_name, monthly_salary
from roles r
inner join roles_employee re 
on r.id = re.role_id
inner join employee e
on re.employee_id = e.id
left join employee_salary es
on e.id = es.employee_id
left join salary s
on es.salary_id = s.id
where roles_name like '%Junior % QA%';

--21. Вывести среднюю зарплату всех Junior специалистов
select avg(monthly_salary)
from employee e
inner join roles_employee re
on e.id = re.employee_id
inner join roles r
on re.role_id = r.id
inner join employee_salary es
on e.id = es.employee_id 
inner join salary s
on es.salary_id = s.id
where roles_name like '%Junior%';

--22. Вывести сумму зарплат JS разработчиков
select sum(monthly_salary)
from employee e
inner join roles_employee re
on e.id = re.employee_id
inner join roles r
on re.role_id = r.id
inner join employee_salary es
on e.id = es.employee_id 
inner join salary s
on es.salary_id = s.id
where roles_name like '%JavaScript developer%';

--23. Вывести минимальную ЗП QA инженеров
select min(monthly_salary)
from employee e
inner join roles_employee re
on e.id = re.employee_id
inner join roles r
on re.role_id = r.id
inner join employee_salary es
on e.id = es.employee_id 
inner join salary s
on es.salary_id = s.id
where roles_name like '%QA%';

--24. Вывести максимальную ЗП QA инженеров
select max(monthly_salary)
from employee e
inner join roles_employee re
on e.id = re.employee_id
inner join roles r
on re.role_id = r.id
inner join employee_salary es
on e.id = es.employee_id 
inner join salary s
on es.salary_id = s.id
where roles_name like '%QA%';

--25. Вывести количество QA инженеров
select count(*)
from roles_employee re
inner join roles as r 
on r.id = re.role_id
where roles_name like '%QA%';

--26. Вывести количество Middle специалистов.
select count(*)
from roles_employee re
inner join roles as r 
on r.id = re.role_id
where roles_name like '%Middle%';

--27. Вывести количество разработчиков
select count(*)
from roles_employee re
inner join roles as r 
on r.id = re.role_id
where roles_name like '%developer%';

--28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(monthly_salary)
from employee e
inner join roles_employee re
on e.id = re.employee_id
inner join roles r
on re.role_id = r.id
inner join employee_salary es
on e.id = es.employee_id 
inner join salary s
on es.salary_id = s.id
where roles_name like '%developer%';

--29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employee_name, roles_name, monthly_salary
from employee e
inner join roles_employee re
on e.id = re.employee_id
inner join roles r
on re.role_id = r.id
inner join employee_salary es
on e.id = es.employee_id 
inner join salary s
on es.salary_id = s.id
order by monthly_salary, e.id;

--30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employee_name, roles_name, monthly_salary
from employee e
inner join roles_employee re
on e.id = re.employee_id
inner join roles r
on re.role_id = r.id
inner join employee_salary es
on e.id = es.employee_id 
inner join salary s
on es.salary_id = s.id
where monthly_salary between 1700 and 2300
order by monthly_salary, e.id;

--31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employee_name, roles_name, monthly_salary
from employee e
inner join roles_employee re
on e.id = re.employee_id
inner join roles r
on re.role_id = r.id
inner join employee_salary es
on e.id = es.employee_id 
inner join salary s
on es.salary_id = s.id
where monthly_salary < 2300
order by monthly_salary, e.id;

--32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employee_name, roles_name, monthly_salary
from employee e
inner join roles_employee re
on e.id = re.employee_id
inner join roles r
on re.role_id = r.id
inner join employee_salary es
on e.id = es.employee_id 
inner join salary s
on es.salary_id = s.id
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary, e.id;