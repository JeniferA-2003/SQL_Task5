create database ElevateLabs;
/*Customers table created*/
create table customers (
customerID int primary key auto_increment,
Name varchar(20),
Email varchar(20),
phone varchar(15),
Adress varchar (50)
);
Insert into customers values(1,"Anbu","anbu@gmail.com","+91 8990056759","2nd floor abc nagar");
Insert into customers values(2,"Bala","bala@gmail.com","+91 9003434984","9nd cross xyz nagar");
Insert into customers values(3,"celin","celin@gmail.com","+91 9038490928","3rd street anna nagar");
Insert into customers values(4,"Dharshuni","dharshuni@gmail.com","+91 9988779003","8nd floor rose flat");
Insert into customers values(5,"mala","mala@gmail.com","+91 8990056759","5nd floor asaai nagar");
/*Orders1 table Created*/
create table Orders1 (
orderID int primary key,
orderDate date,
Amount decimal(10,3),
customerID int,
foreign key (customerID) references customers(customerID)
);
drop table Orders1;

Insert into Orders1 values(1001,"2025-07-04","500.90",1);
Insert into Orders1 values(1002,"2025-04-03","300.7",5);
Insert into Orders1 values(1003,"2025-02-27","800.7",5);
Insert into Orders1 values(1004,"2025-04-03","200.7",2);
Insert into Orders1 values(1005,"2025-06-20","400.7",3);
/*Inner Join*/
select c.customerID,c.name,c.email,c.phone,o.orderDate,o.amount from customers as c
Inner join Orders1 as o
on c.customerID=o.customerID
order by customerID;
/*Left Join*/
select c.customerID,c.name,c.email,c.phone,o.amount from customers as c
Left join Orders1 as o
on c.customerID=o.customerID
order by customerID;

/*Right Join*/
select c.customerID,c.name,c.email,c.phone,o.amount from customers as c
right join Orders1 as o
on c.customerID=o.customerID
order by customerID;

/*There is no direct support for the FULL JOIN also known as FULL OUTER JOIN (using a combination of LEFT JOIN,RIGHT JOIN,UNION)*/

select * from customers as c
left join Orders1 as o
on c.customerID=o.customerID
UNION
select *from customers as c
right join orders1 as o
on c.customerID=o.customerID;


