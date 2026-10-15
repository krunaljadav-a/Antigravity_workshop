


DROP TABLE IF EXISTS [SQL];

CREATE TABLE [SQL] (
    EID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    City VARCHAR(50),
    Department VARCHAR(50),
    JoinYear INT,
    State VARCHAR(50)
);

INSERT INTO SQL VALUES
(101,'Amit','Patel','Ahmedabad','IT',2020,'Gujarat'),
(102,'Rahul','Sharma','Mumbai','HR',2019,'Maharashtra'),
(103,'Neha','Verma','Jaipur','Finance',2021,'Rajasthan'),
(104,'Priya','Joshi','Surat','Marketing',2018,'Gujarat'),
(105,'Karan','Singh','Delhi','IT',2022,'Delhi'),
(106,'Riya','Mehta','Vadodara','HR',2020,'Gujarat'),
(107,'Vikas','Yadav','Lucknow','Sales',2017,'Uttar Pradesh'),
(108,'Sneha','Patel','Rajkot','Finance',2023,'Gujarat'),
(109,'Arjun','Kumar','Patna','IT',2019,'Bihar'),
(110,'Pooja','Shah','Pune','Marketing',2021,'Maharashtra'),
(111,'Manish','Gupta','Indore','HR',2018,'Madhya Pradesh'),
(112,'Anjali','Mishra','Bhopal','Sales',2020,'Madhya Pradesh'),
(113,'Rohit','Dubey','Kanpur','IT',2022,'Uttar Pradesh'),
(114,'Divya','Agarwal','Kota','Finance',2019,'Rajasthan'),
(115,'Nikhil','Desai','Bhavnagar','Marketing',2021,'Gujarat'),
(116,'Meena','Rathod','Udaipur','HR',2017,'Rajasthan'),
(117,'Suresh','Chauhan','Nagpur','Sales',2023,'Maharashtra'),
(118,'Kavita','Pandey','Varanasi','Finance',2020,'Uttar Pradesh'),
(119,'Deepak','Soni','Jodhpur','IT',2018,'Rajasthan'),
(120,'Komal','Trivedi','Jamnagar','Marketing',2022,'Gujarat'),
(121,'Harsh','Malhotra','Chandigarh','HR',2021,'Punjab'),
(122,'Asha','Kulkarni','Nashik','Sales',2019,'Maharashtra'),
(123,'Yash','Patel','Morbi','IT',2023,'Gujarat'),
(124,'Nisha','Tiwari','Gorakhpur','Finance',2020,'Uttar Pradesh'),
(125,'Ajay','Prajapati','Mehsana','Marketing',2018,'Gujarat'),
(126,'Bhavna','Saxena','Agra','HR',2022,'Uttar Pradesh'),
(127,'Rakesh','Jain','Ajmer','Sales',2021,'Rajasthan'),
(128,'Payal','Modi','Anand','Finance',2019,'Gujarat'),
(129,'Vivek','Srivastava','Noida','IT',2020,'Uttar Pradesh'),
(130,'Sheetal','Bansal','Amritsar','Marketing',2023,'Punjab');


select * from [sql]
