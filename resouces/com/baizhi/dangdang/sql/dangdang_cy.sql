/*==============================================================*/
/* DBMS name:      ORACLE Version 10g                           */
/* Created on:     2018/12/20 13:52:14                          */
/*==============================================================*/


drop table d_address cascade constraints;

drop table d_category cascade constraints;

drop table d_order cascade constraints;

drop table d_orderItems cascade constraints;

drop table d_product cascade constraints;

drop table d_user cascade constraints;

/*==============================================================*/
/* Table: d_address                                             */
/*==============================================================*/
create table d_address  (
   id        	         VARCHAR2(40)         primary key,
   detailed             VARCHAR2(400),          
   addName              VARCHAR2(40),
   postalCode           VARCHAR2(40),
   tel                VARCHAR2(40),
   mobile                  VARCHAR2(40),  
   user_id              VARCHAR2(40)              
   
);

/*==============================================================*/
/* Table: d_category                                            */
/*==============================================================*/
create table d_category  (
   id                   VARCHAR2(40)                    primary key,
   classify             VARCHAR2(40),
   parent_id            VARCHAR2(40)
   count               NUMBER(10),
);

/*==============================================================*/
/* Table: d_order                                               */
/*==============================================================*/
create table d_order  (
   id                   VARCHAR2(40)                    primary key,
   totalPrice           NUMBER(5,2),
   OrderTime         DATE,
   address_id              VARCHAR2(40),
   user_id              VARCHAR2(40)
);

/*==============================================================*/
/* Table: d_orderItems                                          */
/*==============================================================*/
create table d_orderItems  (
   id                   VARCHAR2(40)                    primary key,
   subtotal             NUMBER(10,2),
   order_id             VARCHAR2(40)
   count                NUMBER(10),
);

/*==============================================================*/
/* Table: d_product                                             */
/*==============================================================*/
create table d_product  (
   id                   varchar2(20)                    not null,
   name					 varchar2(100),
   author               varchar2(10),
   publishing           varchar2(40),
   publish_time         DATE,
   edition              number(10),
   print_time           varchar2(20),
   print_number         varchar2(20),
   isbn                 varchar2(20),
   category             varchar2(20),
   word_number          number(10),
   total_page           varchar2(20),
   page_size            varchar2(20),
   paper           			varchar2(20),
   packaging            varchar2(20),
   pricing              NUMBER(10,2),
   sellingPrice         NUMBER(10,2),
   recommend            clob,
   contentend           clob,
   author_summary       clob,
   catalog              VARCHAR2(40),
   media                clob,
   figure               VARCHAR2(40),
   crategory_id             VARCHAR2(40)
);

/*==============================================================*/
/* Table: d_user                                                */
/*==============================================================*/
create table d_user  (
   id                   VARCHAR2(40)                    primary key,
   email                VARCHAR2(40),                   
   username             VARCHAR2(40),
   password             VARCHAR2(40),
   regis_time           DATE,
   salt                 VARCHAR2(40)      
);
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('1', 'С˵', NULL, NULL, 'AAADwHAAEAAAAa2AAA');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('2', '�ഺ', NULL, NULL, 'AAADwHAAEAAAAa2AAB');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('3', '�������', NULL, NULL, 'AAADwHAAEAAAAa2AAC');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('4', '����', NULL, NULL, 'AAADwHAAEAAAAa2AAD');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('5', '�ٶ�', NULL, NULL, 'AAADwHAAEAAAAa2AAE');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('6', '����', NULL, NULL, 'AAADwHAAEAAAAa2AAF');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('7', '�����', NULL, NULL, 'AAADwHAAEAAAAa2AAG');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('8', '������С˵', '1', NULL, 'AAADwHAAEAAAAa2AAH');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('9', '���ִ�С˵', '1', NULL, 'AAADwHAAEAAAAa2AAI');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('10', '�ŵ�С˵', '1', NULL, 'AAADwHAAEAAAAa2AAJ');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('11', '�Ĵ�����', '1', NULL, 'AAADwHAAEAAAAa2AAK');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('12', '��������', '1', NULL, 'AAADwHAAEAAAAa2AAL');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('13', 'У԰', '2', NULL, 'AAADwHAAEAAAAa2AAM');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('14', '����/���', '2', NULL, 'AAADwHAAEAAAAa2AAN');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('15', '����/�ɳ�', '2', NULL, 'AAADwHAAEAAAAa2AAO');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('16', '����', '2', NULL, 'AAADwHAAEAAAAa2AAP');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('17', 'ԭ��', '2', NULL, 'AAADwHAAEAAAAa2AAQ');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('18', '����', '3', NULL, 'AAADwHAAEAAAAa2AAR');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('19', '����', '3', NULL, 'AAADwHAAEAAAAa2AAS');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('20', '����', '3', NULL, 'AAADwHAAEAAAAa2AAT');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('21', '��ѧ', '3', NULL, 'AAADwHAAEAAAAa2AAU');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('22', '��ʷ', '3', NULL, 'AAADwHAAEAAAAa2AAV');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('23', '����ѧ', '4', NULL, 'AAADwHAAEAAAAa2AAW');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('24', 'ս�Թ���', '4', NULL, 'AAADwHAAEAAAAa2AAX');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('25', '�г�Ӫ��', '4', NULL, 'AAADwHAAEAAAAa2AAY');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('26', '��ҵʷ��', '4', NULL, 'AAADwHAAEAAAAa2AAZ');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('27', '��������', '4', NULL, 'AAADwHAAEAAAAa2AAa');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('28', '0-2��', '5', NULL, 'AAADwHAAEAAAAa2AAb');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('29', '3-6�� 7-10��', '5', NULL, 'AAADwHAAEAAAAa2AAc');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('30', '11-14��', '5', NULL, 'AAADwHAAEAAAAa2AAd');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('31', '��ͯ��ѧ', '5', NULL, 'AAADwHAAEAAAAa2AAe');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('32', 'Ӣ��', '6', NULL, 'AAADwHAAEAAAAa2AAf');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('33', '����', '6', NULL, 'AAADwHAAEAAAAa2AAg');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('34', '����', '6', NULL, 'AAADwHAAEAAAAa2AAh');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('35', '����', '6', NULL, 'AAADwHAAEAAAAa3AAA');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('36', '����', '6', NULL, 'AAADwHAAEAAAAa3AAB');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('37', '���������', '7', NULL, 'AAADwHAAEAAAAa3AAC');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('38', '���ݿ�', '7', NULL, 'AAADwHAAEAAAAa3AAD');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('39', '�������', '7', NULL, 'AAADwHAAEAAAAa3AAE');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('40', '�˹�����', '7', NULL, 'AAADwHAAEAAAAa3AAF');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('41', '���������', '7', NULL, 'AAADwHAAEAAAAa3AAG');

