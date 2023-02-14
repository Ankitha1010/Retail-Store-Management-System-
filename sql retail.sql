use db;
create table Store(
 Sid int,
 Sname varchar(50) not null,
 Building_no int not null,
 pincode int not null,
 primary key(sid)
 );
alter table Store modify Building_no varchar(30);
insert into store values(12566, "Calvin klein", "12.3.4", 522007);
insert into store values(12562, "Carat lane", "10-5-1", 522006);
insert into store values(12563, "Danial Wellington", "01-8-4", 522005);
insert into store values(12564, "Mango", "07-3-4", 522001);
insert into store values(12565, "Damilano", "12-1-4", 522002);
select * from store;
delete from store where Building_no = 5;
create table Storepc(
 pincode int primary key,
 city varchar(100) not null
 );
insert into storepc values(522007, "Guntur");
insert into storepc values(522006, "Vijaywada");
insert into storepc values(522005, "Pondicherry");
insert into storepc values(522001, "Chennai");
insert into storepc values(522002, "Bangalore");
select * from storepc;
create table s_contact(
 Sid int references Store(Sid),
 Scontact varchar(30) not null,
 primary key(Sid, Scontact)
 );
insert into s_contact values(12566, "9550166632");
insert into s_contact values(12562, "9550699544");
insert into s_contact values(12563, "8688573293");
insert into s_contact values(12564, "9348148312");
insert into s_contact values(12565, "9944038626");
select * from s_contact;

 create table Employe(
 Eid int,
 Fname varchar(100) not null,
 Lname varchar(100) not null,
 salary int not null,
 DOB date not null,
 primary key(Eid),
 Sid int references Store(Sid) 
 );
 Truncate table employe;
 insert into employe values(1,"Ankitha", "Gangavarapu", 10000, '03-10-10', 12566);
 insert into employe values(2,"Achyuth", "Tadepalli", 10000, '03-10-14', 12566);
 insert into employe values(3,"Phanindra", "Tupakula", 120000, '02-07-31', 12562);
 insert into employe values(4,"Sanjeev", "Chitturi", 12000, '03-04-10', 12562);
 insert into employe values(5,"Samhitha", "Gollamudi", 8000, '03-08-22', 12563);
 insert into employe values(6,"Ram", "Potheneni", 10000, '03-06-12', 12563);
 insert into employe values(7,"Manasa", "Mylavarapu", 10000, '03-11-14', 12564);
 insert into employe values(8,"Dheeraj", "kommulapati", 10000, '03-04-20', 12564);
 insert into employe values(9,"Harshith", "kolla", 15000, '02-11-09', 12565);
 insert into employe values(10,"Sahithya", "Pptti", 12000, '03-03-01', 12565);
 insert into employe values(11,"Abhigna", "Badam", 14000, '03-07-11', 12565);
select * from employe;

 create table E_contact(
 Eid int not null references Employe(Eid),
 Econtact varchar(30) not null,
 primary key(Eid, Econtact)
 );
 truncate table e_contact;
 insert into e_contact values(1, "9848528364");
 insert into e_contact values(2, "9348148364");
 insert into e_contact values(3, "9618958074");
 insert into e_contact values(4, "9441177330");
 insert into e_contact values(5, "8688573293");
 insert into e_contact values(6, "8688559800");
 insert into e_contact values(7, "9192546789");
 insert into e_contact values(8, "9032699544");
 insert into e_contact values(9, "7468388990");
 insert into e_contact values(10, "7788507788");
 insert into e_contact values(11, "8688559801");
 select * from e_contact; 
 
 drop table product;
 create table Product(
 Pid int primary key,
 Price int not null,
 Qunatity int not null,
 Name varchar(100) not null,
 Sid int references Store(Sid)
 );
 truncate table product;
 insert into product values(110,5000,20,"Tote bags",12566);
 insert into product values(1111,5000,4,"Tote bags",12566);
 insert into product values(111,2000,10,"Euphoria",12566);
 insert into product values(112,30000,10,"Pendents",12562);
 insert into product values(1112,30000,3,"Pendents",12562);
 insert into product values(113,20000,10,"Rings",12562);
 insert into product values(114,15000,12,"Watches",12563);
 insert into product values(115,3000,5,"Classic Bracelet",12563);
 insert into product values(116,10000,4,"Wallets",12564);
 insert into product values(117,12000,7,"Sunglasses",12564);
 insert into product values(118,50000,4,"Clutches",12565);
 insert into product values(1113,50000,1,"Clutches",12565);
 insert into product values(119,40000,6,"Belt",12565);
 insert into product values(1110,100000,12,"Breifcases",12565);
 select * from product;
 
 create table sale(
 Salid int not null,
 total int not null,
 quantity int not null,
 discount int not null,
 primary key(Salid)
 );
 insert into sale values(2235,4500,4,10 );
 insert into sale values(2236,27000,3,10);
 insert into sale values(2237,42500,1,15);
 insert into sale values(2238,5000,20,0);
 insert into sale values(2239,2000,10,0);
 insert into sale values(2240,30000,10,0);
 insert into sale values(2241,20000,10,0);
 insert into sale values(2242,15000,12,0);
 insert into sale values(2243,3000,5,0);
 insert into sale values(2244,10000,4,0);
 insert into sale values(2245,12000,7,0);
 insert into sale values(2246,50000,4,0);
 insert into sale values(2247,40000,6,0);
 insert into sale values(2248,100000,12,0);
 select * from sale;

