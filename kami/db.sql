--db 변경후 같이 변경 부탁!
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

id공통된 정보, 직원, 직책, 소모품,










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

ALTER TABLE "직원" ADD CONSTRAINT "PK_직원" PRIMARY KEY (
	"positionseq",
	"emp_id"
);

ALTER TABLE "직책" ADD CONSTRAINT "PK_직책" PRIMARY KEY (
	"positionSeq"
);

ALTER TABLE "경력" ADD CONSTRAINT "PK_경력" PRIMARY KEY (
	"careeaseq",
	"emp_id"
);

ALTER TABLE "예약정보" ADD CONSTRAINT "PK_예약정보" PRIMARY KEY (
	"reservationseq",
	"payseq",
	"proinfoseq",
	"emp_id",
	"mem_id"
);

ALTER TABLE "게시판" ADD CONSTRAINT "PK_게시판" PRIMARY KEY (
	"boardseq",
	"id"
);

ALTER TABLE "채팅" ADD CONSTRAINT "PK_채팅" PRIMARY KEY (
	"chatseq",
	"mem_id"
);

ALTER TABLE "회원" ADD CONSTRAINT "PK_회원" PRIMARY KEY (
	"mem_id"
);

ALTER TABLE "소모품" ADD CONSTRAINT "PK_소모품" PRIMARY KEY (
	"supplyseq",
	"emp_id"
);

ALTER TABLE "상품목록" ADD CONSTRAINT "PK_상품목록" PRIMARY KEY (
	"productseq",
	"kindseq"
);

ALTER TABLE "구매" ADD CONSTRAINT "PK_구매" PRIMARY KEY (
	"billseq",
	"productseq",
	"mem_id"
);

ALTER TABLE "머리종류" ADD CONSTRAINT "PK_머리종류" PRIMARY KEY (
	"Key"
);

ALTER TABLE "머리색" ADD CONSTRAINT "PK_머리색" PRIMARY KEY (
	"colorseq"
);

ALTER TABLE "시술종류" ADD CONSTRAINT "PK_시술종류" PRIMARY KEY (
	"procedureseq",
	"colorseq"
);

ALTER TABLE "공지" ADD CONSTRAINT "PK_공지" PRIMARY KEY (
	"noticeseq",
	"emp_id"
);

ALTER TABLE "시술정보" ADD CONSTRAINT "PK_시술정보" PRIMARY KEY (
	"proinfoseq",
	"procedureseq"
);

ALTER TABLE "댓글" ADD CONSTRAINT "PK_댓글" PRIMARY KEY (
	"reveiwseq",
	"boardseq",
	"id"
);

ALTER TABLE "결제관리" ADD CONSTRAINT "PK_결제관리" PRIMARY KEY (
	"paymentNum",
	"billseq"
);

ALTER TABLE "휴무일정" ADD CONSTRAINT "PK_휴무일정" PRIMARY KEY (
	"off_scheduleseq",
	"emp_id"
);

ALTER TABLE "근무일정" ADD CONSTRAINT "PK_근무일정" PRIMARY KEY (
	"schedulseq",
	"emp_id"
);

ALTER TABLE "환불" ADD CONSTRAINT "PK_환불" PRIMARY KEY (
	"CSHR_CancelNum",
	"paymentNum"
);

ALTER TABLE "상품 카테고리" ADD CONSTRAINT "PK_상품 카테고리" PRIMARY KEY (
	"kindseq"
);

ALTER TABLE "ID공통된정보" ADD CONSTRAINT "PK_ID공통된정보" PRIMARY KEY (
	"id"
);

ALTER TABLE "직원" ADD CONSTRAINT "FK_직책_TO_직원_1" FOREIGN KEY (
	"positionseq"
)
REFERENCES "직책" (
	"positionSeq"
);

ALTER TABLE "직원" ADD CONSTRAINT "FK_ID공통된정보_TO_직원_1" FOREIGN KEY (
	"emp_id"
)
REFERENCES "ID공통된정보" (
	"id"
);

ALTER TABLE "경력" ADD CONSTRAINT "FK_직원_TO_경력_1" FOREIGN KEY (
	"emp_id"
)
REFERENCES "직원" (
	"emp_id"
);

