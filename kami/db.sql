--db ������ ���� ���� ��Ź!
drop table EMPLOYEE;
DROP SEQUENCE POSITIONSEQ;

create table idinfo(
	id VARCHAR2(50) primary key,
	pw VARCHAR2(50) not null,
	type number not null
);


CREATE TABLE POSITION(
	POSITIONSEQ NUMBER PRIMARY KEY,
	POSITION VARCHAR2(50) NOT NULL,
	SALARY NUMBER
);

CREATE SEQUENCE POSITIONSEQ;


CREATE TABLE EMPLOYEE(
    POSITIONSEQ NUMBER,
    NAME VARCHAR(20) NOT NULL,
    HIREDATE DATE DEFAULT SYSDATE,
    BIRTHDATE DATE ,
    PHONE VARCHAR2(100),
    ADDRESS VARCHAR2(100),
    FIREDATE DATE DEFAULT null,
    GENDER number NOT NULL,
	CONSTRAINT EMPLOYEE_ID FOREIGN KEY (EMPLOYEE_ID) REFERENCES IDINFO(ID),
	CONSTRAINT EMPLOYEE_ID FOREIGN KEY (EMPLOYEE_ID) REFERENCES IDINFO(ID)
);





CREATE TABLE SUPPLY(
	SUPPLYSEQ NUMBER PRIMARY KEY,
	ID VARCHAR2(50) NOT NULL,
	SP_NAME VARCHAR2(30),
	SP_AMOUNT NUMBER,
	SP_CONTENT VARCHAR(500)
);


COMMIT;

id����� ����, ����, ��å, �Ҹ�ǰ,










DROP TABLE employee;

CREATE TABLE employee (
	"positionseq"	number		NOT NULL,
	"emp_id"	varchar2(30)		NOT NULL,
	"emp_name"	varchar2(50)		NULL,
	"emp_hiredate"	date		NULL,
	"emp_birthdate"	date		NULL,
	"emp_phone"	varchar2(100)		NULL,
	"emp_address"	varchar2(200)		NULL,
	"emp_firedate"	date		NULL,
	"emp_gender"	varchar2(10)		NULL,
	"emp_flag"	VARCHAR(255)		NULL
);

DROP TABLE position;

CREATE TABLE position (
	"positionSeq"	number		NOT NULL,
	"position"	varchar2(10)		NULL,
	"salary"	number		NULL
);

DROP TABLE career;

CREATE TABLE career (
	"careeaseq"	number		NOT NULL,
	"emp_id"	varchar2(30)		NOT NULL,
	"care_date"	date		NULL,
	"care_content"	varchar2(2000)		NULL
);

DROP TABLE reservation;

CREATE TABLE reservation (
	"reservationseq"	number		NOT NULL,
	"payseq"	number		NOT NULL,
	"proinfoseq"	number		NOT NULL,
	"emp_id"	varchar2(30)		NOT NULL,
	"mem_id"	varchar2(30)		NOT NULL,
	"rsv_date"	date		NULL,
	"rsv_time"	varchar2(10)		NULL
);

DROP TABLE board;

CREATE TABLE board (
	"boardseq"	number		NOT NULL,
	"id"	varchar2(30)		NOT NULL,
	"brd_title"	varchar2(200)		NULL,
	"brd_content"	varchar2(2000)		NULL,
	"brd_date"	date		NULL,
	"brd_file"	varchar2(200)		NULL
);

DROP TABLE chat;

CREATE TABLE chat (
	"chatseq"	number		NOT NULL,
	"mem_id"	varchar2(30)		NOT NULL,
	"chat_content"	varchar2(2000)		NULL,
	"chat_date"	date		NULL
);

DROP TABLE member;

CREATE TABLE member (
	"mem_id"	varchar2(30)		NOT NULL,
	"mem_money"	number		NULL,
	"mem_phone"	varchar2(50)		NULL,
	"mem_birthday"	date		NULL,
	"mem_name"	varchar2(50)		NULL,
	"mem_registDate"	date		NULL,
	"mem_gender"	varchar2(10)		NULL,
	"mem_address"	varchar2(200)		NULL,
	"mem_flag"	number		NULL
);

DROP TABLE supply;

CREATE TABLE supply (
	"supplyseq"	number		NOT NULL,
	"emp_id"	varchar2(30)		NOT NULL,
	"sup_name"	varchar2(30)		NULL,
	"sup_amount"	number		NULL,
	"sup_content"	varchar2(2000)		NULL
);

