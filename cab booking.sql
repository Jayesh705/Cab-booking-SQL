create database cab_booking;
use cab_booking;
create table customers(
  customerID int primary key,
  firstname varchar(10),
  lastname varchar(10),
  email varchar(50),
  phone varchar(12),
  registrationdate date); 
  
  alter table customers
  modify email varchar(50);
  
  insert into customers	values
      (234,"Elon","Musk","ElonMusk@gmail.com","9856742974","2023/03/22"),
	  (265,"Jeff","Bezos","JeffBezos@hotmail.com","9765438765","2024/02/15"),
      
      (295,"Bernard","Arnault","BernardArnault@outlook.com","2349739394","2024/01/30"),
     
      (287,"Mark","Zuckerberg","MarkZuckerberg@gmail.com","1238366745","2024/05/25"),
       
      (275,"Larry","Ellison","LarryEllison@gmail.com","7775534719","2023/10/10"),
      
      (210,"Larry","smith","LarryPage@gmail.com","5743786636","2023/12/25"),
      
      (200,"Warren","Buffett","WarrenBuffett@hotmail","7567462523","2024/08/11"),
     
      (285,"Sergey","Brin","SergeyBrin@gmail.com","9798657340","2023/01/16"),
       
      (260,"Bill","smith","BillGates@outlook.com","9879856734","2023/02/01"),
	
      (277,"Steve","Ballmer","SteveBallmer@gmail.com","7054362320","2023/11/21");
      
	create table drivers(
    driverID int primary key,
    firstname varchar(10),
    LastName  varchar(10),
    email  varchar(30),
    phone varchar(10),
    LicenseNumber varchar(10),
    VehicleType varchar(10),
    Rating decimal);
    
    
 insert into drivers values   (132516,"Lewis","Hamilton","LewisHamilton@carcab.com",9878669534,9871175,"sedan",5.5);
insert into drivers values  (132529,"Jim","Clark","JimClark@carcab.com",3273986525,9875146,"SUV",4);
    insert into drivers values (132532,"Jackie","Stewart","JackieStewart@carcab.com",4645233420,9870076,"wagon",6);
   insert into drivers values (132547,"Nigel","Mansell","NigelMansell@carcab.com",4654765465,9871134,"wagon",6);
   insert into drivers values (132548,"Fernando","Alonso","FernandoAlonso@carcab.com",8768544558,9874400,"SUV",5);
   insert into drivers values (132549,"Ayrton","Senna","AyrtonSenna@carcab.com",6744534206,9873398,"sedan",4);
   insert into drivers values (132554,"Alain","Prost","AlainProst@carcab.com",8655436532,9870967,"SUV",6);
   insert into drivers values (132560,"Sebastian","Vettel","SebastianVettel@carcab.com",3435864320,9876576,"sedan",4);
    insert into drivers values(132562,"Max","Verstappen","MaxVerstappen@carcab.com",2335686321,9870073,"wagon",4);
   insert into drivers values (132565,"Michael","Schumacher","MichaelSchumacher@carcab.com",4564564320,9873345,"sedan",5);
    select * from drivers;

create table cabs( 
cabid int primary key,
driverid int, foreign key(driverid) references drivers(driverid), 
LicensePlate varchar(10),
VehicleType varchar(10));

insert into cabs values(22177,132516,"MH9870","sedan");
 insert into cabs values (21413,132529,"MH2343","sedan");
 insert into cabs values  (22178,132532,"MH1290","SUV");
 insert into cabs values (13034,132547,"MH2632","wagon");
 insert into cabs values  (22180,132548,"MH7796","SUV");
 insert into cabs values  (17712,132547,"MH0102","SUV");
  insert into cabs values(22172,132532,"MH5856","wagon");
  insert into cabs values (22181,132565,"MH2999","SUV");
  insert into cabs values (22182,132560,"MH2321","wagon");
  insert into cabs values (22184,132516,"MH2803","SUV");
  
  select* from cabs;
  
  create table booking(
  bookingid int primary key,
  CustomerID int, foreign key(customerid) references customers(customerid),
  cabid int,foreign key(cabid) references cabs(cabid),
  bookingdate date,
  PickupLocation varchar(10),
  DropoffLocation varchar(10),
  fare decimal,
  Status varchar(10));
  
  alter table booking	
  modify  PickupLocation varchar(15);
 
 insert into booking values(9814,234,22177,"2024/01/10","Malad","dadar",10.00,"Completed");
  insert into booking values(9845,265,22182,"2024/07/15","Kandivali","sion",45.00,"In_Progress");
insert into booking values(7865,295,22180,"2024/02/22","Andheri","thane",50.00,"In_Progress");
insert into booking values(2987,210,21413,"2024/03/08","Bandra","kurla",30.00,"In_Progress");
insert into booking values(1290,200,17712,"2024/05/11","santacruz",'nerul',80.00,"Completed");
insert into booking values(3475,285,22184,"2024/04/04","dahisar","panvel",85.00,"Cancelled");
insert into booking values(2386,200,22181,"2024/01/26","mira_road","mahim",55.00,"In_Progress");
insert into booking values(2802,234,22178,"2024/06/18","marin_lines","andheri",15.00,"Cancelled");
insert into booking values(1989,200,21413,"2014/05/01","lower_parel","airoli",75.00,"Completed");
insert into booking values(2972,234,22177,"2024/03/29","vasai","virar",10.00,"Completed");

 
 select * from booking;
 
