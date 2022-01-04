insert into member(member_id, member_pass, member_name, email, phone, addr, gender, birth) 
values(1,'1234','홍길동','ooo11@naver.com','01012341234','경기도 의왕시','여자','19980206');

-------- 이거 그냥 막 작성한 거에요 by KSH ----------
insert into category (category_name, category_logo) values('채소', '식이섬유 가득한 채소나으리');
insert into subcategory (category_id, subcategory_name) values (1, '내가 제일 싫어하는 빨간색 음식');
insert into product (subcategory_id, title, subtitle, price, detail, sale) values(1, '토마토', '방울',15000,'이게 맛있냐?',0);
insert into order_detail (order_summary_id,product_id,price) values(3,1,15000);