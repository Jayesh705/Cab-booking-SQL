create database cab_booking1;

use cab_booking1;
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
    
    
    create table booking(
  bookingid int primary key,
  CustomerID int, 
  cabid int,
  driverid int,foreign key(driverid) references drivers(driverid),
  bookingdate date,
  PickupLocation varchar(20),
  DropoffLocation varchar(20),
  fare decimal,
  Status varchar(10));
   alter table booking	
  modify  status varchar(20);
  
 insert into booking values(9815,234,22177,132516,"2024/01/10","Malad","dadar",10.00,"Completed");
  insert into booking values(9845,265,22182,132560,"2024/07/15","Kandivali","sion",45.00,"In_Progress");
insert into booking values(7865,295,22180,132548,"2024/02/22","Andheri","thane",50.00,"In_Progress");
insert into booking values(2987,210,21413,132529,"2024/03/08","Bandra","kurla",30.00,"In_Progress");
insert into booking values(1290,200,17712,132547,"2024/05/11","santacruz",'nerul',80.00,"Completed");
insert into booking values(3475,285,22184,132516,"2024/04/04","dahisar","panvel",85.00,"Cancelled");
insert into booking values(2386,200,22181,132565,"2024/01/26","mira_road","mahim",55.00,"In_Progress");
insert into booking values(2802,234,22178,132532,"2024/06/18","marin_lines","andheri",15.00,"Cancelled");
insert into booking values(1989,200,21413,132529,"2014/05/01","lower_parel","airoli",75.00,"Completed");
insert into booking values(2972,234,22177,132516,"2024/03/29","vasai","virar",10.00,"Completed");

select * from booking;

create table customers(
  customerID int primary key,
  firstname varchar(10),
  lastname varchar(10),
  email varchar(50),
  phone varchar(12),
  registrationdate date); 


insert into customers	values      (234,"Elon","Musk","ElonMusk@gmail.com","9856742974","2023/03/22");
insert into customers	values	  (265,"Jeff","Bezos","JeffBezos@hotmail.com","9765438765","2024/02/15");
       insert into customers	values     (295,"Bernard","Arnault","BernardArnault@outlook.com","2349739394","2024/01/30");
      insert into customers	values     (287,"Mark","Zuckerberg","MarkZuckerberg@gmail.com","1238366745","2024/05/25");
       insert into customers	values    (275,"Larry","Ellison","LarryEllison@gmail.com","7775534719","2023/10/10");
      insert into customers	values   (210,"Larry","smith","LarryPage@gmail.com","5743786636","2023/12/25");
      insert into customers	values  (200,"Warren","Buffett","WarrenBuffett@hotmail","7567462523","2024/08/11");
     insert into customers	values    (285,"Sergey","Brin","SergeyBrin@gmail.com","9798657340","2023/01/16");
         insert into customers	values    (260,"Bill","smith","BillGates@outlook.com","9879856734","2023/02/01");
insert into customers	values   (277,"Steve","Ballmer","SteveBallmer@gmail.com","7054362320","2023/11/21");

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

create table TripDetails(
tripid int primary key,
BookingID int, 
foreign key (bookingid) references booking(bookingid),
cabid int, foreign key(cabid) references cabs(cabid),
starttime datetime,
endtime datetime,
distance decimal,
tripfare decimal);

insert into tripdetails values(99912,9814,22177,"2024/03/22 11:00","2024/03/22 11:45",15,10);
 insert into tripdetails values(99913,9845,22182,"2024/05/15 03:30","2024/05/15 05:00",25,15);
insert into tripdetails values(99914,7865,22180,"2024/03/18 02:00","2024/03/18 03:45",30,20);
insert into tripdetails values(99915,2987,21413,"2024/04/24 08:00","2024/04/24 10:30",40,22);
insert into tripdetails values(99916,1290,17712,"2024/01/29 06:00","2024/01/29 06:50",22,13);
insert into tripdetails values(99917,2987,22180,"2024/02/25 09:20","2024/02/25 11:55",55,49);
insert into tripdetails values(99918,1290,22177,"2024/01/05 12:00","2024/01/06 01:30",48,40);
insert into tripdetails values(99919,3475,22182,"2024/06/11 05:45","2024/06/11 06:10",24,12);
insert into tripdetails values(99920,2386,13034,"2024/04/04 01:30","2024/04/04 03:00",28,18);
insert into tripdetails values(99921,2802,22184,"2024/05/04 02:45","2024/05/04 03:15",12,10);

-- 12 Write a query to get a list of all drivers and any associated bookings. Include drivers who might not have any bookings.

select firstname,lastname,status
from drivers left join booking
on drivers.driverID = booking.driverid;

-- 15	Write a query to list FirstName and LastName of customers, FirstName and LastName of drivers, PickupLocation, and DropoffLocation for all bookings. Use INNER JOIN and LEFT JOIN as necessary to get all required details.

SELECT 
  c.firstname AS CustomerFirstName, 
  c.lastname AS CustomerLastName, 
  d.firstname AS DriverFirstName, 
  d.lastname AS DriverLastName, 
  b.PickupLocation, 
  b.DropoffLocation
FROM 
  booking b
  INNER JOIN customers c ON b.CustomerID = c.customerID
  LEFT JOIN drivers d ON b.driverid = d.driverID;
  
 -- 8  Write a query to get the total fare collected by each driver. Group the results by DriverID.
    
  select firstname,lastname,sum(fare)totalfare
  from drivers
  inner join booking on booking.driverid = drivers.driverid 
  group by firstname,lastname;
  
  
-- 13 Write a query to get the total distance covered for each cab. Use an INNER JOIN between Cabs and TripDetails, and group by CabID.

   select licenseplate,VehicleType,sum(distance)as totaldistance
   from cabs
   inner join tripdetails on tripdetails.cabid = cabs.cabid
   group by licenseplate,VehicleType;