


truncate fsm;
insert into fsm (FSMID,name,fnid,initstateid) values 
(1,'organization',null,10),
(2,'product',1,20),
(3,'featrue',2,30),
(4,'deployment',2,40);

truncate state;
insert into state values 
(10,'S0',1,''),
(11,'S1',1,''),
(12,'S2',1,''),
(13,'S3',1,''),
(14,'S4',1,''),

(20,'apply',2,''),
(21,'init',2,''),
(22,'building',2,''),
(23,'stable',2,''),
(24,'active',2,''),
(25,'close',2,''),

(30,'apply',3,''),
(31,'init',3,''),
(32,'code',3,''),
(33,'alpha',3,''),
(34,'belta',3,''),
(35,'deploy',3,''),
(36,'service',3,''),
(37,'close',3,''),

(40,'纸面',4,'没有分配硬件资源，仅仅是纸面上的部署。'),
(41,'离线',4,'有硬件资源，不对外提供服务。'),
(42,'在线',4,'有硬件资源，正对外提供服务。');


insert into input values 
(400,'资源到位',4,'硬件资源和权限已经分配就绪。'),
(401,'部署完毕',4,''),
(402,'重新部署',4,''),
(403,'终止',4,'');

insert into output values 
(400,'开始部署',4,'');

insert into F values 
(400,40,400,41,'400',''),
(401,41,401,42,'',''),
(402,42,402,41,'',''),
(403,42,403,40,'',''),
(404,41,403,40,'','');