create table Customer(
Cid int,
Fname varchar(50) not null,
Lname varchar(50) not null,
b_amt int not null,
quantity int not null,
primary key(Cid)
);
truncate table customer;
insert into customer values (3330,"Chaitanya","Gangavarapu",9500,2 );
insert into customer values (3331,"Madhavi","Gangavarapu",47000,2);
insert into customer values (3332,"Elamathi","Muralidharan",15000,1);
insert into customer values (3333,"Navaneetha","Yandrapragada",20000,1);
insert into customer values (3334,"Pradeep","Yarlagadda",80000,2);
insert into customer values (3335,"Sampath","Goshika",190000,3);
insert into customer values (3336,"Harshini","Doppalapudi",50000,1);
select * from customer;

create table C_contact(
Cid int references Customer(Cid),
Ccontact varchar(30) not null,
primary key(Cid, Ccontact)
);
insert into C_contact values (3330,"9550699544");
insert into C_contact values (3331,"9550199544");
insert into C_contact values (3332,"9550666632");
insert into C_contact values (3333,"9391230074");
insert into C_contact values (3334,"9291230074");
insert into C_contact values (3335,"9618561213");
insert into C_contact values (3336,"9490118079");
select * from c_contact;

create table Products_Sale(
Pid int references Product(Pid),
Salid int references Sale(Salid),
primary key(PID, salid)
);
 truncate products_sale;
 insert into products_sale values(1111,2235);
 insert into products_sale values(1112,2236);
 insert into products_sale values(1113,2237);
 insert into products_sale values(110,2238);
 insert into products_sale values(111,2239);
 insert into products_sale values(112,2240);
 insert into products_sale values(113,2241);
 insert into products_sale values(114,2242);
 insert into products_sale values(115,2243);
 insert into products_sale values(116,2244);
 insert into products_sale values(117,2245);
 insert into products_sale values(118,2246);
 insert into products_sale values(119,2247);
 insert into products_sale values(1110,2248);
 select * from products_sale;

create table Sale_Customer(
Salid int references Sale(salid),
Cid int references customer(cid),
primary key(cid, salid)
);
truncate table sale_customer;
insert into sale_customer values(2238,3330);
insert into sale_customer values(2235,3330);
insert into sale_customer values(2236,3331);
insert into sale_customer values(2240,3331);
insert into sale_customer values(2241,3333);
insert into sale_customer values(2247,3334);
insert into sale_customer values(2246,3335);
insert into sale_customer values(2247,3335);
insert into sale_customer values(2248,3335);
select * from sale_customer;

describe store;
describe Employe;
describe product;
describe customer;
describe sale;
describe storepc;
describe s_contact;
describe E_contact;
describe C_contact;
describe products_sale;
describe sale_customer;

select c.Fname, p.name, p.price, st.sname from customer c 
join sale_customer sc on c.cid = sc.cid 
join sale s on sc.salid = s.salid 
join products_sale ps on s.salid = ps.salid
join product p on ps.pid = p.pid 
join store st on p.sid = st.sid
where st.sname = "damilano" and p.name="belt";

select fname, lname,b_amt from customer where b_amt =(select max(b_amt) from customer);

select fname, lname from employe e
join store s on e.sid = s.sid where sname = "damilano"; 

select product.name, sale.discount, product.price , sale.total as after_discount from product
join products_sale on product.pid = products_sale.pid
join sale on products_sale.salid = sale.salid where discount>0; 

select store.sname as name, s_contact.scontact as contact from store
join s_contact on s_contact.sid = store.sid where store.sid = 12562;