ALTER TABLE "예약정보" ADD CONSTRAINT "FK_결제관리_TO_예약정보_1" FOREIGN KEY (
	"payseq"
)
REFERENCES "결제관리" (
	"paymentNum"
);

ALTER TABLE "예약정보" ADD CONSTRAINT "FK_시술정보_TO_예약정보_1" FOREIGN KEY (
	"proinfoseq"
)
REFERENCES "시술정보" (
	"proinfoseq"
);

ALTER TABLE "예약정보" ADD CONSTRAINT "FK_직원_TO_예약정보_1" FOREIGN KEY (
	"emp_id"
)
REFERENCES "직원" (
	"emp_id"
);

ALTER TABLE "예약정보" ADD CONSTRAINT "FK_회원_TO_예약정보_1" FOREIGN KEY (
	"mem_id"
)
REFERENCES "회원" (
	"mem_id"
);

ALTER TABLE "게시판" ADD CONSTRAINT "FK_ID공통된정보_TO_게시판_1" FOREIGN KEY (
	"id"
)
REFERENCES "ID공통된정보" (
	"id"
);

ALTER TABLE "채팅" ADD CONSTRAINT "FK_회원_TO_채팅_1" FOREIGN KEY (
	"mem_id"
)
REFERENCES "회원" (
	"mem_id"
);

ALTER TABLE "회원" ADD CONSTRAINT "FK_ID공통된정보_TO_회원_1" FOREIGN KEY (
	"mem_id"
)
REFERENCES "ID공통된정보" (
	"id"
);

ALTER TABLE "소모품" ADD CONSTRAINT "FK_직원_TO_소모품_1" FOREIGN KEY (
	"emp_id"
)
REFERENCES "직원" (
	"emp_id"
);

ALTER TABLE "상품목록" ADD CONSTRAINT "FK_상품 카테고리_TO_상품목록_1" FOREIGN KEY (
	"kindseq"
)
REFERENCES "상품 카테고리" (
	"kindseq"
);

ALTER TABLE "구매" ADD CONSTRAINT "FK_상품목록_TO_구매_1" FOREIGN KEY (
	"productseq"
)
REFERENCES "상품목록" (
	"productseq"
);

ALTER TABLE "구매" ADD CONSTRAINT "FK_회원_TO_구매_1" FOREIGN KEY (
	"mem_id"
)
REFERENCES "회원" (
	"mem_id"
);

ALTER TABLE "시술종류" ADD CONSTRAINT "FK_머리색_TO_시술종류_1" FOREIGN KEY (
	"colorseq"
)
REFERENCES "머리색" (
	"colorseq"
);

ALTER TABLE "공지" ADD CONSTRAINT "FK_직원_TO_공지_1" FOREIGN KEY (
	"emp_id"
)
REFERENCES "직원" (
	"emp_id"
);

ALTER TABLE "시술정보" ADD CONSTRAINT "FK_시술종류_TO_시술정보_1" FOREIGN KEY (
	"procedureseq"
)
REFERENCES "시술종류" (
	"procedureseq"
);

ALTER TABLE "댓글" ADD CONSTRAINT "FK_게시판_TO_댓글_1" FOREIGN KEY (
	"boardseq"
)
REFERENCES "게시판" (
	"boardseq"
);

ALTER TABLE "댓글" ADD CONSTRAINT "FK_ID공통된정보_TO_댓글_1" FOREIGN KEY (
	"id"
)
REFERENCES "ID공통된정보" (
	"id"
);

ALTER TABLE "결제관리" ADD CONSTRAINT "FK_구매_TO_결제관리_1" FOREIGN KEY (
	"billseq"
)
REFERENCES "구매" (
	"billseq"
);

ALTER TABLE "휴무일정" ADD CONSTRAINT "FK_직원_TO_휴무일정_1" FOREIGN KEY (
	"emp_id"
)
REFERENCES "직원" (
	"emp_id"
);

ALTER TABLE "근무일정" ADD CONSTRAINT "FK_직원_TO_근무일정_1" FOREIGN KEY (
	"emp_id"
)
REFERENCES "직원" (
	"emp_id"
);

ALTER TABLE "환불" ADD CONSTRAINT "FK_결제관리_TO_환불_1" FOREIGN KEY (
	"paymentNum"
)
REFERENCES "결제관리" (
	"paymentNum"
);