DROP TABLE product;

CREATE TABLE product (
	"productseq"	number		NOT NULL,
	"kindseq"	number		NOT NULL,
	"prd_name"	varchar2(50)		NULL,
	"prd_price1"	number		NULL,
	"prd_price2"	number		NULL,
	"prd_content"	varchar2(2000)		NULL,
	"prd_image"	varchar2(2000)		NULL,
	"prd_quantity"	number		NULL,
	"prd_indate"	date		NULL
);

DROP TABLE order;

CREATE TABLE orders (
	"billseq"	number		NOT NULL,
	"productseq"	number		NOT NULL,
	"mem_id"	varchar2(30)		NOT NULL,
	"odr_amount"	number		NULL,
	"ord_date"	date		NULL,
	"ord_quantity"	number		NULL,
	"ord_status"	varchar2(30)		NULL
);


DROP TABLE haircolor;

CREATE TABLE haircolor (
	"colorseq"	number		NOT NULL,
	"color"	varchar2(50)		NULL,
	"colorcode"	varchar2(50)		NULL,
	"colorcontent"	varchar2(300)		NULL
);

DROP TABLE procedure;

CREATE TABLE procedure (
	"procedureseq"	number		NOT NULL,
	"colorseq"	number		NOT NULL,
	"pcd_name"	varchar2(200)		NULL,
	"pcd_time"	varchar2(10)		NULL,
	"pcd_price"	varchar2(30)		NULL,
	"pcd_content"	varchar2(300)		NULL
);

DROP TABLE notice;

CREATE TABLE notice (
	"noticeseq"	number		NOT NULL,
	"emp_id"	varchar2(30)		NOT NULL,
	"ntc_title"	varchar2(200)		NULL,
	"ntc_content"	varchar2(2000)		NULL,
	"ntc_date"	date		NULL,
	"ntc_file"	varchar2(2000)		NULL
);

DROP TABLE procedureinformation;

CREATE TABLE procedureinformation (
	"proinfoseq"	number		NOT NULL,
	"procedureseq"	number		NOT NULL,
	"sale"	varchar2(300)		NULL,
	"proinfo_price"	number		NULL
);

DROP TABLE review;

CREATE TABLE review (
	"reveiwseq"	number		NOT NULL,
	"boardseq"	number		NOT NULL,
	"id"	varchar2(30)		NOT NULL,
	"rvw_content"	varchar2(500)		NULL,
	"rvw_date"	date		NULL
);

DROP TABLE payment;

CREATE TABLE payment (
	"paymentNum"	varchar2(100)		NOT NULL,
	"billseq"	number		NOT NULL,
	"pay_isSucess"	varchar2(2)		NULL,
	"pay_meansOfPayment"	varchar2(60)		NULL,
	"pay_resultcode"	varchar2(10)		NULL,
	"pay_totalprice"	varchar2(13)		NULL,
	"pay_ordernum"	varchar2(60)		NULL,
	"pay_indate"	date		NULL,
	"pay_eventcode"	varchar2(60)		NULL,
	"pay_cardnum"	varchar2(60)		NULL,
	"pay_installment"	number(3)		NULL,
	"pay_ispointuse"	varchar2(1)		NULL,
	"pay_cardtype"	varchar2(60)		NULL,
	"pay_cardcompany"	varchar2(60)		NULL
);

DROP TABLE offschedule;

CREATE TABLE offschedule (
	"off_scheduleseq"	number		NOT NULL,
	"emp_id"	varchar2(30)		NOT NULL,
	"off_startdate"	date		NULL,
	"off_enddate"	date		NULL,
	"off_check"	varchar2(20)		NULL,
	"off_dayofweek"	varchar2(20)		NULL
);

DROP TABLE schedule;

CREATE TABLE schedule (
	"schedulseq"	number		NOT NULL,
	"emp_id"	varchar2(30)		NOT NULL,
	"sch_time"	varchar2(100)		NULL,
	"sch_startdate"	date		NULL,
	"sch_enddate"	date		NULL,
	"sch_dayofweek"	varchar2(20)		NULL
);

DROP TABLE refund;

CREATE TABLE refund (
	"CSHR_CancelNum"	varchar2(60)		NOT NULL,
	"paymentNum"	varchar2(100)		NOT NULL,
	"ref_issucess"	varchar2(2)		NULL,
	"ref_resultmsg"	varchar2(300)		NULL,
	"ref_resultcode"	varchar2(10)		NULL,
	"ref_totalprice"	varchar2(13)		NULL
);

