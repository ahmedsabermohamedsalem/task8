

--drop   database  systemforBarwonHelth

--create   database   systemforBarwonHelth


use systemforBarwonHelth


create table   company (
company_ID  int identity  primary  key ,

name  varchar(50)  not null, 
phoneNumber  varchar(11) ,
address  varchar(35)
)



CREATE TABLE Drug
(


 drug_ID  int   identity primary key, 
    TradeName VARCHAR(30) , 
    DrugStrength VARCHAR(30),
    company_ID   int  , 

    CONSTRAINT FK_Drug_Company
        FOREIGN KEY (company_ID)
        REFERENCES Company(company_ID)
        ON DELETE CASCADE
)



create table  doctor(
id int    identity (1, 1)  primary   key ,
name   varchar (20 )  not null, 
specicity  varchar (20) ,
YearsOfExperience int   ,
email varchar(35)     UNIQUE,
phone varchar(11)
) 




create table  paient
(
URNYMBer  int  identity(1, 1)  primary key ,
name varchar( 20)  NOT NULL,
MedicareCardNumber varchar ( 20),  
age int check(age > 0),
email varchar(35)   UNIQUE,
phone varchar(11) ,
address  varchar ( 30) ,
doctor_id   int   references doctor ( id) 

) 


create  table   prescrition 
( 

prescrition int identity  primary key , 

URNYMBer  int   references paient(URNYMBer)  , 

    Durg_id   int   references drug(drug_ID)  , 
 doctor_id   int   references doctor ( id) , 
    date  datetime2 , 
    quantity  int check(quantity>0)
    
   
   


    ) 





















