


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

(40,'ֽ��',4,'û�з���Ӳ����Դ��������ֽ���ϵĲ���'),
(41,'����',4,'��Ӳ����Դ���������ṩ����'),
(42,'����',4,'��Ӳ����Դ���������ṩ����');


insert into input values 
(400,'��Դ��λ',4,'Ӳ����Դ��Ȩ���Ѿ����������'),
(401,'�������',4,''),
(402,'���²���',4,''),
(403,'��ֹ',4,'');

insert into output values 
(400,'��ʼ����',4,'');

insert into F values 
(400,40,400,41,'400',''),
(401,41,401,42,'',''),
(402,42,402,41,'',''),
(403,42,403,40,'',''),
(404,41,403,40,'','');