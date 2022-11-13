--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employee_name, monthly_salary 
from employee as ee
inner join employee_salary as es 
on ee.id = es.employee_id 
inner join salary as ss 
on ss.id = es.salary_id
order by ee.id;

--2. ������� ���� ���������� � ������� �� ������ 2000.
select employee_name, monthly_salary 
from employee as ee
inner join employee_salary as es 
on ee.id = es.employee_id 
inner join salary as ss 
on ss.id = es.salary_id
where monthly_salary < 2000
order by ee.id;

--3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select ss.*
from salary ss
left join employee_salary es 
on ss.id = es.salary_id
where es.id is null;

--4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select ss.*
from salary ss
left join employee_salary es 
on ss.id = es.salary_id
where es.id is null and monthly_salary < 2000;

--5. ����� ���� ���������� ���� �� ��������� ��.
select e.*
from employee e
left join employee_salary es 
on e.id = es.employee_id
where es.id is null;

--6. ������� ���� ���������� � ���������� �� ���������.
select employee_name, roles_name
from employee as ee
left join roles_employee as re
on ee.id = re.employee_id 
left join roles as rl 
on rl.id = re.role_id
order by ee.id;

--7. ������� ����� � ��������� ������ Java �������������.
select employee_name, roles_name
from employee as ee
inner join roles_employee as re
on ee.id = re.employee_id 
inner join roles as rl 
on rl.id = re.role_id
where roles_name like '%Java developer';

--8. ������� ����� � ��������� ������ Python �������������.
select employee_name, roles_name
from employee as ee
inner join roles_employee as re
on ee.id = re.employee_id 
inner join roles as rl 
on rl.id = re.role_id
where roles_name like '%Python developer';

--9. ������� ����� � ��������� ���� QA ���������.
select employee_name, roles_name
from employee as ee
inner join roles_employee as re
on ee.id = re.employee_id 
inner join roles as rl 
on rl.id = re.role_id
where roles_name like '%QA%';

--10. ������� ����� � ��������� ������ QA ���������.
select employee_name, roles_name
from employee as ee
inner join roles_employee as re
on ee.id = re.employee_id 
inner join roles as rl 
on rl.id = re.role_id
where roles_name like '%Manual QA%';

--11. ������� ����� � ��������� ��������������� QA
select employee_name, roles_name
from employee as ee
inner join roles_employee as re
on ee.id = re.employee_id 
inner join roles as rl 
on rl.id = re.role_id
where roles_name like '%Automation QA%';

--12. ������� ����� � �������� Junior ������������
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

--13. ������� ����� � �������� Middle ������������
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

--14. ������� ����� � �������� Senior ������������
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

--15. ������� �������� Java �������������
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

--16. ������� �������� Python �������������
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

--17. ������� ����� � �������� Junior Python �������������
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

--18. ������� ����� � �������� Middle JS �������������
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

--19. ������� ����� � �������� Senior Java �������������
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

--20. ������� �������� Junior QA ���������
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

--21. ������� ������� �������� ���� Junior ������������
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

--22. ������� ����� ������� JS �������������
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

--23. ������� ����������� �� QA ���������
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

--24. ������� ������������ �� QA ���������
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

--25. ������� ���������� QA ���������
select count(*)
from roles_employee re
inner join roles as r 
on r.id = re.role_id
where roles_name like '%QA%';

--26. ������� ���������� Middle ������������.
select count(*)
from roles_employee re
inner join roles as r 
on r.id = re.role_id
where roles_name like '%Middle%';

--27. ������� ���������� �������������
select count(*)
from roles_employee re
inner join roles as r 
on r.id = re.role_id
where roles_name like '%developer%';

--28. ������� ���� (�����) �������� �������������.
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

--29. ������� �����, ��������� � �� ���� ������������ �� �����������
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

--30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
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

--31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
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

--32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
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