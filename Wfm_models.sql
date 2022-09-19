CREATE TABLE employees (
   employee_id int NOT NULL,
    name varchar(50) NOT NULL,
    status varchar(50) NOT NULL,
    manager varchar(30),
    wfm_manager varchar(30),
    email text,
    lockstatus varchar(30),
    experience decimal(5,0),
    profile_id int,
    primary key (employee_id)
);

insert into employees values ( 467,'Nandhu', 'approved','Sabitha','Sabitha','nandhu@softura.com','Not Locked',2,100)
insert into employees values ( 468,'Usha', 'approved','Monika','Monika','usha@softura.com','Not Locked',3,101)
insert into employees values ( 469,'Raji', 'rejected','Lakshmi','Lakshmi','raji@softura.com','Locked',4,102)


CREATE TABLE users (
    username varchar(30) NOT NULL primary key,
    password varchar(30) NOT NULL,
    name varchar(30) NOT NULL,
    role varchar(30) NOT NULL,
    email text
);
insert into users values ('nandhu' , 'nandhu@193', 'nandhuusha','Software Engineer','nandhu@gmail.com')
insert into users values ('shalu' , 'shalu@123', 'shalini','Software Engineer','shalum@gmail.com')
insert into users values ('mubin' , 'mubin@1123', 'mubin','Software Engineer','mubinm@gmail.com')


CREATE TABLE skills (
       skillid decimal(5,0) NOT NULL,
    name varchar(30) NOT NULL,
    primary key (skillid)
);

insert into skills values (1, 'python, sql server, Django')
insert into skills values (2, 'react, react js, node js')
insert into skills values (3, '.net, javascript, jquery')

CREATE TABLE skillmap (
       employee_id int ,
       skillid decimal(5,0) ,
       FOREIGN KEY (employee_id) REFERENCES employees (employee_id),
    FOREIGN KEY (skillid) REFERENCES skills (skillid)
);

insert into skillmap values (467, 1)
insert into skillmap values (468, 2)
insert into skillmap values (469, 3)

CREATE TABLE softlock (
       employee_id int ,
       manager varchar(30),
    reqdate date,
    status varchar(30),
    lastupdated date,
    lockid int not null identity(1,1),
    requestmessage text,
    wfmremark text,
    managerstatus varchar(30),
    mgrstatuscomment text,
    mgrlastupdate date,
    primary key (lockid),
       FOREIGN KEY (employee_id) REFERENCES employees (employee_id)
);

insert into softlock values (467, 'Sabitha','2022-09-15','Requested','2022-09-14','Employee selected','','','',null)