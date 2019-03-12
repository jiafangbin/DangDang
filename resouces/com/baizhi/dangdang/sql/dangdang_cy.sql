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
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('1', '小说', NULL, NULL, 'AAADwHAAEAAAAa2AAA');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('2', '青春', NULL, NULL, 'AAADwHAAEAAAAa2AAB');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('3', '人文社科', NULL, NULL, 'AAADwHAAEAAAAa2AAC');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('4', '管理', NULL, NULL, 'AAADwHAAEAAAAa2AAD');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('5', '少儿', NULL, NULL, 'AAADwHAAEAAAAa2AAE');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('6', '外语', NULL, NULL, 'AAADwHAAEAAAAa2AAF');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('7', '计算机', NULL, NULL, 'AAADwHAAEAAAAa2AAG');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('8', '玄当代小说', '1', NULL, 'AAADwHAAEAAAAa2AAH');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('9', '近现代小说', '1', NULL, 'AAADwHAAEAAAAa2AAI');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('10', '古典小说', '1', NULL, 'AAADwHAAEAAAAa2AAJ');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('11', '四大名著', '1', NULL, 'AAADwHAAEAAAAa2AAK');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('12', '世界名著', '1', NULL, 'AAADwHAAEAAAAa2AAL');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('13', '校园', '2', NULL, 'AAADwHAAEAAAAa2AAM');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('14', '爱情/情感', '2', NULL, 'AAADwHAAEAAAAa2AAN');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('15', '叛逆/成长', '2', NULL, 'AAADwHAAEAAAAa2AAO');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('16', '玄幻', '2', NULL, 'AAADwHAAEAAAAa2AAP');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('17', '原创', '2', NULL, 'AAADwHAAEAAAAa2AAQ');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('18', '政治', '3', NULL, 'AAADwHAAEAAAAa2AAR');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('19', '经济', '3', NULL, 'AAADwHAAEAAAAa2AAS');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('20', '法律', '3', NULL, 'AAADwHAAEAAAAa2AAT');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('21', '哲学', '3', NULL, 'AAADwHAAEAAAAa2AAU');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('22', '历史', '3', NULL, 'AAADwHAAEAAAAa2AAV');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('23', '管理学', '4', NULL, 'AAADwHAAEAAAAa2AAW');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('24', '战略管理', '4', NULL, 'AAADwHAAEAAAAa2AAX');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('25', '市场营销', '4', NULL, 'AAADwHAAEAAAAa2AAY');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('26', '商业史传', '4', NULL, 'AAADwHAAEAAAAa2AAZ');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('27', '电子商务', '4', NULL, 'AAADwHAAEAAAAa2AAa');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('28', '0-2岁', '5', NULL, 'AAADwHAAEAAAAa2AAb');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('29', '3-6岁 7-10岁', '5', NULL, 'AAADwHAAEAAAAa2AAc');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('30', '11-14岁', '5', NULL, 'AAADwHAAEAAAAa2AAd');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('31', '儿童文学', '5', NULL, 'AAADwHAAEAAAAa2AAe');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('32', '英语', '6', NULL, 'AAADwHAAEAAAAa2AAf');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('33', '日语', '6', NULL, 'AAADwHAAEAAAAa2AAg');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('34', '韩语', '6', NULL, 'AAADwHAAEAAAAa2AAh');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('35', '俄语', '6', NULL, 'AAADwHAAEAAAAa3AAA');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('36', '德语', '6', NULL, 'AAADwHAAEAAAAa3AAB');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('37', '计算机理论', '7', NULL, 'AAADwHAAEAAAAa3AAC');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('38', '数据库', '7', NULL, 'AAADwHAAEAAAAa3AAD');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('39', '程序设计', '7', NULL, 'AAADwHAAEAAAAa3AAE');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('40', '人工智能', '7', NULL, 'AAADwHAAEAAAAa3AAF');
INSERT INTO "HR"."D_CATEGORY" ("ID", "CLASSIFY", "PARENT_ID", "COUNT", "ROWID") VALUES ('41', '计算机考试', '7', NULL, 'AAADwHAAEAAAAa3AAG');

