


---1----SELECT: Retrieve all columns from the Doctor table.

select * from doctor



------2---ORDER BY: List patients in the Patient table in ascending order of their ages.
select * from  paient  order  by age



-----3-----OFFSET FETCH: Retrieve the first 10 patients from the Patient table, starting from the 5th record.

SELECT *
FROM paient
ORDER BY URNYMBer
OFFSET 5 ROWS   --- 
FETCH NEXT 10 ROWS ONLY;


---4----SELECT TOP: Retrieve the top 5 doctors from the Doctor table.
select top(5)  * from doctor

---5------SELECT DISTINCT: Get a list of unique address from the Patient table.
select  distinct  address from  paient

------6 ---WHERE: Retrieve patients from the Patient table who are aged 25.
select * from  paient where age =25 

---7----NULL: Retrieve patients from the Patient table whose email is not provided.

select * from paient  where email is null


----8---AND: Retrieve doctors from the Doctor table who have experience greater than 5 years and specialize in 'Cardiology'.

select * from doctor  d where d.YearsOfExperience>5 
and d.specicity= 'Cardiology'

---9----IN: Retrieve doctors from the Doctor table whose speciality is either 'Dermatology' or 'Oncology'.

select *  from  doctor d   where  d.specicity in ( 'Dermatology' ,  'Oncology')

----10---BETWEEN: Retrieve patients from the Patient table whose ages are between 18 and 30.
select * from paient where age between 18 and 30 

--11---LIKE: Retrieve doctors from the Doctor table whose names start with 'Dr.'.

select * from doctor where name like 'Dr%'

-----12---- Column & Table Aliases: Select the name and email of doctors, aliasing them as 'DoctorName' and 'DoctorEmail'.
select  name  DoctorName , email DoctorEmail  from doctor


----13----Joins: Retrieve all prescriptions with corresponding patient names.


select 
p.Name,
    pr.TradeName,
    pr.Date,
    pr.Quantity

from paient p
join
prescrition  pr
on p.URNYMBer= pr.URNYMBer

----14----GROUP BY: Retrieve the count of patients grouped by their cities.


select  address , count(*) from paient  group by address

--15----HAVING: Retrieve cities with more than 3 patients.

select  address , count(*) from paient  group by address  having count(*) >3

----16---EXISTS: Retrieve patients who have at least one prescription.

SELECT *
FROM Paient p
WHERE EXISTS
(
    SELECT 1
    FROM Prescrition pr
    WHERE pr.URNYMBer = p.URNYMBer
);


-----17----UNION: Retrieve a combined list of doctors and patients.


select  d.id, d.name, d.phone from doctor d
union 
select  p.URNYMBer, p.name,  p.phone from paient p



-----18---INSERT: Insert a new doctor into the Doctor table.


insert into doctor
(
    name,
    specicity,
    YearsOfExperience,
    email,
    phone
)
values
(
    'Saber',
    'Cardiology',
    13,
    'saber@gmail.com',
    '01113766586'
);