create table TripDetails(
tripid int primary key,
BookingID int, 
foreign key (bookingid) references booking(bookingid),
starttime datetime,
endtime datetime,
distance decimal,
tripfare decimal);

insert into tripdetails values(99912,9814,"2024/03/22 11:00","2024/03/22 11:45",15,10);
 insert into tripdetails values(99913,9845,"2024/05/15 03:30","2024/05/15 05:00",25,15);
insert into tripdetails values(99914,7865,"2024/03/18 02:00","2024/03/18 03:45",30,20);
insert into tripdetails values(99915,2987,"2024/04/24 08:00","2024/04/24 10:30",40,22);
insert into tripdetails values(99916,1290,"2024/01/29 06:00","2024/01/29 06:50",22,13);
insert into tripdetails values(99917,2987,"2024/02/25 09:20","2024/02/25 11:55",55,49);
insert into tripdetails values(99918,1290,"2024/01/05 12:00","2024/01/06 01:30",48,40);
insert into tripdetails values(99919,3475,"2024/06/11 05:45","2024/06/11 06:10",24,12);
insert into tripdetails values(99920,2386,"2024/04/04 01:30","2024/04/04 03:00",28,18);
insert into tripdetails values(99921,2802,"2024/05/04 02:45","2024/05/04 03:15",12,10);

select * from tripdetails;

create table feedback(
 feedbackid int primary key,
 bookingid int,
 foreign key (bookingid) references booking(bookingid),
 customerid int,
 foreign key(customerid) references customers(customerid),
 driverid int,
 foreign key(driverid) references drivers(driverid),
 rating double(2,1),
 comments text,
 feedbackdate date);
 
 insert into feedback values(11,1989,234,132548,4.4,"Thank you so much for the excellent taxi service","2024/03/22");
 insert into feedback values (12,2972,265,132549,2,"pathetic service, poor customer support","2024/03/30");
insert into feedback values(13,2802,295,132560,1,"car was not clen,driver behaviour was not good","2024/01/01");
insert into feedback values(14,9814,287,132560,5,"Very good first experience. Value for money. Decent pricing. Excellent driver","2024/01/29");
insert into feedback values(15,9845,287,132562,4.5,"Many thanks for the good car service and adapting to our needs. Good job","2024/02/11");
insert into feedback values(16,7865,275,132565,3.5,"good service","2024/05/04");
insert into feedback values(17,2987,210,132516,3.8,"Excellent driver! Very kind, smooth and great communication.","2024/04/24");
insert into feedback values(18,7865,200,132529,5,"We are very happy about service of the driver you provided, he is very polite, knowledgeable, prompt and safe driver.The car was comfortable","2024/05/01");
insert into feedback values(19,2987,285,132532,2,"sometimes bad odor, unhygienic and little maintenance","2024/06/11");
insert into feedback values(20,1290,234,132547,3,"nice","2024/01/18");
insert into feedback values(21,3475,265,132516,4.5,"Very good experience. Excellent driver great attitude.Highly appreciated","2024/05/25");

select * from feedback;

-- 1 Write SQL statements to create all the tables with the specified columns.
show tables;

-- 2 Insert at least 10 records into each table

-- 3 Write a query to select all bookings from the Bookings table where the Status is 'In Progress'.
select * from booking
where status="In_Progress";

-- 4 Write a query to select all cabs where the VehicleType is 'SUV' and the DriverID is 5.

select* from drivers
where VehicleType = "SUV" or driverid = 5;

-- 5 Write a query to select all customers whose LastName contains 'Smith'.

select * from customers
where lastname like "%smith%";

-- 6 Write a query to select Fare from the Bookings table and a new column FareStatus. If Fare is greater than $50, set FareStatus to 'High', otherwise 'Low'.

select * ,
case
when fare > 50 then "high"
else "low"
end as farestaus
from booking;

-- 7 Write a query to find all drivers who have received a rating higher than the average rating of all drivers. Use a subquery in the WHERE clause to find these DriverIDs

SELECT driverID, firstname, LastName, Rating
FROM drivers
WHERE Rating > (SELECT AVG(Rating)
  FROM drivers);


-- 8 Write a query to get the total fare collected by each driver(booking). Group the results by DriverID(cabid).





-- 9 Write a query to get the total number of completed bookings for each customer, but only include customers with more than 2 completed bookings. Use the HAVING clause.

SELECT CustomerID, COUNT(status) AS completedbookings
FROM booking
WHERE Status = "Completed"
GROUP BY CustomerID;
HAVING COUNT(*) > 2

--  10	Write a query to select the top 5 drivers with the highest average ratings.

SELECT driverid, AVG(rating) AS averagerating
FROM feedback
GROUP BY driverid
ORDER BY averagerating DESC
LIMIT 5;


-- 11 Write a query to join Bookings with Cabs to get a list of all bookings with PickupLocation, DropoffLocation, and LicensePlate.

select bookingid,pickuplocation,DropoffLocation,licenseplate
from booking,cabs
where booking.cabid = cabs.cabid;



-- 13	Write a query to get the total distance covered for each cab. Use an INNER JOIN between Cabs and TripDetails, and group by CabID.

select cabid,sum(distance)totaldistance
from cabs
join driverid using (drivers)
inner join tripdetails on cabs.cabid = cabid
group by cabs.cabid;

-- 14	Write a query to find all bookings where the fare is higher than the average fare for all completed bookings. Use a subquery in the WHERE clause to find these BookingIDs.

select * from booking
where status ="completed"
and fare >( select avg(fare)
            from booking
            where status ="completed");
            
            




