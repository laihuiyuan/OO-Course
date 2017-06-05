create table admin(
ADID varchar(6),
APASSWD varchar(6),
ANAME varchar(10),
AGENDER varchar(2),
AVATAR varchar(1)
);
insert  into admin(ADID,APASSWD,ANAME,AGENDER,AVATAR)
values
('admin','123456','lawe','1','0');
*/

drop table BOOK if esixt 'BOOK';
create table BOOK(
ISBN varchar(6),
BNAME varchar(10),
AUTHER varchar(10),
PRESS varchar(10),
PTIME varchar(10),
BTYPE varchar(10),
PRICE varchar(6),
BAUTH varchar(1),
SNUM varchar(10),
BNUM varchar(10)
);
insert  into BOOK(ISBN,BNAME,AUTHER,PRESS,PTIME,BTYPE,PRICE,BAUTH,BNUM)
values
('000001','OOAD','SHAO','PKU','2002-10-01','Computer','100','0','1,''1');

create table bookcard(
BCID varchar(6),
BNAME varchar(10),
BPASSWD varchar(6),
BSEX varchar(1),
BAUTH varchar(1),
BDATE varchar(10),
BAVATAR varchar(1)
);
insert into bookcard(BCID,BNAME,BPASSWD,BSEX,BAUTH,BDATE,BAVATAR)
values
('000001','lhy','123456','0','0','2002-10-01','0');