DROP TABLE productkind;

CREATE TABLE productkind (
	"kindseq"	number		NOT NULL,
	"productkind"	varchar2(20)		NULL
);

DROP TABLE idinfo;

CREATE TABLE idinfo(
	"id"	varchar2(30)		NOT NULL,
	"pw"	varchar2(30)		NULL,
	"type"	number		NULL
);

ALTER TABLE "����" ADD CONSTRAINT "PK_����" PRIMARY KEY (
	"positionseq",
	"emp_id"
);

ALTER TABLE "��å" ADD CONSTRAINT "PK_��å" PRIMARY KEY (
	"positionSeq"
);

ALTER TABLE "���" ADD CONSTRAINT "PK_���" PRIMARY KEY (
	"careeaseq",
	"emp_id"
);

ALTER TABLE "��������" ADD CONSTRAINT "PK_��������" PRIMARY KEY (
	"reservationseq",
	"payseq",
	"proinfoseq",
	"emp_id",
	"mem_id"
);

ALTER TABLE "�Խ���" ADD CONSTRAINT "PK_�Խ���" PRIMARY KEY (
	"boardseq",
	"id"
);

ALTER TABLE "ä��" ADD CONSTRAINT "PK_ä��" PRIMARY KEY (
	"chatseq",
	"mem_id"
);

ALTER TABLE "ȸ��" ADD CONSTRAINT "PK_ȸ��" PRIMARY KEY (
	"mem_id"
);

ALTER TABLE "�Ҹ�ǰ" ADD CONSTRAINT "PK_�Ҹ�ǰ" PRIMARY KEY (
	"supplyseq",
	"emp_id"
);

ALTER TABLE "��ǰ���" ADD CONSTRAINT "PK_��ǰ���" PRIMARY KEY (
	"productseq",
	"kindseq"
);

ALTER TABLE "����" ADD CONSTRAINT "PK_����" PRIMARY KEY (
	"billseq",
	"productseq",
	"mem_id"
);

ALTER TABLE "�Ӹ�����" ADD CONSTRAINT "PK_�Ӹ�����" PRIMARY KEY (
	"Key"
);

ALTER TABLE "�Ӹ���" ADD CONSTRAINT "PK_�Ӹ���" PRIMARY KEY (
	"colorseq"
);

ALTER TABLE "�ü�����" ADD CONSTRAINT "PK_�ü�����" PRIMARY KEY (
	"procedureseq",
	"colorseq"
);

ALTER TABLE "����" ADD CONSTRAINT "PK_����" PRIMARY KEY (
	"noticeseq",
	"emp_id"
);

ALTER TABLE "�ü�����" ADD CONSTRAINT "PK_�ü�����" PRIMARY KEY (
	"proinfoseq",
	"procedureseq"
);

ALTER TABLE "���" ADD CONSTRAINT "PK_���" PRIMARY KEY (
	"reveiwseq",
	"boardseq",
	"id"
);

ALTER TABLE "��������" ADD CONSTRAINT "PK_��������" PRIMARY KEY (
	"paymentNum",
	"billseq"
);

ALTER TABLE "�޹�����" ADD CONSTRAINT "PK_�޹�����" PRIMARY KEY (
	"off_scheduleseq",
	"emp_id"
);

ALTER TABLE "�ٹ�����" ADD CONSTRAINT "PK_�ٹ�����" PRIMARY KEY (
	"schedulseq",
	"emp_id"
);

ALTER TABLE "ȯ��" ADD CONSTRAINT "PK_ȯ��" PRIMARY KEY (
	"CSHR_CancelNum",
	"paymentNum"
);

ALTER TABLE "��ǰ ī�װ�" ADD CONSTRAINT "PK_��ǰ ī�װ�" PRIMARY KEY (
	"kindseq"
);

ALTER TABLE "ID���������" ADD CONSTRAINT "PK_ID���������" PRIMARY KEY (
	"id"
);

ALTER TABLE "����" ADD CONSTRAINT "FK_��å_TO_����_1" FOREIGN KEY (
	"positionseq"
)
REFERENCES "��å" (
	"positionSeq"
);

ALTER TABLE "����" ADD CONSTRAINT "FK_ID���������_TO_����_1" FOREIGN KEY (
	"emp_id"
)
REFERENCES "ID���������" (
	"id"
);

ALTER TABLE "���" ADD CONSTRAINT "FK_����_TO_���_1" FOREIGN KEY (
	"emp_id"
)
REFERENCES "����" (
	"emp_id"
);

