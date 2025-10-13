SELECT * FROM librarydb.board;

USE librarydb;

-- 11-40: 자유게시판 (FREE)
INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('첫 방문 후기!', '오늘 처음 방문했는데 시설이 정말 좋네요. 자주 오고 싶습니다!', 1, 340, 45, 'ACTIVE', 'FREE', NOW() - INTERVAL 59 DAY, NOW() - INTERVAL 59 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('스터디 카페보다 훨씬 좋아요', '조용하고 쾌적해서 집중하기 정말 좋습니다.', 2, 520, 68, 'ACTIVE', 'FREE', NOW() - INTERVAL 58 DAY, NOW() - INTERVAL 58 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('주말에도 사람이 많나요?', '주말에 방문하려고 하는데 자리가 있을까요?', 3, 280, 32, 'ACTIVE', 'FREE', NOW() - INTERVAL 57 DAY, NOW() - INTERVAL 57 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('커피 자판기 추가 요청', '2층에도 커피 자판기가 있으면 좋겠어요!', 1, 450, 55, 'ACTIVE', 'FREE', NOW() - INTERVAL 56 DAY, NOW() - INTERVAL 56 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('와이파이 속도가 빨라요', '인터넷 속도가 빨라서 온라인 강의 듣기 좋습니다.', 2, 380, 41, 'ACTIVE', 'FREE', NOW() - INTERVAL 55 DAY, NOW() - INTERVAL 55 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('주차하기 편해요', '주차 공간이 넓어서 좋네요.', 3, 290, 28, 'ACTIVE', 'FREE', NOW() - INTERVAL 54 DAY, NOW() - INTERVAL 54 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('어린이 열람실 추천', '아이와 함께 오기 좋은 공간입니다.', 1, 510, 62, 'ACTIVE', 'FREE', NOW() - INTERVAL 53 DAY, NOW() - INTERVAL 53 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('스터디룸 예약 꿀팁', '스터디룸은 아침 일찍 예약하는 게 좋아요!', 2, 680, 89, 'ACTIVE', 'FREE', NOW() - INTERVAL 52 DAY, NOW() - INTERVAL 52 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('점심시간 혼잡도 어떤가요?', '평일 점심시간에 사람이 많이 있나요?', 3, 320, 35, 'ACTIVE', 'FREE', NOW() - INTERVAL 51 DAY, NOW() - INTERVAL 51 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('야간 개관 시간 연장 건의', '평일 야간 시간을 22시까지 연장해주시면 감사하겠습니다.', 1, 720, 95, 'ACTIVE', 'FREE', NOW() - INTERVAL 50 DAY, NOW() - INTERVAL 50 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('신간 소설 추천해주세요', '요즘 읽을만한 신간 소설 있으면 추천 부탁드려요!', 2, 430, 52, 'ACTIVE', 'FREE', NOW() - INTERVAL 49 DAY, NOW() - INTERVAL 49 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('독서 모임 만들고 싶어요', '독서 모임 같이 하실 분 계신가요?', 3, 560, 71, 'ACTIVE', 'FREE', NOW() - INTERVAL 48 DAY, NOW() - INTERVAL 48 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('오늘 날씨 좋네요', '창가 자리에서 책 읽기 딱 좋은 날씨입니다.', 1, 210, 25, 'ACTIVE', 'FREE', NOW() - INTERVAL 47 DAY, NOW() - INTERVAL 47 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('북카페 분위기 최고', '1층 북카페 분위기가 정말 좋아요!', 2, 490, 58, 'ACTIVE', 'FREE', NOW() - INTERVAL 46 DAY, NOW() - INTERVAL 46 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('열람실 온도가 적당해요', '에어컨 온도가 딱 좋네요. 쾌적합니다.', 3, 270, 30, 'ACTIVE', 'FREE', NOW() - INTERVAL 45 DAY, NOW() - INTERVAL 45 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('주차비 무료인가요?', '주차비 관련해서 궁금합니다.', 1, 380, 42, 'ACTIVE', 'FREE', NOW() - INTERVAL 44 DAY, NOW() - INTERVAL 44 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('복사 서비스 가격', '복사/인쇄 서비스 이용 가능한가요?', 2, 320, 36, 'ACTIVE', 'FREE', NOW() - INTERVAL 43 DAY, NOW() - INTERVAL 43 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('오랜만에 왔는데 깨끗해요', '시설 관리가 정말 잘 되어있네요!', 3, 440, 53, 'ACTIVE', 'FREE', NOW() - INTERVAL 42 DAY, NOW() - INTERVAL 42 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('음료 반입 가능한가요?', '텀블러에 커피 담아와도 되나요?', 1, 510, 61, 'ACTIVE', 'FREE', NOW() - INTERVAL 41 DAY, NOW() - INTERVAL 41 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('좌석 예약 시스템 편해요', '모바일로 미리 예약할 수 있어서 좋습니다.', 2, 590, 73, 'ACTIVE', 'FREE', NOW() - INTERVAL 40 DAY, NOW() - INTERVAL 40 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('1층 카페 커피 맛있어요', '도서관 내 카페 커피가 의외로 맛있네요!', 3, 410, 48, 'ACTIVE', 'FREE', NOW() - INTERVAL 39 DAY, NOW() - INTERVAL 39 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('자습하기 정말 좋은 곳', '수험생에게 최고의 장소입니다.', 1, 670, 82, 'ACTIVE', 'FREE', NOW() - INTERVAL 38 DAY, NOW() - INTERVAL 38 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('휴게실이 따로 있나요?', '잠깐 쉴 수 있는 공간이 있는지 궁금해요.', 2, 290, 33, 'ACTIVE', 'FREE', NOW() - INTERVAL 37 DAY, NOW() - INTERVAL 37 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('전공 서적 추천 좀 해주세요', '컴퓨터공학 전공 서적 추천 부탁드립니다.', 3, 530, 64, 'ACTIVE', 'FREE', NOW() - INTERVAL 36 DAY, NOW() - INTERVAL 36 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('오늘도 만석이네요', '역시 시험기간이라 사람이 많네요.', 1, 350, 40, 'ACTIVE', 'FREE', NOW() - INTERVAL 35 DAY, NOW() - INTERVAL 35 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('조명이 눈에 편해요', '조명이 따뜻한 색이라 눈이 편합니다.', 2, 280, 31, 'ACTIVE', 'FREE', NOW() - INTERVAL 34 DAY, NOW() - INTERVAL 34 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('휴일에 개관하나요?', '공휴일에도 이용 가능한가요?', 3, 420, 49, 'ACTIVE', 'FREE', NOW() - INTERVAL 33 DAY, NOW() - INTERVAL 33 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('친구와 함께 공부하기 좋아요', '2인 책상이 많아서 좋습니다.', 1, 480, 56, 'ACTIVE', 'FREE', NOW() - INTERVAL 32 DAY, NOW() - INTERVAL 32 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('전자책 대여 서비스 굿!', '모바일 전자책 서비스 정말 편리해요!', 2, 620, 77, 'ACTIVE', 'FREE', NOW() - INTERVAL 31 DAY, NOW() - INTERVAL 31 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('직원분들 친절해요', '직원분들이 정말 친절하십니다. 감사합니다!', 3, 390, 44, 'ACTIVE', 'FREE', NOW() - INTERVAL 30 DAY, NOW() - INTERVAL 30 DAY);



-- 41-70: 질문답변 (QNA)
INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('회원가입은 어떻게 하나요?', '온라인 회원가입 절차가 궁금합니다.', 1, 450, 38, 'ACTIVE', 'QNA', NOW() - INTERVAL 58 DAY, NOW() - INTERVAL 58 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('대출 기간은 며칠인가요?', '일반 도서 대출 기간이 궁금해요.', 2, 520, 45, 'ACTIVE', 'QNA', NOW() - INTERVAL 57 DAY, NOW() - INTERVAL 57 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('연장 신청은 몇 번까지 가능한가요?', '대출 연장에 제한이 있나요?', 3, 380, 32, 'ACTIVE', 'QNA', NOW() - INTERVAL 56 DAY, NOW() - INTERVAL 56 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('분실 도서 처리 방법', '책을 분실했을 때 어떻게 처리하나요?', 1, 680, 52, 'ACTIVE', 'QNA', NOW() - INTERVAL 55 DAY, NOW() - INTERVAL 55 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('회원증 재발급 방법', '회원증을 잃어버렸는데 재발급 받을 수 있나요?', 2, 340, 28, 'ACTIVE', 'QNA', NOW() - INTERVAL 54 DAY, NOW() - INTERVAL 54 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('희망도서 신청 후 얼마나 걸리나요?', '신청한 도서는 언제쯤 들어오나요?', 3, 490, 41, 'ACTIVE', 'QNA', NOW() - INTERVAL 53 DAY, NOW() - INTERVAL 53 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('어린이 회원 가입 가능한가요?', '초등학생도 회원 가입이 가능한가요?', 1, 410, 35, 'ACTIVE', 'QNA', NOW() - INTERVAL 52 DAY, NOW() - INTERVAL 52 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('비회원도 열람실 이용 가능한가요?', '회원 가입 안 해도 열람실 사용할 수 있나요?', 2, 580, 48, 'ACTIVE', 'QNA', NOW() - INTERVAL 51 DAY, NOW() - INTERVAL 51 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('예약 도서 찾는 방법', '예약한 도서가 들어왔는지 어떻게 확인하나요?', 3, 320, 27, 'ACTIVE', 'QNA', NOW() - INTERVAL 50 DAY, NOW() - INTERVAL 50 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('스터디룸 예약 시간', '스터디룸은 몇 시간까지 이용 가능한가요?', 1, 540, 44, 'ACTIVE', 'QNA', NOW() - INTERVAL 49 DAY, NOW() - INTERVAL 49 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('도서 검색 방법', '원하는 책을 빨리 찾는 방법이 있나요?', 2, 290, 24, 'ACTIVE', 'QNA', NOW() - INTERVAL 48 DAY, NOW() - INTERVAL 48 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('전자책 대여 방법', '전자책은 어떻게 빌리나요?', 3, 470, 39, 'ACTIVE', 'QNA', NOW() - INTERVAL 47 DAY, NOW() - INTERVAL 47 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('회원 등급 상향 조건', 'SILVER 등급으로 올라가려면 어떻게 해야 하나요?', 1, 620, 51, 'ACTIVE', 'QNA', NOW() - INTERVAL 46 DAY, NOW() - INTERVAL 46 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('무인 반납함 사용법', '무인 반납함은 어떻게 사용하나요?', 2, 350, 29, 'ACTIVE', 'QNA', NOW() - INTERVAL 45 DAY, NOW() - INTERVAL 45 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('주말 개관 시간 문의', '주말에는 몇 시부터 열리나요?', 3, 430, 36, 'ACTIVE', 'QNA', NOW() - INTERVAL 44 DAY, NOW() - INTERVAL 44 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('대출 중인 책 예약 방법', '이미 대출된 책을 예약할 수 있나요?', 1, 510, 42, 'ACTIVE', 'QNA', NOW() - INTERVAL 43 DAY, NOW() - INTERVAL 43 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('연체료 확인 방법', '내가 낸 연체료는 어디서 확인하나요?', 2, 390, 33, 'ACTIVE', 'QNA', NOW() - INTERVAL 42 DAY, NOW() - INTERVAL 42 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('외국 서적도 있나요?', '영어 원서를 빌릴 수 있나요?', 3, 280, 23, 'ACTIVE', 'QNA', NOW() - INTERVAL 41 DAY, NOW() - INTERVAL 41 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('복사 서비스 이용 방법', '복사는 어디서 할 수 있나요?', 1, 320, 26, 'ACTIVE', 'QNA', NOW() - INTERVAL 40 DAY, NOW() - INTERVAL 40 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('열람실 자리 배정', '열람실 좌석은 지정제인가요?', 2, 450, 37, 'ACTIVE', 'QNA', NOW() - INTERVAL 39 DAY, NOW() - INTERVAL 39 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('노트북 사용 가능 구역', '노트북은 어디서 사용할 수 있나요?', 3, 530, 44, 'ACTIVE', 'QNA', NOW() - INTERVAL 38 DAY, NOW() - INTERVAL 38 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('와이파이 비밀번호', '와이파이 접속 방법이 궁금해요.', 1, 410, 34, 'ACTIVE', 'QNA', NOW() - INTERVAL 37 DAY, NOW() - INTERVAL 37 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('그룹 스터디룸 인원 제한', '스터디룸은 몇 명까지 이용 가능한가요?', 2, 370, 31, 'ACTIVE', 'QNA', NOW() - INTERVAL 36 DAY, NOW() - INTERVAL 36 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('주차 시간 제한', '주차는 몇 시간까지 무료인가요?', 3, 490, 40, 'ACTIVE', 'QNA', NOW() - INTERVAL 35 DAY, NOW() - INTERVAL 35 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('신분증 필수인가요?', '신분증이 없어도 이용할 수 있나요?', 1, 310, 25, 'ACTIVE', 'QNA', NOW() - INTERVAL 34 DAY, NOW() - INTERVAL 34 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('음식물 반입 금지인가요?', '간단한 간식은 괜찮나요?', 2, 420, 35, 'ACTIVE', 'QNA', NOW() - INTERVAL 33 DAY, NOW() - INTERVAL 33 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('휴관일은 언제인가요?', '정기 휴관일이 있나요?', 3, 270, 22, 'ACTIVE', 'QNA', NOW() - INTERVAL 32 DAY, NOW() - INTERVAL 32 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('모바일 회원증 사용', '모바일 회원증으로도 대출이 가능한가요?', 1, 560, 46, 'ACTIVE', 'QNA', NOW() - INTERVAL 31 DAY, NOW() - INTERVAL 31 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('단체 견학 신청', '학교 단체로 방문하려면 어떻게 하나요?', 2, 340, 28, 'ACTIVE', 'QNA', NOW() - INTERVAL 30 DAY, NOW() - INTERVAL 30 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('도서 기증 방법', '집에 있는 책을 기증하고 싶은데 가능한가요?', 3, 480, 39, 'ACTIVE', 'QNA', NOW() - INTERVAL 29 DAY, NOW() - INTERVAL 29 DAY);




-- 71-100: 리뷰 (REVIEW)
INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('해리포터 시리즈 완독 후기', '드디어 해리포터 전권을 다 읽었습니다! 정말 재미있었어요.', 1, 820, 105, 'ACTIVE', 'REVIEW', NOW() - INTERVAL 60 DAY, NOW() - INTERVAL 60 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('코스모스 - 우주의 경이로움', '칼 세이건의 명저. 우주에 대한 경외감을 느낄 수 있었습니다.', 2, 650, 82, 'ACTIVE', 'REVIEW', NOW() - INTERVAL 59 DAY, NOW() - INTERVAL 59 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('사피엔스 리뷰', '인류의 역사를 새로운 시각으로 볼 수 있는 책입니다.', 3, 920, 118, 'ACTIVE', 'REVIEW', NOW() - INTERVAL 58 DAY, NOW() - INTERVAL 58 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('총, 균, 쇠 - 문명의 수수께끼', '역사를 과학적으로 분석한 흥미로운 책이에요.', 1, 730, 93, 'ACTIVE', 'REVIEW', NOW() - INTERVAL 57 DAY, NOW() - INTERVAL 57 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('1984 - 디스토피아의 걸작', '조지 오웰의 대표작. 현대 사회를 돌아보게 됩니다.', 2, 580, 74, 'ACTIVE', 'REVIEW', NOW() - INTERVAL 56 DAY, NOW() - INTERVAL 56 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('어린왕자 재독 후기', '어른이 되어 읽으니 다른 의미로 다가옵니다.', 3, 490, 61, 'ACTIVE', 'REVIEW', NOW() - INTERVAL 55 DAY, NOW() - INTERVAL 55 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('데미안 - 자아 발견의 여정', '헤르만 헤세의 명작. 성장 소설의 백미입니다.', 1, 670, 85, 'ACTIVE', 'REVIEW', NOW() - INTERVAL 54 DAY, NOW() - INTERVAL 54 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('죄와 벌 완독!', '러시아 문학의 깊이를 느낄 수 있었습니다. 어렵지만 보람있었어요.', 2, 540, 68, 'ACTIVE', 'REVIEW', NOW() - INTERVAL 53 DAY, NOW() - INTERVAL 53 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('연금술사 - 꿈을 좇는 이야기', '파울로 코엘료의 대표작. 용기를 주는 책입니다.', 3, 780, 99, 'ACTIVE', 'REVIEW', NOW() - INTERVAL 52 DAY, NOW() - INTERVAL 52 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('노인과 바다 리뷰', '헤밍웨이의 간결한 문체가 인상적이었습니다.', 1, 420, 53, 'ACTIVE', 'REVIEW', NOW() - INTERVAL 51 DAY, NOW() - INTERVAL 51 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('호밀밭의 파수꾼 감상평', '청소년기의 방황과 고뇌를 그린 소설. 공감되는 부분이 많았어요.', 2, 610, 77, 'ACTIVE', 'REVIEW', NOW() - INTERVAL 50 DAY, NOW() - INTERVAL 50 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('위대한 개츠비 후기', 'F. 스콧 피츠제럴드의 걸작. 미국 문학의 정수를 느꼈습니다.', 3, 520, 66, 'ACTIVE', 'REVIEW', NOW() - INTERVAL 49 DAY, NOW() - INTERVAL 49 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('백년의 고독 완독 도전!', '마르케스의 마법적 리얼리즘. 어렵지만 매력적인 작품입니다.', 1, 690, 87, 'ACTIVE', 'REVIEW', NOW() - INTERVAL 48 DAY, NOW() - INTERVAL 48 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('변신 - 카프카의 기괴함', '카프카 특유의 부조리함이 인상적이었습니다.', 2, 450, 57, 'ACTIVE', 'REVIEW', NOW() - INTERVAL 47 DAY, NOW() - INTERVAL 47 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('오만과 편견 로맨스', '제인 오스틴의 대표작. 고전 로맨스의 교과서입니다.', 3, 830, 106, 'ACTIVE', 'REVIEW', NOW() - INTERVAL 46 DAY, NOW() - INTERVAL 46 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('동물농장 - 정치 우화', '조지 오웰의 또 다른 걸작. 짧지만 강렬합니다.', 1, 570, 72, 'ACTIVE', 'REVIEW', NOW() - INTERVAL 45 DAY, NOW() - INTERVAL 45 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('햄릿 - 셰익스피어의 명작', '고전 중의 고전. 대사 하나하나가 명문입니다.', 2, 480, 60, 'ACTIVE', 'REVIEW', NOW() - INTERVAL 44 DAY, NOW() - INTERVAL 44 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('레미제라블 감동 후기', '빅토르 위고의 대작. 감동의 연속이었습니다.', 3, 910, 116, 'ACTIVE', 'REVIEW', NOW() - INTERVAL 43 DAY, NOW() - INTERVAL 43 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('이방인 - 실존주의 소설', '알베르 카뮈의 대표작. 인간 존재에 대해 생각하게 됩니다.', 1, 620, 78, 'ACTIVE', 'REVIEW', NOW() - INTERVAL 42 DAY, NOW() - INTERVAL 42 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('앵무새 죽이기 추천!', '인종 차별을 다룬 미국 문학의 고전. 강력 추천합니다.', 2, 740, 94, 'ACTIVE', 'REVIEW', NOW() - INTERVAL 41 DAY, NOW() - INTERVAL 41 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('호빗 - 반지의 제왕 프리퀄', '톨킨의 판타지 세계관. 모험의 즐거움을 느꼈어요.', 3, 680, 86, 'ACTIVE', 'REVIEW', NOW() - INTERVAL 40 DAY, NOW() - INTERVAL 40 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('파우스트 완독 후기', '괴테의 역작. 어렵지만 의미 있는 독서였습니다.', 1, 510, 64, 'ACTIVE', 'REVIEW', NOW() - INTERVAL 39 DAY, NOW() - INTERVAL 39 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('멋진 신세계 리뷰', '올더스 헉슬리의 디스토피아 소설. 현대 사회에 대한 경고입니다.', 2, 590, 75, 'ACTIVE', 'REVIEW', NOW() - INTERVAL 38 DAY, NOW() - INTERVAL 38 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('참을 수 없는 존재의 가벼움', '밀란 쿤데라의 철학적 소설. 깊이 있는 사유를 요구합니다.', 3, 630, 80, 'ACTIVE', 'REVIEW', NOW() - INTERVAL 37 DAY, NOW() - INTERVAL 37 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('좁은 문 - 지드의 명작', '순수한 사랑 이야기. 아름답고 슬픈 소설입니다.', 1, 440, 55, 'ACTIVE', 'REVIEW', NOW() - INTERVAL 36 DAY, NOW() - INTERVAL 36 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('설국 - 가와바타 야스나리', '일본 문학의 정수. 섬세한 묘사가 일품입니다.', 2, 550, 69, 'ACTIVE', 'REVIEW', NOW() - INTERVAL 35 DAY, NOW() - INTERVAL 35 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('전쟁과 평화 도전기', '톨스토이의 대작. 긴 호흡이지만 읽을 가치가 있습니다.', 3, 870, 111, 'ACTIVE', 'REVIEW', NOW() - INTERVAL 34 DAY, NOW() - INTERVAL 34 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('안나 카레니나 리뷰', '러시아 문학의 걸작. 인간 심리 묘사가 탁월합니다.', 1, 710, 90, 'ACTIVE', 'REVIEW', NOW() - INTERVAL 33 DAY, NOW() - INTERVAL 33 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('마의 산 완독 후기', '토마스 만의 대표작. 사색적인 작품입니다.', 2, 460, 58, 'ACTIVE', 'REVIEW', NOW() - INTERVAL 32 DAY, NOW() - INTERVAL 32 DAY);

INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at) 
VALUES ('젊은 베르테르의 슬픔', '괴테의 서간체 소설. 감성적이고 낭만적입니다.', 3, 560, 71, 'ACTIVE', 'REVIEW', NOW() - INTERVAL 31 DAY, NOW() - INTERVAL 31 DAY);







-- 공지사항 (NOTICE) - 3개
INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at)
VALUES ('📢 독서 클럽 모집 안내', '매주 토요일 오후 3시에 진행되는 독서 클럽 신규 회원을 모집합니다. 관심 있으신 분들은 1층 안내데스크에 문의해주세요.', 5, 1250, 85, 'ACTIVE', 'NOTICE', NOW() - INTERVAL 12 DAY, NOW() - INTERVAL 12 DAY);
INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at)
VALUES ('📢 도서관 앱 출시 안내', '이제 모바일 앱에서도 도서 검색, 대출 연장, 좌석 예약이 가능합니다. 앱스토어에서 "도서관 앱"을 검색해보세요.', 5, 2800, 210, 'ACTIVE', 'NOTICE', NOW() - INTERVAL 8 DAY, NOW() - INTERVAL 8 DAY);
INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at)
VALUES ('📢 북스타그램 이벤트', '도서관에서 빌린 책과 함께 인증샷을 찍어 #도서관북스타그램 해시태그로 게시하면 추첨을 통해 문화상품권을 드립니다!', 5, 1950, 155, 'ACTIVE', 'NOTICE', NOW() - INTERVAL 3 DAY, NOW() - INTERVAL 3 DAY);
-- 자유게시판 (FREE) - 5개
INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at)
VALUES ('오늘 점심 같이 드실 분?', '도서관 근처 맛집 탐방하실 분 계신가요? 12시에 1층 로비에서 만나요~', 1, 185, 12, 'ACTIVE', 'FREE', NOW() - INTERVAL 1 DAY, NOW() - INTERVAL 1 DAY);
INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at)
VALUES ('새로 구비된 방음 부스 좋네요', '3층에 새로 설치된 1인 방음 부스 정말 좋습니다. 화상 회의나 통화할 때 유용해요!', 2, 320, 45, 'ACTIVE', 'FREE', NOW() - INTERVAL 2 DAY, NOW() - INTERVAL 2 DAY);
INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at)
VALUES ('태블릿 대여 서비스 추천합니다', '태블릿 대여 서비스 처음 이용해봤는데 PDF 자료 보기 정말 좋네요. 종이 낭비도 줄이고 일석이조!', 3, 275, 38, 'ACTIVE', 'FREE', NOW() - INTERVAL 4 DAY, NOW() - INTERVAL 4 DAY);
INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at)
VALUES ('충전기 빌려주실 분 계신가요?', '맥북 충전기 급히 필요한데 혹시 잠깐 빌려주실 분 계실까요? 현재 2층 열람실 23번 자리에 있습니다.', 4, 142, 7, 'ACTIVE', 'FREE', NOW() - INTERVAL 6 DAY, NOW() - INTERVAL 6 DAY);
INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at)
VALUES ('열람실 냉방 온도 어떠세요?', '요즘 열람실이 좀 추운 것 같은데 저만 그런가요? 담요 가져오시는 분들도 보이던데...', 1, 290, 52, 'ACTIVE', 'FREE', NOW() - INTERVAL 9 DAY, NOW() - INTERVAL 9 DAY);
-- 질문답변 (QNA) - 4개
INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at)
VALUES ('대출 중인 책 미리 예약하는 방법', '현재 대출 중인 책을 반납 즉시 빌리고 싶은데 예약하는 방법이 어떻게 되나요?', 1, 380, 14, 'ACTIVE', 'QNA', NOW() - INTERVAL 5 DAY, NOW() - INTERVAL 5 DAY);
INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at)
VALUES ('연체료 납부 방법 문의', '실수로 책을 연체했는데 연체료는 어디서 어떻게 납부하면 되나요?', 2, 410, 8, 'ACTIVE', 'QNA', NOW() - INTERVAL 7 DAY, NOW() - INTERVAL 7 DAY);
INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at)
VALUES ('프린터 사용 방법 알려주세요', '모바일에서 파일 전송해서 프린트하는 방법이 궁금합니다. 자세한 설명 부탁드려요.', 3, 285, 22, 'ACTIVE', 'QNA', NOW() - INTERVAL 10 DAY, NOW() - INTERVAL 10 DAY);
INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at)
VALUES ('책 손상 시 보상 규정', '빌린 책에 실수로 커피를 쏟았는데 어떻게 해야 하나요? 보상 규정이 있나요?', 4, 520, 16, 'ACTIVE', 'QNA', NOW() - INTERVAL 14 DAY, NOW() - INTERVAL 14 DAY);
-- 도서 리뷰 (REVIEW) - 3개
INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at)
VALUES ('아몬드 - 손원평 작가의 섬세한 감정 묘사', '타인의 감정을 느끼지 못하는 주인공의 성장 이야기가 가슴 깊이 와닿았습니다. 올해 읽은 책 중 최고였어요.', 1, 650, 85, 'ACTIVE', 'REVIEW', NOW() - INTERVAL 11 DAY, NOW() - INTERVAL 11 DAY);
INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at)
VALUES ('파친코 - 재미교포의 대서사시', '8대에 걸친 한국인 가족의 일본 이민 이야기. 역사와 인간 드라마가 완벽하게 어우러진 걸작입니다.', 2, 720, 98, 'ACTIVE', 'REVIEW', NOW() - INTERVAL 13 DAY, NOW() - INTERVAL 13 DAY);
INSERT INTO board (title, content, author_id, view_count, like_count, status, category, created_at, updated_at)
VALUES ('돈의 심리학 - 재테크 필독서', '투자 심리에 대한 명쾌한 분석과 실용적인 조언이 담겨있습니다. 주식 투자 전에 꼭 읽어보세요.', 3, 580, 76, 'ACTIVE', 'REVIEW', NOW() - INTERVAL 15 DAY, NOW() - INTERVAL 15 DAY);











