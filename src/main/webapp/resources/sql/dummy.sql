insert into member(member_id,user_id, member_pass, member_name, email, phone, addr, gender, birth) 
values(1,'jm2345','1234','홍길동','ooo11@naver.com','01012341234','경기도 의왕시','여자','19980206');

-------- 개인 Test 용 by KSH.. 페이지 없어서 노가다 했슴다..ㅎㅎ ----------
insert into category (category_name, category_logo) values ('채소', '식이섬유 가득한 채소');
insert into category (category_name, category_logo) values ('과일·견과·쌀', '한국인국룰음식');

insert into subcategory(category_id, subcategory_name) values(1, '고구마·감자·당근');
insert into subcategory(category_id, subcategory_name) values(1, '오이·호박·고추');
insert into subcategory(category_id, subcategory_name) values(1, '콩나물·버섯');
insert into subcategory(category_id, subcategory_name) values(2, '제철과일');
insert into subcategory(category_id, subcategory_name) values(2, '국산과일');
insert into subcategory(category_id, subcategory_name) values(2, '수입과일');

insert into product (subcategory_id, title, price) values(1,'감자 1kg', 2700);
insert into product (subcategory_id, title, price) values(1,'친환경 당근 500g', 2990);
insert into product (subcategory_id, title, price) values(2,'애호박 1개', 2150);
insert into product (subcategory_id, title, price) values(2,'다다기오이 3입', 3200);
insert into product (subcategory_id, title, price) values(3,'팽이버섯 2입', 1200);
insert into product (subcategory_id, title, price) values(3,'참타리 버섯 200g', 1000);
insert into product (subcategory_id, title, price) values(4,'칠레산 생체리 300g', 12255);
insert into product (subcategory_id, title, price) values(4,'제주 타이백 감귤 1.7kg', 8200);
insert into product (subcategory_id, title, price) values(5,'샤인마토 500g', 7980);
insert into product (subcategory_id, title, price) values(5,'유명산지 한판딸기 500g', 16020);
insert into product (subcategory_id, title, price) values(6,'아보카도 1개', 2232);
insert into product (subcategory_id, title, price) values(6,'팬시 레몬 1개', 882);

insert into paymethod (method) values('신용카드');
insert into paymethod (method) values('간편결제');
insert into paymethod (method) values('휴대폰');

-- 홍길동=1, 심청이=2 --
insert into member(member_id,user_id, member_pass, member_name, email, phone, addr, gender, birth) 
values('redRoadEast','1234','홍길동','redRoadEast@naver.com','01012341234','경기도 의왕시','남자','19980206');
insert into member(user_id, member_pass, member_name, email, phone, addr, gender, birth) 
values('mindBlue2','1234','심청이','mindBlue2@naver.com','01198765432','서울시 강남구','여자','19710505');
 -- 팬시레몬 2개, 아보카도 5개 --
-- 샤인마토 2개 --
-- 유명산지 한판딸기 1개 --
-- 칠레산 생체리 2개, 친환경 당근 1개 --
-- 샤인마토 아보카도 팽이버섯 애호박 감자  생체리 1개씩-
insert into order_summary(user_id,order_number,paymethod_id,price) values(1, 12345974, 1, 12924);
insert into order_summary(user_id,order_number,paymethod_id,price) values(2, 12345866, 1, 27500); 
insert into order_summary(user_id,order_number,paymethod_id,price) values(1, 12398620, 1, 16020); 
insert into order_summary(user_id,order_number,paymethod_id,price) values(2, 98765101, 1, 2150); 
insert into order_summary(user_id,order_number,paymethod_id,price) values(2, 12398500, 1, 28512);
insert into order_summary(user_id,order_number,paymethod_id,price) values(1, 202201071215, 1, 28512);

insert into order_summary(member_id,order_number,paymethod_id,price)values(1, '202210112174940', 1, 202110);
insert into order_summary(member_id,order_number,paymethod_id,price) values(2, '202220112174941', 3, 22810);

insert into order_detail (order_summary_id, product_id, order_count) values(1,24,2);
insert into order_detail (order_summary_id, product_id, order_count) values(1,23,5);
insert into order_detail (order_summary_id, product_id, order_count) values(2,21,2);
insert into order_detail (order_summary_id, product_id, order_count) values(3,10,1);
insert into order_detail (order_summary_id, product_id, order_count) values(4,19,2);
insert into order_detail (order_summary_id, product_id, order_count) values(4,2,1);
insert into order_detail (order_summary_id, product_id, order_count) values(5,21,1);
insert into order_detail (order_summary_id, product_id, order_count) values(5,23,1);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(6,17,1);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(7,3,1);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(8,19,1);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(9,21,1);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(10,23,1);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(11,17,1);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(12,3,1);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(13,19,1);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(14,21,1);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(15,23,1);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(16,17,1);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(17,3,1);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(18,19,1);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(19,19,1);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(20,1,1);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(20,2,2);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(20,3,3);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(20,4,4);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(20,5,5);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(20,6,6);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(20,7,7);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(20,8,8);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(20,9,9);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(20,10,10);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(20,11,11);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(20,12,12);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(20,13,13);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(20,14,14);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(20,15,15);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(20,16,16);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(20,17,17);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(20,18,18);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(20,19,19);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(20,20,20);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(20,21,21);