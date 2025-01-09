--------------------------------------------------------
--  File created - vasárnap-március-27-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence ID
--------------------------------------------------------

   CREATE SEQUENCE  "ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE   ;
--------------------------------------------------------
--  DDL for Table ALBUM_KEPEK
--------------------------------------------------------

  CREATE TABLE "ALBUM_KEPEK" 
   (	"ID" NUMBER, 
	"KEP_ID" NUMBER, 
	"ALBUM_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ALBUMOK
--------------------------------------------------------

  CREATE TABLE "ALBUMOK" 
   (	"ID" NUMBER, 
	"PROFIL_ID" NUMBER, 
	"CIM" VARCHAR2(100 BYTE), 
	"LETREHOZVA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CSOPORTOK
--------------------------------------------------------

  CREATE TABLE "CSOPORTOK" 
   (	"ID" NUMBER(*,0), 
	"CSOPORT_NEV" VARCHAR2(40 BYTE), 
	"LEIRAS" VARCHAR2(1000 BYTE), 
	"INDEX_KEP" VARCHAR2(50 BYTE), 
	"ALAPITAS_DATUM" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CSOPORT_TAGOK
--------------------------------------------------------

  CREATE TABLE "CSOPORT_TAGOK" 
   (	"ID" NUMBER(*,0), 
	"PROFIL_ID" NUMBER(*,0), 
	"CSOPORT_ID" NUMBER(*,0), 
	"SZEREP" VARCHAR2(20 BYTE), 
	"ELFOGADOTT" NUMBER(*,0), 
	"MIOTA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CSOPORT_UZENETEK
--------------------------------------------------------

  CREATE TABLE "CSOPORT_UZENETEK" 
   (	"ID" NUMBER, 
	"KULDO" NUMBER, 
	"FOGADO_CSOPORT" NUMBER, 
	"MIKOR" DATE, 
	"OLVASOTT" NUMBER, 
	"UZENET" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ENGEDELYEK
--------------------------------------------------------

  CREATE TABLE "ENGEDELYEK" 
   (	"ID" NUMBER, 
	"KULDO" NUMBER, 
	"FOGADO" NUMBER, 
	"ELFOGADOTT" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FELHASZNALOK
--------------------------------------------------------

  CREATE TABLE "FELHASZNALOK" 
   (	"ID" NUMBER(*,0), 
	"FELHASZNALO_NEV" VARCHAR2(50 BYTE), 
	"JELSZO" VARCHAR2(32 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FELTOLTOTT_KEPEK
--------------------------------------------------------

  CREATE TABLE "FELTOLTOTT_KEPEK" 
   (	"ID" NUMBER(*,0), 
	"PROFIL_ID" NUMBER(*,0), 
	"KEP_NEV" VARCHAR2(20 BYTE), 
	"FORMATUM" VARCHAR2(20 BYTE), 
	"MIKOR" DATE, 
	"KEP_LEIRAS" VARCHAR2(500 BYTE), 
	"FOGLALT_TARHELY" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ISMEROSOK
--------------------------------------------------------

  CREATE TABLE "ISMEROSOK" 
   (	"ID" NUMBER(*,0), 
	"KULDO" NUMBER(*,0), 
	"FOGADO" NUMBER(*,0), 
	"FUGGOBEN" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KEP_MEGJEGYZESEK
--------------------------------------------------------

  CREATE TABLE "KEP_MEGJEGYZESEK" 
   (	"ID" NUMBER(*,0), 
	"KEP_ID" NUMBER(*,0), 
	"PROFIL_ID" NUMBER(*,0), 
	"HOZZASZOLAS" VARCHAR2(500 BYTE), 
	"MIKOR" DATE, 
	"OSMEGJEGYZES_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table NEVNAPOK
--------------------------------------------------------

  CREATE TABLE "NEVNAPOK" 
   (	"ID" NUMBER, 
	"KERESZTNEV" VARCHAR2(20 BYTE), 
	"HONAP" NUMBER, 
	"NAP" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRIVAT_UZENETEK
--------------------------------------------------------

  CREATE TABLE "PRIVAT_UZENETEK" 
   (	"ID" NUMBER(*,0), 
	"KULDO" NUMBER(*,0), 
	"FOGADO" NUMBER(*,0), 
	"MIKOR" DATE, 
	"OLVASOTT" NUMBER(*,0), 
	"UZENET" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROFIL_MEGJEGYZESEK
--------------------------------------------------------

  CREATE TABLE "PROFIL_MEGJEGYZESEK" 
   (	"ID" NUMBER, 
	"KULDO" NUMBER, 
	"FOGADO" NUMBER, 
	"OSMEGYJEGYZES_ID" NUMBER, 
	"MEGYJEGY_DATUM" DATE, 
	"MEGJEGYZES" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROFILOK
--------------------------------------------------------

  CREATE TABLE "PROFILOK" 
   (	"ID" NUMBER(*,0), 
	"FELHASZNALO_ID" NUMBER(*,0), 
	"VEZETEKNEV" VARCHAR2(30 BYTE), 
	"KERESZTNEV" VARCHAR2(30 BYTE), 
	"NEME" CHAR(15 BYTE), 
	"SZULNAP" DATE, 
	"PROFIL_KEP" VARCHAR2(50 BYTE), 
	"VAROS" VARCHAR2(30 BYTE), 
	"MEGYE" VARCHAR2(40 BYTE), 
	"ISKOLA" VARCHAR2(50 BYTE), 
	"MUNKAHELY" VARCHAR2(50 BYTE), 
	"REG_DATUM" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into ALBUM_KEPEK
SET DEFINE OFF;
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('1','1','1');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('2','2','1');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('3','3','2');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('4','4','2');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('5','5','3');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('6','6','3');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('7','7','4');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('8','8','4');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('9','9','5');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('10','10','5');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('11','11','6');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('12','12','6');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('13','13','7');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('14','14','7');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('15','15','8');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('16','16','8');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('17','17','9');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('18','18','9');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('19','19','10');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('20','20','10');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('21','21','11');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('22','22','11');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('23','23','12');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('24','24','12');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('25','25','13');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('26','26','13');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('27','27','14');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('28','28','14');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('29','29','15');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('30','30','15');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('31','31','16');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('32','32','16');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('33','33','17');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('34','34','17');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('35','35','18');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('36','36','18');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('37','37','19');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('38','38','19');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('39','39','20');
Insert into ALBUM_KEPEK (ID,KEP_ID,ALBUM_ID) values ('40','40','20');
REM INSERTING into ALBUMOK
SET DEFINE OFF;
Insert into ALBUMOK (ID,PROFIL_ID,CIM,LETREHOZVA) values ('1','1','Album1',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into ALBUMOK (ID,PROFIL_ID,CIM,LETREHOZVA) values ('2','2','Album2',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into ALBUMOK (ID,PROFIL_ID,CIM,LETREHOZVA) values ('3','3','Album3',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into ALBUMOK (ID,PROFIL_ID,CIM,LETREHOZVA) values ('4','4','Album4',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into ALBUMOK (ID,PROFIL_ID,CIM,LETREHOZVA) values ('5','5','Album5',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into ALBUMOK (ID,PROFIL_ID,CIM,LETREHOZVA) values ('6','6','Album6',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into ALBUMOK (ID,PROFIL_ID,CIM,LETREHOZVA) values ('7','7','Album7',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into ALBUMOK (ID,PROFIL_ID,CIM,LETREHOZVA) values ('8','8','Album8',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into ALBUMOK (ID,PROFIL_ID,CIM,LETREHOZVA) values ('9','9','Album9',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into ALBUMOK (ID,PROFIL_ID,CIM,LETREHOZVA) values ('10','10','Album10',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into ALBUMOK (ID,PROFIL_ID,CIM,LETREHOZVA) values ('11','11','Album11',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into ALBUMOK (ID,PROFIL_ID,CIM,LETREHOZVA) values ('12','12','Album12',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into ALBUMOK (ID,PROFIL_ID,CIM,LETREHOZVA) values ('13','13','Album13',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into ALBUMOK (ID,PROFIL_ID,CIM,LETREHOZVA) values ('14','14','Album14',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into ALBUMOK (ID,PROFIL_ID,CIM,LETREHOZVA) values ('15','15','Album15',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into ALBUMOK (ID,PROFIL_ID,CIM,LETREHOZVA) values ('16','16','Album16',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into ALBUMOK (ID,PROFIL_ID,CIM,LETREHOZVA) values ('17','17','Album17',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into ALBUMOK (ID,PROFIL_ID,CIM,LETREHOZVA) values ('18','18','Album18',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into ALBUMOK (ID,PROFIL_ID,CIM,LETREHOZVA) values ('19','19','Album19',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into ALBUMOK (ID,PROFIL_ID,CIM,LETREHOZVA) values ('20','20','Album20',to_date('22-MÁRC. -27','RR-MON-DD'));
REM INSERTING into CSOPORTOK
SET DEFINE OFF;
Insert into CSOPORTOK (ID,CSOPORT_NEV,LEIRAS,INDEX_KEP,ALAPITAS_DATUM) values ('1','Alfa','Ez egy alfa csoport','kep1.png',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into CSOPORTOK (ID,CSOPORT_NEV,LEIRAS,INDEX_KEP,ALAPITAS_DATUM) values ('2','Béta','Ez egy béta csoport','kep2.png',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into CSOPORTOK (ID,CSOPORT_NEV,LEIRAS,INDEX_KEP,ALAPITAS_DATUM) values ('3','Gamma','Ez egy gamma csoport','kep3.png',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into CSOPORTOK (ID,CSOPORT_NEV,LEIRAS,INDEX_KEP,ALAPITAS_DATUM) values ('4','Delta','Ez egy delta csoport','kep4.png',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into CSOPORTOK (ID,CSOPORT_NEV,LEIRAS,INDEX_KEP,ALAPITAS_DATUM) values ('5','Pí','Ez egy pí csoport','kep5.png',to_date('22-MÁRC. -27','RR-MON-DD'));
REM INSERTING into CSOPORT_TAGOK
SET DEFINE OFF;
Insert into CSOPORT_TAGOK (ID,PROFIL_ID,CSOPORT_ID,SZEREP,ELFOGADOTT,MIOTA) values ('1','1','1','Admin','1',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into CSOPORT_TAGOK (ID,PROFIL_ID,CSOPORT_ID,SZEREP,ELFOGADOTT,MIOTA) values ('2','2','1','Tag','1',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into CSOPORT_TAGOK (ID,PROFIL_ID,CSOPORT_ID,SZEREP,ELFOGADOTT,MIOTA) values ('3','3','1','Tag','1',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into CSOPORT_TAGOK (ID,PROFIL_ID,CSOPORT_ID,SZEREP,ELFOGADOTT,MIOTA) values ('4','4','1','Tag','1',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into CSOPORT_TAGOK (ID,PROFIL_ID,CSOPORT_ID,SZEREP,ELFOGADOTT,MIOTA) values ('5','5','2','Admin','1',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into CSOPORT_TAGOK (ID,PROFIL_ID,CSOPORT_ID,SZEREP,ELFOGADOTT,MIOTA) values ('6','6','2','Tag','1',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into CSOPORT_TAGOK (ID,PROFIL_ID,CSOPORT_ID,SZEREP,ELFOGADOTT,MIOTA) values ('7','7','2','Tag','1',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into CSOPORT_TAGOK (ID,PROFIL_ID,CSOPORT_ID,SZEREP,ELFOGADOTT,MIOTA) values ('8','8','2','Tag','1',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into CSOPORT_TAGOK (ID,PROFIL_ID,CSOPORT_ID,SZEREP,ELFOGADOTT,MIOTA) values ('9','9','3','Admin','1',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into CSOPORT_TAGOK (ID,PROFIL_ID,CSOPORT_ID,SZEREP,ELFOGADOTT,MIOTA) values ('10','10','3','Tag','1',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into CSOPORT_TAGOK (ID,PROFIL_ID,CSOPORT_ID,SZEREP,ELFOGADOTT,MIOTA) values ('11','11','3','Tag','1',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into CSOPORT_TAGOK (ID,PROFIL_ID,CSOPORT_ID,SZEREP,ELFOGADOTT,MIOTA) values ('12','12','3','Tag','1',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into CSOPORT_TAGOK (ID,PROFIL_ID,CSOPORT_ID,SZEREP,ELFOGADOTT,MIOTA) values ('13','13','3','Admin','1',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into CSOPORT_TAGOK (ID,PROFIL_ID,CSOPORT_ID,SZEREP,ELFOGADOTT,MIOTA) values ('14','14','3','Tag','1',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into CSOPORT_TAGOK (ID,PROFIL_ID,CSOPORT_ID,SZEREP,ELFOGADOTT,MIOTA) values ('15','15','3','Tag','1',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into CSOPORT_TAGOK (ID,PROFIL_ID,CSOPORT_ID,SZEREP,ELFOGADOTT,MIOTA) values ('16','16','3','Tag','1',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into CSOPORT_TAGOK (ID,PROFIL_ID,CSOPORT_ID,SZEREP,ELFOGADOTT,MIOTA) values ('17','17','4','Admin','1',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into CSOPORT_TAGOK (ID,PROFIL_ID,CSOPORT_ID,SZEREP,ELFOGADOTT,MIOTA) values ('18','18','4','Tag','1',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into CSOPORT_TAGOK (ID,PROFIL_ID,CSOPORT_ID,SZEREP,ELFOGADOTT,MIOTA) values ('19','19','4','Tag','1',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into CSOPORT_TAGOK (ID,PROFIL_ID,CSOPORT_ID,SZEREP,ELFOGADOTT,MIOTA) values ('20','20','4','Tag','1',to_date('22-MÁRC. -27','RR-MON-DD'));
REM INSERTING into CSOPORT_UZENETEK
SET DEFINE OFF;
Insert into CSOPORT_UZENETEK (ID,KULDO,FOGADO_CSOPORT,MIKOR,OLVASOTT,UZENET) values ('1','2','1',to_date('22-MÁRC. -27','RR-MON-DD'),'1','Szevasztok csináljuk az adatbázist mostmár');
Insert into CSOPORT_UZENETEK (ID,KULDO,FOGADO_CSOPORT,MIKOR,OLVASOTT,UZENET) values ('2','3','1',to_date('22-MÁRC. -27','RR-MON-DD'),'1','ok hívlak dc');
Insert into CSOPORT_UZENETEK (ID,KULDO,FOGADO_CSOPORT,MIKOR,OLVASOTT,UZENET) values ('3','1','1',to_date('22-MÁRC. -27','RR-MON-DD'),'1','mek én is');
Insert into CSOPORT_UZENETEK (ID,KULDO,FOGADO_CSOPORT,MIKOR,OLVASOTT,UZENET) values ('4','3','1',to_date('22-MÁRC. -27','RR-MON-DD'),'1','ok');
REM INSERTING into ENGEDELYEK
SET DEFINE OFF;
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('1','1','10','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('2','1','11','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('3','2','12','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('4','2','13','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('5','3','5','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('6','3','6','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('7','4','14','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('8','4','15','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('9','5','16','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('10','5','17','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('11','6','18','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('12','6','19','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('13','7','19','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('14','7','20','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('15','8','5','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('16','8','6','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('17','9','17','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('18','9','8','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('19','10','16','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('20','10','17','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('21','11','1','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('22','11','2','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('23','12','1','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('24','12','2','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('25','13','10','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('26','13','11','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('27','14','2','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('28','14','3','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('29','15','4','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('30','15','5','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('31','16','8','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('32','16','9','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('33','17','13','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('34','17','14','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('35','18','5','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('36','18','6','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('37','19','11','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('38','19','12','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('39','20','9','függõben');
Insert into ENGEDELYEK (ID,KULDO,FOGADO,ELFOGADOTT) values ('40','20','10','függõben');
REM INSERTING into FELHASZNALOK
SET DEFINE OFF;
Insert into FELHASZNALOK (ID,FELHASZNALO_NEV,JELSZO,EMAIL) values ('1','lengyeln','Asd123','lengyelnorbi5@gmail.com');
Insert into FELHASZNALOK (ID,FELHASZNALO_NEV,JELSZO,EMAIL) values ('2','gododani','Asd123','gododani12@gmail.com');
Insert into FELHASZNALOK (ID,FELHASZNALO_NEV,JELSZO,EMAIL) values ('3','lizaeleklel','Asd123','midisz11@gmail.com');
Insert into FELHASZNALOK (ID,FELHASZNALO_NEV,JELSZO,EMAIL) values ('4','admin','Admin123','admin@gmail.com');
Insert into FELHASZNALOK (ID,FELHASZNALO_NEV,JELSZO,EMAIL) values ('5','valami','Asd123','valami@gmail.com');
Insert into FELHASZNALOK (ID,FELHASZNALO_NEV,JELSZO,EMAIL) values ('6','katica','Asd123','katica@gmail.com');
Insert into FELHASZNALOK (ID,FELHASZNALO_NEV,JELSZO,EMAIL) values ('7','almafa','Asd123','almafa@gmail.com');
Insert into FELHASZNALOK (ID,FELHASZNALO_NEV,JELSZO,EMAIL) values ('8','kemenypite','Asd123','kemenypite@gmail.com');
Insert into FELHASZNALOK (ID,FELHASZNALO_NEV,JELSZO,EMAIL) values ('9','oroszlan','Asd123','oroszlan@gmail.com');
Insert into FELHASZNALOK (ID,FELHASZNALO_NEV,JELSZO,EMAIL) values ('10','beka','Asd123','beka@gmail.com');
Insert into FELHASZNALOK (ID,FELHASZNALO_NEV,JELSZO,EMAIL) values ('11','samsung','Asd123','samsung@gmail.com');
Insert into FELHASZNALOK (ID,FELHASZNALO_NEV,JELSZO,EMAIL) values ('12','tancoslabu','Asd123','tancoslabu@gmail.com');
Insert into FELHASZNALOK (ID,FELHASZNALO_NEV,JELSZO,EMAIL) values ('13','kecskefajzat','Asd123','kecskefajzat@gmail.com');
Insert into FELHASZNALOK (ID,FELHASZNALO_NEV,JELSZO,EMAIL) values ('14','patrik','Asd123','patrik@gmail.com');
Insert into FELHASZNALOK (ID,FELHASZNALO_NEV,JELSZO,EMAIL) values ('15','lampaking','Asd123','lampaking@gmail.com');
Insert into FELHASZNALOK (ID,FELHASZNALO_NEV,JELSZO,EMAIL) values ('16','beadando','Asd123','beadando@gmail.com');
Insert into FELHASZNALOK (ID,FELHASZNALO_NEV,JELSZO,EMAIL) values ('17','sqlnyelv','Asd123','sqlnyelv@gmail.com');
Insert into FELHASZNALOK (ID,FELHASZNALO_NEV,JELSZO,EMAIL) values ('18','spongyabob','Asd123','spongyabob@gmail.com');
Insert into FELHASZNALOK (ID,FELHASZNALO_NEV,JELSZO,EMAIL) values ('19','szandimandi','Asd123','szandimandi@gmail.com');
Insert into FELHASZNALOK (ID,FELHASZNALO_NEV,JELSZO,EMAIL) values ('20','csillagban','Asd123','csillagban@gmail.com');
REM INSERTING into FELTOLTOTT_KEPEK
SET DEFINE OFF;
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('1','1','feltolt1','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('2','1','feltolt2','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('3','2','feltolt3','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('4','2','feltolt4','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('5','3','feltolt5','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('6','3','feltolt6','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('7','4','feltolt7','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('8','4','feltolt8','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('9','5','feltolt9','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('10','5','feltolt10','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('11','6','feltolt11','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('12','6','feltolt12','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('13','7','feltolt13','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('14','7','feltolt14','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('15','8','feltolt15','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('16','8','feltolt16','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('17','9','feltolt17','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('18','9','feltolt18','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('19','10','feltolt19','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('20','10','feltolt20','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('21','11','feltolt21','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('22','11','feltolt22','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('23','12','feltolt23','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('24','12','feltolt24','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('25','13','feltolt25','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('26','13','feltolt26','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('27','14','feltolt27','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('28','14','feltolt28','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('29','15','feltolt29','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('30','15','feltolt30','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('31','16','feltolt31','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('32','16','feltolt32','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('33','17','feltolt33','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('34','17','feltolt34','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('35','18','feltolt35','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('36','18','feltolt36','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('37','19','feltolt37','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('38','19','feltolt38','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('39','20','feltolt39','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
Insert into FELTOLTOTT_KEPEK (ID,PROFIL_ID,KEP_NEV,FORMATUM,MIKOR,KEP_LEIRAS,FOGLALT_TARHELY) values ('40','20','feltolt20','png',to_date('22-MÁRC. -27','RR-MON-DD'),'A kép leírása','20');
REM INSERTING into ISMEROSOK
SET DEFINE OFF;
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('1','1','2','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('2','1','3','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('3','1','4','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('4','1','5','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('5','1','6','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('6','2','7','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('7','2','8','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('8','2','9','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('9','2','10','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('10','2','11','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('11','3','12','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('12','3','13','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('13','3','14','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('14','3','15','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('15','3','16','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('16','4','17','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('17','4','18','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('18','4','19','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('19','4','20','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('20','4','1','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('21','5','2','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('22','5','3','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('23','5','4','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('24','5','6','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('25','5','7','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('26','6','8','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('27','6','9','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('28','6','10','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('29','6','11','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('30','6','12','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('31','7','13','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('32','7','14','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('33','7','15','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('34','7','16','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('35','7','17','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('36','8','18','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('37','8','19','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('38','8','20','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('39','8','1','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('40','8','2','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('41','9','3','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('42','9','4','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('43','9','5','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('44','9','6','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('45','9','7','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('46','10','8','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('47','10','9','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('48','10','11','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('49','10','12','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('50','10','13','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('51','11','14','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('52','11','15','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('53','11','16','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('54','11','17','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('55','11','18','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('56','12','19','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('57','12','20','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('58','12','1','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('59','12','2','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('60','12','3','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('61','13','4','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('62','13','5','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('63','13','6','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('64','13','7','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('65','13','8','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('66','14','9','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('67','14','10','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('68','14','11','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('69','14','12','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('70','14','13','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('71','15','14','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('72','15','16','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('73','15','17','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('74','15','18','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('75','15','19','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('76','16','20','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('77','16','1','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('78','16','2','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('79','16','3','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('80','16','4','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('81','17','5','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('82','17','6','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('83','17','7','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('84','17','8','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('85','17','9','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('86','18','10','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('87','18','11','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('88','18','12','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('89','18','13','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('90','18','14','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('91','19','15','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('92','19','16','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('93','19','17','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('94','19','18','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('95','19','20','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('96','20','1','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('97','20','2','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('98','20','3','elfogadott');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('99','20','4','függõben');
Insert into ISMEROSOK (ID,KULDO,FOGADO,FUGGOBEN) values ('100','20','5','elfogadott');
REM INSERTING into KEP_MEGJEGYZESEK
SET DEFINE OFF;
Insert into KEP_MEGJEGYZESEK (ID,KEP_ID,PROFIL_ID,HOZZASZOLAS,MIKOR,OSMEGJEGYZES_ID) values ('1','3','1','Ez egy jó kép',to_date('22-MÁRC. -27','RR-MON-DD'),null);
Insert into KEP_MEGJEGYZESEK (ID,KEP_ID,PROFIL_ID,HOZZASZOLAS,MIKOR,OSMEGJEGYZES_ID) values ('2','5','2','Ez egy jó kép',to_date('22-MÁRC. -27','RR-MON-DD'),null);
Insert into KEP_MEGJEGYZESEK (ID,KEP_ID,PROFIL_ID,HOZZASZOLAS,MIKOR,OSMEGJEGYZES_ID) values ('3','1','3','Ez egy jó kép',to_date('22-MÁRC. -27','RR-MON-DD'),null);
REM INSERTING into NEVNAPOK
SET DEFINE OFF;
Insert into NEVNAPOK (ID,KERESZTNEV,HONAP,NAP) values ('1','Norbert','6','6');
Insert into NEVNAPOK (ID,KERESZTNEV,HONAP,NAP) values ('2','Dániel','7','21');
Insert into NEVNAPOK (ID,KERESZTNEV,HONAP,NAP) values ('3','Liza','11','25');
Insert into NEVNAPOK (ID,KERESZTNEV,HONAP,NAP) values ('4','Sándor','3','18');
Insert into NEVNAPOK (ID,KERESZTNEV,HONAP,NAP) values ('5','Gabriella','12','12');
Insert into NEVNAPOK (ID,KERESZTNEV,HONAP,NAP) values ('6','Kamilla','12','28');
Insert into NEVNAPOK (ID,KERESZTNEV,HONAP,NAP) values ('7','Antal','1','17');
Insert into NEVNAPOK (ID,KERESZTNEV,HONAP,NAP) values ('8','Martin','10','10');
Insert into NEVNAPOK (ID,KERESZTNEV,HONAP,NAP) values ('9','Kitti','4','11');
Insert into NEVNAPOK (ID,KERESZTNEV,HONAP,NAP) values ('10','Gabriella','12','12');
Insert into NEVNAPOK (ID,KERESZTNEV,HONAP,NAP) values ('11','Renátó','10','6');
Insert into NEVNAPOK (ID,KERESZTNEV,HONAP,NAP) values ('12','Renátó','11','12');
Insert into NEVNAPOK (ID,KERESZTNEV,HONAP,NAP) values ('13','Árpád','12','11');
Insert into NEVNAPOK (ID,KERESZTNEV,HONAP,NAP) values ('14','Petra','10','2');
Insert into NEVNAPOK (ID,KERESZTNEV,HONAP,NAP) values ('15','Anett','6','13');
Insert into NEVNAPOK (ID,KERESZTNEV,HONAP,NAP) values ('16','Donát','2','17');
Insert into NEVNAPOK (ID,KERESZTNEV,HONAP,NAP) values ('17','Róbert','6','7');
Insert into NEVNAPOK (ID,KERESZTNEV,HONAP,NAP) values ('18','Géza','2','25');
Insert into NEVNAPOK (ID,KERESZTNEV,HONAP,NAP) values ('19','Brigitta','2','1');
Insert into NEVNAPOK (ID,KERESZTNEV,HONAP,NAP) values ('20','Natália','7','27');
Insert into NEVNAPOK (ID,KERESZTNEV,HONAP,NAP) values ('21','Alex','2','9');
REM INSERTING into PRIVAT_UZENETEK
SET DEFINE OFF;
Insert into PRIVAT_UZENETEK (ID,KULDO,FOGADO,MIKOR,OLVASOTT,UZENET) values ('1','2','3',to_date('22-MÁRC. -27','RR-MON-DD'),'1','Szia');
Insert into PRIVAT_UZENETEK (ID,KULDO,FOGADO,MIKOR,OLVASOTT,UZENET) values ('2','3','2',to_date('22-MÁRC. -27','RR-MON-DD'),'1','Sziamia');
Insert into PRIVAT_UZENETEK (ID,KULDO,FOGADO,MIKOR,OLVASOTT,UZENET) values ('3','2','3',to_date('22-MÁRC. -27','RR-MON-DD'),'1','Hogy ityeg a fityeg :)');
Insert into PRIVAT_UZENETEK (ID,KULDO,FOGADO,MIKOR,OLVASOTT,UZENET) values ('4','3','2',to_date('22-MÁRC. -27','RR-MON-DD'),'0','bumburnyák');
Insert into PRIVAT_UZENETEK (ID,KULDO,FOGADO,MIKOR,OLVASOTT,UZENET) values ('5','1','3',to_date('22-MÁRC. -27','RR-MON-DD'),'1','meöeo');
Insert into PRIVAT_UZENETEK (ID,KULDO,FOGADO,MIKOR,OLVASOTT,UZENET) values ('6','3','1',to_date('22-MÁRC. -28','RR-MON-DD'),'0','kakaóscsigát eszel-e');
Insert into PRIVAT_UZENETEK (ID,KULDO,FOGADO,MIKOR,OLVASOTT,UZENET) values ('7','1','2',to_date('22-MÁRC. -29','RR-MON-DD'),'1','beteg lettem nem tudok menni have fun');
Insert into PRIVAT_UZENETEK (ID,KULDO,FOGADO,MIKOR,OLVASOTT,UZENET) values ('8','2','1',to_date('22-MÁRC. -29','RR-MON-DD'),'1','jaj te szegény jobbulást :(');
Insert into PRIVAT_UZENETEK (ID,KULDO,FOGADO,MIKOR,OLVASOTT,UZENET) values ('9','1','2',to_date('22-ÁPR.  -02','RR-MON-DD'),'1','star wars megy a tvben képzeld!!!');
Insert into PRIVAT_UZENETEK (ID,KULDO,FOGADO,MIKOR,OLVASOTT,UZENET) values ('10','13','7',to_date('22-ÁPR.  -27','RR-MON-DD'),'0','Szióka');
REM INSERTING into PROFIL_MEGJEGYZESEK
SET DEFINE OFF;
Insert into PROFIL_MEGJEGYZESEK (ID,KULDO,FOGADO,OSMEGYJEGYZES_ID,MEGYJEGY_DATUM,MEGJEGYZES) values ('1','1','2',null,to_date('22-MÁRC. -27','RR-MON-DD'),'Heló szia szevasz! Írtam a profilodra.');
Insert into PROFIL_MEGJEGYZESEK (ID,KULDO,FOGADO,OSMEGYJEGYZES_ID,MEGYJEGY_DATUM,MEGJEGYZES) values ('2','2','3',null,to_date('22-MÁRC. -27','RR-MON-DD'),'Heló szia szevasz! Írtam a profilodra.');
Insert into PROFIL_MEGJEGYZESEK (ID,KULDO,FOGADO,OSMEGYJEGYZES_ID,MEGYJEGY_DATUM,MEGJEGYZES) values ('3','3','1',null,to_date('22-MÁRC. -27','RR-MON-DD'),'Heló szia szevasz! Írtam a profilodra.');
REM INSERTING into PROFILOK
SET DEFINE OFF;
Insert into PROFILOK (ID,FELHASZNALO_ID,VEZETEKNEV,KERESZTNEV,NEME,SZULNAP,PROFIL_KEP,VAROS,MEGYE,ISKOLA,MUNKAHELY,REG_DATUM) values ('1','1','Lengyel','Norbert','férfi         ',to_date('00-DEC.  -21','RR-MON-DD'),'profil1.png','Szeged','Csongrád','Vasvári','SZTE',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into PROFILOK (ID,FELHASZNALO_ID,VEZETEKNEV,KERESZTNEV,NEME,SZULNAP,PROFIL_KEP,VAROS,MEGYE,ISKOLA,MUNKAHELY,REG_DATUM) values ('2','2','Godó','Dániel','férfi         ',to_date('00-SZEPT.-08','RR-MON-DD'),'profil2.png','Szeged','Csongrád','Vasvári','SZTE',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into PROFILOK (ID,FELHASZNALO_ID,VEZETEKNEV,KERESZTNEV,NEME,SZULNAP,PROFIL_KEP,VAROS,MEGYE,ISKOLA,MUNKAHELY,REG_DATUM) values ('3','3','Kósi','Liza','nõ            ',to_date('01-OKT.  -26','RR-MON-DD'),'profil3.png','Szeged','Csongrád','Vasvári','SZTE',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into PROFILOK (ID,FELHASZNALO_ID,VEZETEKNEV,KERESZTNEV,NEME,SZULNAP,PROFIL_KEP,VAROS,MEGYE,ISKOLA,MUNKAHELY,REG_DATUM) values ('4','4','Kolompár','Sándor','férfi         ',to_date('22-MÁRC. -27','RR-MON-DD'),'profil4.png','Szeged','Csongrád','Vasvári','SZTE',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into PROFILOK (ID,FELHASZNALO_ID,VEZETEKNEV,KERESZTNEV,NEME,SZULNAP,PROFIL_KEP,VAROS,MEGYE,ISKOLA,MUNKAHELY,REG_DATUM) values ('5','5','Gál','Gabriella','nõ            ',to_date('05-MÁJ.  -21','RR-MON-DD'),'profil5.png','Szeged','Csongrád','Vasvári','SZTE',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into PROFILOK (ID,FELHASZNALO_ID,VEZETEKNEV,KERESZTNEV,NEME,SZULNAP,PROFIL_KEP,VAROS,MEGYE,ISKOLA,MUNKAHELY,REG_DATUM) values ('6','6','Jónás','Kamilla','nõ            ',to_date('05-MÁJ.  -21','RR-MON-DD'),'profil6.png','Szeged','Csongrád','Vasvári','SZTE',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into PROFILOK (ID,FELHASZNALO_ID,VEZETEKNEV,KERESZTNEV,NEME,SZULNAP,PROFIL_KEP,VAROS,MEGYE,ISKOLA,MUNKAHELY,REG_DATUM) values ('7','7','Fekete','Antal','férfi         ',to_date('10-JAN.  -30','RR-MON-DD'),'profil7.png','Szeged','Csongrád','Vasvári','SZTE',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into PROFILOK (ID,FELHASZNALO_ID,VEZETEKNEV,KERESZTNEV,NEME,SZULNAP,PROFIL_KEP,VAROS,MEGYE,ISKOLA,MUNKAHELY,REG_DATUM) values ('8','8','Simon','Martin','férfi         ',to_date('10-JAN.  -30','RR-MON-DD'),'profil8.png','Szeged','Csongrád','Vasvári','SZTE',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into PROFILOK (ID,FELHASZNALO_ID,VEZETEKNEV,KERESZTNEV,NEME,SZULNAP,PROFIL_KEP,VAROS,MEGYE,ISKOLA,MUNKAHELY,REG_DATUM) values ('9','9','Csonka','Kitti','nõ            ',to_date('10-JAN.  -30','RR-MON-DD'),'profil9.png','Szeged','Csongrád','Vasvári','SZTE',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into PROFILOK (ID,FELHASZNALO_ID,VEZETEKNEV,KERESZTNEV,NEME,SZULNAP,PROFIL_KEP,VAROS,MEGYE,ISKOLA,MUNKAHELY,REG_DATUM) values ('10','10','Somogyi','Gabriella','nõ            ',to_date('10-JAN.  -30','RR-MON-DD'),'profil10.png','Szeged','Csongrád','Vasvári','SZTE',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into PROFILOK (ID,FELHASZNALO_ID,VEZETEKNEV,KERESZTNEV,NEME,SZULNAP,PROFIL_KEP,VAROS,MEGYE,ISKOLA,MUNKAHELY,REG_DATUM) values ('11','11','Balog','Renátó','férfi         ',to_date('10-JAN.  -30','RR-MON-DD'),'profil11.png','Szeged','Csongrád','Vasvári','SZTE',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into PROFILOK (ID,FELHASZNALO_ID,VEZETEKNEV,KERESZTNEV,NEME,SZULNAP,PROFIL_KEP,VAROS,MEGYE,ISKOLA,MUNKAHELY,REG_DATUM) values ('12','12','Fehér','Árpád','férfi         ',to_date('10-JAN.  -30','RR-MON-DD'),'profil12.png','Szeged','Csongrád','Vasvári','SZTE',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into PROFILOK (ID,FELHASZNALO_ID,VEZETEKNEV,KERESZTNEV,NEME,SZULNAP,PROFIL_KEP,VAROS,MEGYE,ISKOLA,MUNKAHELY,REG_DATUM) values ('13','13','Orbán','Petra','nõ            ',to_date('10-JAN.  -30','RR-MON-DD'),'profil13.png','Szeged','Csongrád','Vasvári','SZTE',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into PROFILOK (ID,FELHASZNALO_ID,VEZETEKNEV,KERESZTNEV,NEME,SZULNAP,PROFIL_KEP,VAROS,MEGYE,ISKOLA,MUNKAHELY,REG_DATUM) values ('14','14','Kelemen','Anett','nõ            ',to_date('10-JAN.  -30','RR-MON-DD'),'profil14.png','Szeged','Csongrád','Vasvári','SZTE',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into PROFILOK (ID,FELHASZNALO_ID,VEZETEKNEV,KERESZTNEV,NEME,SZULNAP,PROFIL_KEP,VAROS,MEGYE,ISKOLA,MUNKAHELY,REG_DATUM) values ('15','15','Mezei','Donát','férfi         ',to_date('10-JAN.  -30','RR-MON-DD'),'profil15.png','Szeged','Csongrád','Vasvári','SZTE',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into PROFILOK (ID,FELHASZNALO_ID,VEZETEKNEV,KERESZTNEV,NEME,SZULNAP,PROFIL_KEP,VAROS,MEGYE,ISKOLA,MUNKAHELY,REG_DATUM) values ('16','16','Bálint','Róbert','férfi         ',to_date('10-JAN.  -30','RR-MON-DD'),'profil16.png','Szeged','Csongrád','Vasvári','SZTE',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into PROFILOK (ID,FELHASZNALO_ID,VEZETEKNEV,KERESZTNEV,NEME,SZULNAP,PROFIL_KEP,VAROS,MEGYE,ISKOLA,MUNKAHELY,REG_DATUM) values ('17','17','Kiss','Géza','férfi         ',to_date('10-JAN.  -30','RR-MON-DD'),'profil17.png','Szeged','Csongrád','Vasvári','SZTE',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into PROFILOK (ID,FELHASZNALO_ID,VEZETEKNEV,KERESZTNEV,NEME,SZULNAP,PROFIL_KEP,VAROS,MEGYE,ISKOLA,MUNKAHELY,REG_DATUM) values ('18','18','Pásztor','Brigitta','nõ            ',to_date('10-JAN.  -30','RR-MON-DD'),'profil18.png','Szeged','Csongrád','Vasvári','SZTE',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into PROFILOK (ID,FELHASZNALO_ID,VEZETEKNEV,KERESZTNEV,NEME,SZULNAP,PROFIL_KEP,VAROS,MEGYE,ISKOLA,MUNKAHELY,REG_DATUM) values ('19','19','Török','Natália','nõ            ',to_date('10-JAN.  -30','RR-MON-DD'),'profil19.png','Szeged','Csongrád','Vasvári','SZTE',to_date('22-MÁRC. -27','RR-MON-DD'));
Insert into PROFILOK (ID,FELHASZNALO_ID,VEZETEKNEV,KERESZTNEV,NEME,SZULNAP,PROFIL_KEP,VAROS,MEGYE,ISKOLA,MUNKAHELY,REG_DATUM) values ('20','20','Váradi','Alex','férfi         ',to_date('10-JAN.  -30','RR-MON-DD'),'profil20.png','Szeged','Csongrád','Vasvári','SZTE',to_date('22-MÁRC. -27','RR-MON-DD'));
--------------------------------------------------------
--  DDL for Index FELHASZNALOK_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "FELHASZNALOK_UK1" ON "FELHASZNALOK" ("FELHASZNALO_NEV", "EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FELHASZNALOK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FELHASZNALOK_PK" ON "FELHASZNALOK" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CSOPORTOK_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "CSOPORTOK_UK1" ON "CSOPORTOK" ("CSOPORT_NEV") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ISMEROSOK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ISMEROSOK_PK" ON "ISMEROSOK" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CSOPORTOK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CSOPORTOK_PK" ON "CSOPORTOK" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index NEVNAPOK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEVNAPOK_PK" ON "NEVNAPOK" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PROFILOK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROFILOK_PK" ON "PROFILOK" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CSOPORT_TAGOK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CSOPORT_TAGOK_PK" ON "CSOPORT_TAGOK" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KEP_MEGJEGYZESEK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KEP_MEGJEGYZESEK_PK" ON "KEP_MEGJEGYZESEK" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ENGEDELYEK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ENGEDELYEK_PK" ON "ENGEDELYEK" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ALBUM_KEPEK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALBUM_KEPEK_PK" ON "ALBUM_KEPEK" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PROFIL_MEGJEGYZESEK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROFIL_MEGJEGYZESEK_PK" ON "PROFIL_MEGJEGYZESEK" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PRIVAT_UZENETEK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PRIVAT_UZENETEK_PK" ON "PRIVAT_UZENETEK" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ALBUMOK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALBUMOK_PK" ON "ALBUMOK" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CSOPORT_UZENETEK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CSOPORT_UZENETEK_PK" ON "CSOPORT_UZENETEK" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FELTOLTOTT_KEPEK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FELTOLTOTT_KEPEK_PK" ON "FELTOLTOTT_KEPEK" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table FELTOLTOTT_KEPEK
--------------------------------------------------------

  ALTER TABLE "FELTOLTOTT_KEPEK" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "FELTOLTOTT_KEPEK" MODIFY ("PROFIL_ID" NOT NULL ENABLE);
  ALTER TABLE "FELTOLTOTT_KEPEK" MODIFY ("KEP_NEV" NOT NULL ENABLE);
  ALTER TABLE "FELTOLTOTT_KEPEK" MODIFY ("FORMATUM" NOT NULL ENABLE);
  ALTER TABLE "FELTOLTOTT_KEPEK" MODIFY ("MIKOR" NOT NULL ENABLE);
  ALTER TABLE "FELTOLTOTT_KEPEK" ADD CONSTRAINT "FELTOLTOTT_KEPEK_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "FELTOLTOTT_KEPEK" MODIFY ("FOGLALT_TARHELY" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ISMEROSOK
--------------------------------------------------------

  ALTER TABLE "ISMEROSOK" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "ISMEROSOK" MODIFY ("KULDO" NOT NULL ENABLE);
  ALTER TABLE "ISMEROSOK" MODIFY ("FUGGOBEN" NOT NULL ENABLE);
  ALTER TABLE "ISMEROSOK" MODIFY ("FOGADO" NOT NULL ENABLE);
  ALTER TABLE "ISMEROSOK" ADD CONSTRAINT "ISMEROSOK_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROFILOK
--------------------------------------------------------

  ALTER TABLE "PROFILOK" MODIFY ("VEZETEKNEV" NOT NULL ENABLE);
  ALTER TABLE "PROFILOK" MODIFY ("KERESZTNEV" NOT NULL ENABLE);
  ALTER TABLE "PROFILOK" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "PROFILOK" MODIFY ("FELHASZNALO_ID" NOT NULL ENABLE);
  ALTER TABLE "PROFILOK" MODIFY ("VAROS" NOT NULL ENABLE);
  ALTER TABLE "PROFILOK" MODIFY ("NEME" NOT NULL ENABLE);
  ALTER TABLE "PROFILOK" MODIFY ("SZULNAP" NOT NULL ENABLE);
  ALTER TABLE "PROFILOK" ADD CONSTRAINT "PROFILOK_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PROFILOK" MODIFY ("PROFIL_KEP" NOT NULL ENABLE);
  ALTER TABLE "PROFILOK" MODIFY ("MEGYE" NOT NULL ENABLE);
  ALTER TABLE "PROFILOK" MODIFY ("REG_DATUM" NOT NULL ENABLE);
  ALTER TABLE "PROFILOK" MODIFY ("ISKOLA" NOT NULL ENABLE);
  ALTER TABLE "PROFILOK" MODIFY ("MUNKAHELY" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CSOPORTOK
--------------------------------------------------------

  ALTER TABLE "CSOPORTOK" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "CSOPORTOK" MODIFY ("CSOPORT_NEV" NOT NULL ENABLE);
  ALTER TABLE "CSOPORTOK" MODIFY ("LEIRAS" NOT NULL ENABLE);
  ALTER TABLE "CSOPORTOK" ADD CONSTRAINT "CSOPORTOK_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "CSOPORTOK" ADD CONSTRAINT "CSOPORTOK_UK1" UNIQUE ("CSOPORT_NEV")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "CSOPORTOK" MODIFY ("INDEX_KEP" NOT NULL ENABLE);
  ALTER TABLE "CSOPORTOK" MODIFY ("ALAPITAS_DATUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KEP_MEGJEGYZESEK
--------------------------------------------------------

  ALTER TABLE "KEP_MEGJEGYZESEK" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "KEP_MEGJEGYZESEK" MODIFY ("KEP_ID" NOT NULL ENABLE);
  ALTER TABLE "KEP_MEGJEGYZESEK" MODIFY ("PROFIL_ID" NOT NULL ENABLE);
  ALTER TABLE "KEP_MEGJEGYZESEK" MODIFY ("HOZZASZOLAS" NOT NULL ENABLE);
  ALTER TABLE "KEP_MEGJEGYZESEK" MODIFY ("MIKOR" NOT NULL ENABLE);
  ALTER TABLE "KEP_MEGJEGYZESEK" ADD CONSTRAINT "KEP_MEGJEGYZESEK_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROFIL_MEGJEGYZESEK
--------------------------------------------------------

  ALTER TABLE "PROFIL_MEGJEGYZESEK" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "PROFIL_MEGJEGYZESEK" MODIFY ("MEGJEGYZES" NOT NULL ENABLE);
  ALTER TABLE "PROFIL_MEGJEGYZESEK" ADD CONSTRAINT "PROFIL_MEGJEGYZESEK_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PROFIL_MEGJEGYZESEK" MODIFY ("MEGYJEGY_DATUM" NOT NULL ENABLE);
  ALTER TABLE "PROFIL_MEGJEGYZESEK" MODIFY ("KULDO" NOT NULL ENABLE);
  ALTER TABLE "PROFIL_MEGJEGYZESEK" MODIFY ("FOGADO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CSOPORT_UZENETEK
--------------------------------------------------------

  ALTER TABLE "CSOPORT_UZENETEK" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "CSOPORT_UZENETEK" ADD CONSTRAINT "CSOPORT_UZENETEK_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "CSOPORT_UZENETEK" MODIFY ("KULDO" NOT NULL ENABLE);
  ALTER TABLE "CSOPORT_UZENETEK" MODIFY ("FOGADO_CSOPORT" NOT NULL ENABLE);
  ALTER TABLE "CSOPORT_UZENETEK" MODIFY ("MIKOR" NOT NULL ENABLE);
  ALTER TABLE "CSOPORT_UZENETEK" MODIFY ("OLVASOTT" NOT NULL ENABLE);
  ALTER TABLE "CSOPORT_UZENETEK" MODIFY ("UZENET" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ALBUMOK
--------------------------------------------------------

  ALTER TABLE "ALBUMOK" MODIFY ("PROFIL_ID" NOT NULL ENABLE);
  ALTER TABLE "ALBUMOK" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "ALBUMOK" MODIFY ("CIM" NOT NULL ENABLE);
  ALTER TABLE "ALBUMOK" MODIFY ("LETREHOZVA" NOT NULL ENABLE);
  ALTER TABLE "ALBUMOK" ADD CONSTRAINT "ALBUMOK_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CSOPORT_TAGOK
--------------------------------------------------------

  ALTER TABLE "CSOPORT_TAGOK" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "CSOPORT_TAGOK" MODIFY ("PROFIL_ID" NOT NULL ENABLE);
  ALTER TABLE "CSOPORT_TAGOK" MODIFY ("CSOPORT_ID" NOT NULL ENABLE);
  ALTER TABLE "CSOPORT_TAGOK" ADD CONSTRAINT "CSOPORT_TAGOK_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "CSOPORT_TAGOK" MODIFY ("ELFOGADOTT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NEVNAPOK
--------------------------------------------------------

  ALTER TABLE "NEVNAPOK" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "NEVNAPOK" MODIFY ("KERESZTNEV" NOT NULL ENABLE);
  ALTER TABLE "NEVNAPOK" MODIFY ("HONAP" NOT NULL ENABLE);
  ALTER TABLE "NEVNAPOK" MODIFY ("NAP" NOT NULL ENABLE);
  ALTER TABLE "NEVNAPOK" ADD CONSTRAINT "NEVNAPOK_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ENGEDELYEK
--------------------------------------------------------

  ALTER TABLE "ENGEDELYEK" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "ENGEDELYEK" ADD CONSTRAINT "ENGEDELYEK_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ENGEDELYEK" MODIFY ("ELFOGADOTT" NOT NULL ENABLE);
  ALTER TABLE "ENGEDELYEK" MODIFY ("KULDO" NOT NULL ENABLE);
  ALTER TABLE "ENGEDELYEK" MODIFY ("FOGADO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ALBUM_KEPEK
--------------------------------------------------------

  ALTER TABLE "ALBUM_KEPEK" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "ALBUM_KEPEK" MODIFY ("KEP_ID" NOT NULL ENABLE);
  ALTER TABLE "ALBUM_KEPEK" MODIFY ("ALBUM_ID" NOT NULL ENABLE);
  ALTER TABLE "ALBUM_KEPEK" ADD CONSTRAINT "ALBUM_KEPEK_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FELHASZNALOK
--------------------------------------------------------

  ALTER TABLE "FELHASZNALOK" MODIFY ("FELHASZNALO_NEV" NOT NULL ENABLE);
  ALTER TABLE "FELHASZNALOK" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "FELHASZNALOK" MODIFY ("JELSZO" NOT NULL ENABLE);
  ALTER TABLE "FELHASZNALOK" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "FELHASZNALOK" ADD CONSTRAINT "FELHASZNALOK_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "FELHASZNALOK" ADD CONSTRAINT "FELHASZNALOK_UK1" UNIQUE ("FELHASZNALO_NEV", "EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRIVAT_UZENETEK
--------------------------------------------------------

  ALTER TABLE "PRIVAT_UZENETEK" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "PRIVAT_UZENETEK" MODIFY ("KULDO" NOT NULL ENABLE);
  ALTER TABLE "PRIVAT_UZENETEK" MODIFY ("FOGADO" NOT NULL ENABLE);
  ALTER TABLE "PRIVAT_UZENETEK" MODIFY ("MIKOR" NOT NULL ENABLE);
  ALTER TABLE "PRIVAT_UZENETEK" MODIFY ("OLVASOTT" NOT NULL ENABLE);
  ALTER TABLE "PRIVAT_UZENETEK" MODIFY ("UZENET" NOT NULL ENABLE);
  ALTER TABLE "PRIVAT_UZENETEK" ADD CONSTRAINT "PRIVAT_UZENETEK_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ALBUM_KEPEK
--------------------------------------------------------

  ALTER TABLE "ALBUM_KEPEK" ADD CONSTRAINT "ALBUM_KEPEK_FK1" FOREIGN KEY ("ALBUM_ID")
	  REFERENCES "ALBUMOK" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "ALBUM_KEPEK" ADD CONSTRAINT "ALBUM_KEPEK_FK2" FOREIGN KEY ("KEP_ID")
	  REFERENCES "FELTOLTOTT_KEPEK" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ALBUMOK
--------------------------------------------------------

  ALTER TABLE "ALBUMOK" ADD CONSTRAINT "ALBUMOK_FK1" FOREIGN KEY ("PROFIL_ID")
	  REFERENCES "PROFILOK" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CSOPORT_TAGOK
--------------------------------------------------------

  ALTER TABLE "CSOPORT_TAGOK" ADD CONSTRAINT "CSOPORT_TAGOK_FK1" FOREIGN KEY ("CSOPORT_ID")
	  REFERENCES "CSOPORTOK" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "CSOPORT_TAGOK" ADD CONSTRAINT "CSOPORT_TAGOK_FK2" FOREIGN KEY ("PROFIL_ID")
	  REFERENCES "PROFILOK" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CSOPORT_UZENETEK
--------------------------------------------------------

  ALTER TABLE "CSOPORT_UZENETEK" ADD CONSTRAINT "CSOPORT_UZENETEK_FK1" FOREIGN KEY ("KULDO")
	  REFERENCES "PROFILOK" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "CSOPORT_UZENETEK" ADD CONSTRAINT "CSOPORT_UZENETEK_FK2" FOREIGN KEY ("FOGADO_CSOPORT")
	  REFERENCES "CSOPORTOK" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ENGEDELYEK
--------------------------------------------------------

  ALTER TABLE "ENGEDELYEK" ADD CONSTRAINT "ENGEDELYEK_FK1" FOREIGN KEY ("KULDO")
	  REFERENCES "PROFILOK" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "ENGEDELYEK" ADD CONSTRAINT "ENGEDELYEK_FK2" FOREIGN KEY ("FOGADO")
	  REFERENCES "PROFILOK" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FELTOLTOTT_KEPEK
--------------------------------------------------------

  ALTER TABLE "FELTOLTOTT_KEPEK" ADD CONSTRAINT "FELTOLTOTT_KEPEK_FK1" FOREIGN KEY ("PROFIL_ID")
	  REFERENCES "PROFILOK" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ISMEROSOK
--------------------------------------------------------

  ALTER TABLE "ISMEROSOK" ADD CONSTRAINT "ISMEROSOK_FK1" FOREIGN KEY ("KULDO")
	  REFERENCES "PROFILOK" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "ISMEROSOK" ADD CONSTRAINT "ISMEROSOK_FK2" FOREIGN KEY ("FOGADO")
	  REFERENCES "PROFILOK" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table KEP_MEGJEGYZESEK
--------------------------------------------------------

  ALTER TABLE "KEP_MEGJEGYZESEK" ADD CONSTRAINT "KEP_MEGJEGYZESEK_FK1" FOREIGN KEY ("KEP_ID")
	  REFERENCES "FELTOLTOTT_KEPEK" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "KEP_MEGJEGYZESEK" ADD CONSTRAINT "KEP_MEGJEGYZESEK_FK2" FOREIGN KEY ("PROFIL_ID")
	  REFERENCES "PROFILOK" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "KEP_MEGJEGYZESEK" ADD CONSTRAINT "KEP_MEGJEGYZESEK_FK3" FOREIGN KEY ("OSMEGJEGYZES_ID")
	  REFERENCES "KEP_MEGJEGYZESEK" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRIVAT_UZENETEK
--------------------------------------------------------

  ALTER TABLE "PRIVAT_UZENETEK" ADD CONSTRAINT "PRIVAT_UZENETEK_FK1" FOREIGN KEY ("KULDO")
	  REFERENCES "PROFILOK" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "PRIVAT_UZENETEK" ADD CONSTRAINT "PRIVAT_UZENETEK_FK2" FOREIGN KEY ("FOGADO")
	  REFERENCES "PROFILOK" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROFIL_MEGJEGYZESEK
--------------------------------------------------------

  ALTER TABLE "PROFIL_MEGJEGYZESEK" ADD CONSTRAINT "PROFIL_MEGJEGYZESEK_FK1" FOREIGN KEY ("OSMEGYJEGYZES_ID")
	  REFERENCES "PROFIL_MEGJEGYZESEK" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "PROFIL_MEGJEGYZESEK" ADD CONSTRAINT "PROFIL_MEGJEGYZESEK_FK2" FOREIGN KEY ("KULDO")
	  REFERENCES "PROFILOK" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "PROFIL_MEGJEGYZESEK" ADD CONSTRAINT "PROFIL_MEGJEGYZESEK_FK3" FOREIGN KEY ("FOGADO")
	  REFERENCES "PROFILOK" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROFILOK
--------------------------------------------------------

  ALTER TABLE "PROFILOK" ADD CONSTRAINT "PROFILOK_FK1" FOREIGN KEY ("FELHASZNALO_ID")
	  REFERENCES "FELHASZNALOK" ("ID") ON DELETE CASCADE ENABLE;