ALTER TABLE "��������" ADD CONSTRAINT "FK_��������_TO_��������_1" FOREIGN KEY (
	"payseq"
)
REFERENCES "��������" (
	"paymentNum"
);

ALTER TABLE "��������" ADD CONSTRAINT "FK_�ü�����_TO_��������_1" FOREIGN KEY (
	"proinfoseq"
)
REFERENCES "�ü�����" (
	"proinfoseq"
);

ALTER TABLE "��������" ADD CONSTRAINT "FK_����_TO_��������_1" FOREIGN KEY (
	"emp_id"
)
REFERENCES "����" (
	"emp_id"
);

ALTER TABLE "��������" ADD CONSTRAINT "FK_ȸ��_TO_��������_1" FOREIGN KEY (
	"mem_id"
)
REFERENCES "ȸ��" (
	"mem_id"
);

ALTER TABLE "�Խ���" ADD CONSTRAINT "FK_ID���������_TO_�Խ���_1" FOREIGN KEY (
	"id"
)
REFERENCES "ID���������" (
	"id"
);

ALTER TABLE "ä��" ADD CONSTRAINT "FK_ȸ��_TO_ä��_1" FOREIGN KEY (
	"mem_id"
)
REFERENCES "ȸ��" (
	"mem_id"
);

ALTER TABLE "ȸ��" ADD CONSTRAINT "FK_ID���������_TO_ȸ��_1" FOREIGN KEY (
	"mem_id"
)
REFERENCES "ID���������" (
	"id"
);

ALTER TABLE "�Ҹ�ǰ" ADD CONSTRAINT "FK_����_TO_�Ҹ�ǰ_1" FOREIGN KEY (
	"emp_id"
)
REFERENCES "����" (
	"emp_id"
);

ALTER TABLE "��ǰ���" ADD CONSTRAINT "FK_��ǰ ī�װ�_TO_��ǰ���_1" FOREIGN KEY (
	"kindseq"
)
REFERENCES "��ǰ ī�װ�" (
	"kindseq"
);

ALTER TABLE "����" ADD CONSTRAINT "FK_��ǰ���_TO_����_1" FOREIGN KEY (
	"productseq"
)
REFERENCES "��ǰ���" (
	"productseq"
);

ALTER TABLE "����" ADD CONSTRAINT "FK_ȸ��_TO_����_1" FOREIGN KEY (
	"mem_id"
)
REFERENCES "ȸ��" (
	"mem_id"
);

ALTER TABLE "�ü�����" ADD CONSTRAINT "FK_�Ӹ���_TO_�ü�����_1" FOREIGN KEY (
	"colorseq"
)
REFERENCES "�Ӹ���" (
	"colorseq"
);

ALTER TABLE "����" ADD CONSTRAINT "FK_����_TO_����_1" FOREIGN KEY (
	"emp_id"
)
REFERENCES "����" (
	"emp_id"
);

ALTER TABLE "�ü�����" ADD CONSTRAINT "FK_�ü�����_TO_�ü�����_1" FOREIGN KEY (
	"procedureseq"
)
REFERENCES "�ü�����" (
	"procedureseq"
);

ALTER TABLE "���" ADD CONSTRAINT "FK_�Խ���_TO_���_1" FOREIGN KEY (
	"boardseq"
)
REFERENCES "�Խ���" (
	"boardseq"
);

ALTER TABLE "���" ADD CONSTRAINT "FK_ID���������_TO_���_1" FOREIGN KEY (
	"id"
)
REFERENCES "ID���������" (
	"id"
);

ALTER TABLE "��������" ADD CONSTRAINT "FK_����_TO_��������_1" FOREIGN KEY (
	"billseq"
)
REFERENCES "����" (
	"billseq"
);

ALTER TABLE "�޹�����" ADD CONSTRAINT "FK_����_TO_�޹�����_1" FOREIGN KEY (
	"emp_id"
)
REFERENCES "����" (
	"emp_id"
);

ALTER TABLE "�ٹ�����" ADD CONSTRAINT "FK_����_TO_�ٹ�����_1" FOREIGN KEY (
	"emp_id"
)
REFERENCES "����" (
	"emp_id"
);

ALTER TABLE "ȯ��" ADD CONSTRAINT "FK_��������_TO_ȯ��_1" FOREIGN KEY (
	"paymentNum"
)
REFERENCES "��������" (
	"paymentNum"
);

