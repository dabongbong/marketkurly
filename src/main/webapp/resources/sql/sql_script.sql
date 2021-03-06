-- DB 생성 -- 
create database kurly;

-- 테이블 생성 --
CREATE TABLE category(
	category_id INT PRIMARY KEY AUTO_INCREMENT
	, category_name VARCHAR(30)
	, category_logo TEXT
) default character set utf8;

create table subcategory(
	subcategory_id int primary key auto_increment
	, category_id int 
	, subcategory_name text
	, constraint fk_category_subcategory foreign key(category_id) references category(category_id)
) default character set utf8;

create table product(
	product_id int primary key auto_increment
	, subcategory_id int
	, title varchar(20)
	, subtitle varchar(50)
	, price int
	, detail text
	, sale int
	, product_img text
	, constraint fk_subcategory_product foreign key(subcategory_id) references subcategory(subcategory_id)
) default character set utf8;

create table product_detail(
	product_detail_id int primary key auto_increment
	, product_id int
	, item varchar(30)
	, content text
	, constraint fk_product_product_detail foreign key(product_id) references product(product_id)
) default character set utf8;

create table product_qna(
	qna_no int primary key auto_increment
	, product_id int
	, title varchar(30)
	, writer varchar(20)
	, date timestamp default now()
	, answer text
	, ishidden int default 0
	, CONSTRAINT fk_product_product_qna FOREIGN KEY (product_id) REFERENCES product(product_id)
) default character set utf8;

CREATE TABLE product_hashtag(
	tag_id INT PRIMARY KEY AUTO_INCREMENT,
	product_id INT,
	comment VARCHAR(20),
	CONSTRAINT fk_product_hashtag FOREIGN KEY (product_id) REFERENCES product (product_id)
) default character set utf8;

create table product_review(
	review_id int primary key auto_increment
	, product_id int
	, title varchar(20)
	, writer varchar(20)
	, date timestamp default now()
	, help int default 0
	, hit int default 0
	, constraint fk_product_review foreign key (product_id) references product(product_id)
) default character set utf8;

create table member(
	member_id int primary key auto_increment
	, user_id varchar(30)
	, member_pass varchar(64)
	, member_name varchar(30)
	, email varchar(30)
	, phone varchar(100)
	, addr varchar(100)
	, gender varchar(10)
	, birth varchar(20)
	, regdate timestamp default CURRENT_TIMESTAMP
) default character set utf8;

create table paymethod(
	paymethod_id int primary key auto_increment 
	, method varchar(20)
) default character set utf8;

create table order_summary(
	order_summary_id int primary key auto_increment
	, member_id int
	, order_number text
	, paymethod_id int
	, orderdate timestamp default now()
	, price int default 0
	, check_no int default 0
	, constraint fk_member_order_summary foreign key (member_id) references member(member_id)
	, constraint fk_paymenthod_order_summary foreign key (paymethod_id) references paymethod(paymethod_id)
) default character set utf8;

create table order_detail(
	 order_detail_id int primary key auto_increment
	, order_summary_id int
	, product_id int
	, order_count int
	, constraint fk_order_summary_order_detail foreign key(order_summary_id) references order_summary(order_summary_id)
	, constraint fk_product_order_detail foreign key(product_id) references product(product_id)
)default character set utf8;

create table notice(
	notice_no int primary key auto_increment
	, title varchar(50)
	, writer varchar(20)
	, content text
	, regdate timestamp default now()
	, hit int
) default character set utf8;


create table my_qna(
	my_qna_no int primary key auto_increment
	, member_id int 
	, my_qna_category text
	, title varchar(50)
	, writer varchar(20)
	, content text
	, regdate timestamp default now()
	,constraint fk_member_my_qna foreign key(member_id) references member (member_id)
) default character set utf8;

create table faq(
	faq_no int primary key auto_increment
	, faq_category text
	, title varchar(50)
	, writer varchar(20) 
	, content text
) default character set utf8;


--어드민 로그인 
create table admin(
admin_id int primary key auto_increment
, user_id varchar(30)
, pass varchar(64)
, name varchar(30)
) default character set utf8;