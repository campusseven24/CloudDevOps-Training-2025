create database securitydb
	character set utf8mb4
	collate utf8mb4_general_ci;

insert into `role` (id, name )
values (1, 'USER');

insert into `role` (id, name )
values (2, 'MANAGER');

insert into `role` (id, name )
values (3, 'ADMIN');


create database librarydb
	character set utf8mb4
	collate utf8mb4_general_ci;


-- 외래 키 제약 조건 비활성화 
set foreign_key_checks = 0;

-- 필요한 만큼 drop table 문 추가 
drop table if exists board;
drop table if exists members;

INSERT INTO librarydb.members
(	
	email,
	password,
	name,
	phone,
	address, 
	join_date, 
	member_type,
	status,
	role,
	created_at,  
	updated_at)
VALUES(
	'test1@library.com', 
	'$2a$10$dXJ3SW6G7P50lGmMkkmwe.20cQQubK3.HZWzG3YB1tlRy.fqvM/BG', 
	'테스트1', 
	'010-1111-1111', 
	'서울시 마포구 신촌로 123', 
	NOW() - interval 120 day, 
	'REGULAR', 
	'ACTIVE', 
	'USER', 
	NOW() - interval 120 day, 
	NOW() - interval 120 day);

INSERT INTO librarydb.members
(	
	email,
	password,
	name,
	phone,
	address, 
	join_date, 
	member_type,
	status,
	role,
	created_at,  
	updated_at)
VALUES(
	'test2@library.com', 
	'$2a$10$dXJ3SW6G7P50lGmMkkmwe.20cQQubK3.HZWzG3YB1tlRy.fqvM/BG', 
	'테스트2', 
	'010-2222-2222', 
	'서울시 마포구 신촌로 456', 
	NOW() - interval 90 day, 
	'REGULAR', 
	'ACTIVE', 
	'USER', 
	NOW() - interval 90 day, 
	NOW() - interval 90 day);

INSERT INTO librarydb.members
(	
	email,
	password,
	name,
	phone,
	address, 
	join_date, 
	member_type,
	status,
	role,
	created_at,  
	updated_at)
VALUES(
	'test3@library.com', 
	'$2a$10$dXJ3SW6G7P50lGmMkkmwe.20cQQubK3.HZWzG3YB1tlRy.fqvM/BG', 
	'테스트3', 
	'010-3333-3333', 
	'서울시 마포구 신촌로 789', 
	NOW() - interval 180 day, 
	'SILVER', 
	'ACTIVE', 
	'USER', 
	NOW() - interval 180 day, 
	NOW() - interval 180 day);

INSERT INTO librarydb.members
(	
	email,
	password,
	name,
	phone,
	address, 
	join_date, 
	member_type,
	status,
	role,
	created_at,  
	updated_at)
VALUES(
	'test4@library.com', 
	'$2a$10$dXJ3SW6G7P50lGmMkkmwe.20cQQubK3.HZWzG3YB1tlRy.fqvM/BG', 
	'테스트4', 
	'010-4444-4444', 
	'서울시 마포구 홍대입구로 101', 
	NOW() - interval 365 day, 
	'GOLD', 
	'ACTIVE', 
	'USER', 
	NOW() - interval 365 day, 
	NOW() - interval 365 day);

INSERT INTO librarydb.members
(	
	email,
	password,
	name,
	phone,
	address, 
	join_date, 
	member_type,
	status,
	role,
	created_at,  
	updated_at)
VALUES(
	'test5@library.com', 
	'$2a$10$dXJ3SW6G7P50lGmMkkmwe.20cQQubK3.HZWzG3YB1tlRy.fqvM/BG', 
	'테스트5', 
	'010-5555-5555', 
	'서울시 중구 을지로 234', 
	NOW() - interval 500 day, 
	'VIP', 
	'ACTIVE', 
	'LIBRARIAN', 
	NOW() - interval 500 day, 
	NOW() - interval 500 day);


-- 실제 회원 id 확인 (게시글 작성자로 사용)
-- 더미 데이터 100개 추가
-- 1-10 공지사항(NOTICE)  
INSERT INTO librarydb.board
(
	title,
	content,
	author_id,
	view_count,
	like_count,
	status,
	category, 
	created_at, 
	updated_at 	
	)
VALUES(
	'📢2025년 하반기 도서 구입 계획', 
	'회원 여러분의 의견을 수렴하여 2025년 하반기 신규 도서 구입을 계획하고 있습니다. 원하는 도서가 있으시면 댓글로 남겨주세요.', 
	5, 
	2500, 
	180, 
	'ACTIVE', 
	'NOTICE', 
	NOW() - interval 60 day, 
	NOW() - interval 60 day);


INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('📢 회원 등급 혜택 안내', 'REGULAR, SILVER, GOLD, VIP 등급별 혜택이 변경되었습니다. 자세한 내용은 본문을 참고해주세요.', 5, 3200, 200, 'ACTIVE', 'NOTICE', NOW() - INTERVAL 50 DAY, NOW() - INTERVAL 50 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('📢 도서 반납함 추가 설치', '편의를 위해 지하 1층과 3층에 무인 반납함이 추가 설치되었습니다.', 4, 1500, 95, 'ACTIVE', 'NOTICE', NOW() - INTERVAL 45 DAY, NOW() - INTERVAL 45 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('📢 신규 전자책 서비스 론칭', '이제 모바일 앱에서도 전자책을 대여하실 수 있습니다!', 5, 4200, 320, 'ACTIVE', 'NOTICE', NOW() - INTERVAL 40 DAY, NOW() - INTERVAL 40 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('📢 여름 독서 프로그램 안내', '7-8월 여름방학 기간 어린이 독서 프로그램이 진행됩니다.', 4, 2100, 150, 'ACTIVE', 'NOTICE', NOW() - INTERVAL 35 DAY, NOW() - INTERVAL 35 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('📢 임시 휴관 안내', '시설 보수 공사로 인해 10월 20일 임시 휴관합니다.', 5, 1900, 80, 'ACTIVE', 'NOTICE', NOW() - INTERVAL 30 DAY, NOW() - INTERVAL 30 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('📢 신규 희망도서 신청 서비스', '원하는 도서를 직접 신청하실 수 있는 희망도서 신청 서비스가 오픈되었습니다.', 4, 2800, 190, 'ACTIVE', 'NOTICE', NOW() - INTERVAL 25 DAY, NOW() - INTERVAL 25 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('📢 주차 공간 확대 안내', '주차장이 기존 50대에서 80대 수용 가능하도록 확대되었습니다.', 5, 1600, 70, 'ACTIVE', 'NOTICE', NOW() - INTERVAL 20 DAY, NOW() - INTERVAL 20 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('📢 겨울 방학 개관 시간 안내', '12월-2월 겨울방학 기간 개관 시간이 변경됩니다.', 5, 2200, 120, 'ACTIVE', 'NOTICE', NOW() - INTERVAL 15 DAY, NOW() - INTERVAL 15 DAY);






-- 외래 키 제약 조건 활성화 
set foreign_key_checks = 1;




