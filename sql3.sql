select * from [sql]


delete from [sql]
where eid>=120;

CREATE TABLE ONLINE_CUSTOMER (
    CID  INT         ,
    Name VARCHAR (30),
    CITY VARCHAR (30)
);

INSERT  INTO ONLINE_CUSTOMER
VALUES (101, 'RAHUL', 'RAJKO'),
(103, 'PTIYA', 'SURAT'),
(106, 'DHARM', 'IKSUR'),
(107, 'MEHUL', 'MORBI');

CREATE TABLE CUSTOMER (
    CID        INT         ,
    Name       VARCHAR (30),
    CITY       VARCHAR (30),
    MEMBERSHIP VARCHAR (20)
);

INSERT  INTO CUSTOMER
VALUES (101, 'RAHUL', ' RAJKOT', 'GOLD'),
(102, 'AMIT', 'AHMEDAB', 'ADSI'),
(103, 'PTIYA', ' SURAT', 'GOLD'),
(104, 'HETVI', ' BARODA', 'PLAT'),
(105, 'RIYA ', 'RAJKOT ', 'SILVE'),
(106, 'DHARM', 'IK SURA', 'TGOL'),
(108, 'ISHIT', 'A RAJOT', 'GOLD');

CREATE TABLE OFFLINE_CUSTOMER (
    CID  INT         ,
    Name VARCHAR (20),
    CITY VARCHAR (20)
);

INSERT  INTO OFFLINE_CUSTOMER
VALUES (102, 'AMIT', 'AHMEDABAD	  '),
(104, 'HETVI', ' BARODA	  '),
(105, 'RIYA', ' RAJKOT		  '),
(106, 'DHARMIK', ' SURAT	  ');
-- art – A: 
-- 1. Display all unique customer names from ONLINE_CUSTOMER and OFFLINE_CUSTOMER. 
select * from ONLINE_CUSTOMER 
union
select * from OFFLINE_CUSTOMER
-- 2. Display all unique customer cities from ONLINE_CUSTOMER and OFFLINE_CUSTOMER. 
SELECT city from ONLINE_CUSTOMER UNION 
select city from OFFLINE_CUSTOMER
-- 3. Display duplicate customer names from both tables ONLINE_CUSTOMER and OFFLINE_CUSTOMER. 
-- 4. Display unique customer IDs from both tables. 
-- 5. Display all GOLD membership customer names and online customer names using UNION. 
-- 6. Display all customer names from CUSTOMER and ONLINE_CUSTOMER using UNION. 
-- 7. Display all cities from CUSTOMER and OFFLINE_CUSTOMER using UNION. 
-- 8. Display all customer IDs from CUSTOMER and OFFLINE_CUSTOMER using UNION ALL. 
-- 9. Display all customer names from RAJKOT city using UNION. 
-- 10. Display all customer names starting with R from both tables using UNION. 
-- 11. Display customers who are both ONLINE and OFFLINE. 
-- 12. Display customer IDs existing in both ONLINE_CUSTOMER and OFFLINE_CUSTOMER. 
-- 13. Display customer names existing only in ONLINE_CUSTOMER. 
-- 14. Display customer names existing only in OFFLINE_CUSTOMER. 
-- 15. Display cities available in both ONLINE_CUSTOMER and OFFLINE_CUSTOMER. 
 
-- Part – B: 
-- 16. Display customer names who are GOLD members and online customers. 
-- 17. Display customer names who are PLATINUM members but not online customers. 
-- 18. Display customer IDs who are online customers but not offline customers. 
-- 19. Display customer IDs who are offline customers but not online customers. 
-- 20. Display customers who are present in CUSTOMER table but not in ONLINE_CUSTOMER. 
-- 21. Display customers who are both GOLD members and available in OFFLINE_CUSTOMER. 
-- 22. Display all distinct cities from all three tables. 
-- 23. Display customers who are online customers and belong to SURAT city using INTERSECT. 
-- 24. Display customers who are offline customers but not from RAJKOT city using MINUS. 
-- 25. Display customers who are GOLD members, online customers, and from SURAT city using 
-- INTERSECT. 
 
-- Part – C: 
-- 26. Display customer names who are present in at least two tables. 
-- 27. Display all customer names from CUSTOMER table excluding customers available in both 
-- ONLINE_CUSTOMER and OFFLINE_CUSTOMER. 
-- 28. Display customer names who are present in both ONLINE_CUSTOMER and OFFLINE_CUSTOMER 
-- but not PLATINIUM members. 
-- 29. Display customer names who are either online or offline but not both. 
-- 30. Display customer IDs present in CUSTOMER table but missing from both ONLINE_CUSTOMER and 
-- OFFLINE_CUSTOMER.