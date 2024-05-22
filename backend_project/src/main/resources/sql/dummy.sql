-- 외래키 제약 조건을 다시 활성화
SET FOREIGN_KEY_CHECKS = 1;

-- 새로운 데이터 삽입
INSERT INTO `USERS` (`id`, `password`, `email`, `name`, `nickname`, `age`, `phone_number`, `address`)
VALUES ('prao', 'pass', 'prao@gmail.com', '박창호', 'prao96', 27, '010-1234-5678', '부산광역시 부산진구 전포대로155'),
       ('admin', 'pass', 'admin@gmail.com', '관리자', '관리자', 25, '010-2345-6789', '대전광역시 유성구 봉명동'),
       ('hyun', 'pass', 'hyun@gmail.com', '이수현', 'hyunny', 26, '010-5678-1234', '대구광역시 유성구 봉명동'),
       ('ran', 'pass', 'ran@gmail.com', '랜덤', 'ran', 26, '010-5678-1234', '대구광역시 유성구 봉명동'),
       ('gujauk', 'pass', 'gujauk@gmail.com', '구자웈', 'gujauk', 26, '010-5678-1234', '대구광역시 유성구 봉명동'),
       ('byeba', 'pass', 'byeba@gmail.com', 'byeba', 'byeba', 26, '010-5678-1234', '대구광역시 유성구 봉명동'),
       ('non', 'pass', 'non@gmail.com', 'non', 'non', 26, '010-5678-1234', '대구광역시 유성구 봉명동'),
       ('pubao', 'pass', 'pubao@gmail.com', '탁바오', 'taggi', 26, '010-5678-1234', '대구광역시 유성구 봉명동');

-- TEAM 테이블 더미 데이터 생성
INSERT INTO `TEAM` (`name`)
VALUES ('이언츠'),
       ('이온즈');

-- PLAYERS 테이블 더미 데이터 생성
INSERT INTO `PLAYERS` (`team_id`, `name`, `age`, `back_number`, `position`)
VALUES (1, '황성빈', 26, 0, 'LF'),
       (1, '윤동희', 20, 91, 'CF'),
       (1, '고승민', 23, 65, '2B'),
       (1, '레이예스', 29, 29, 'RF'),
       (1, '한동희', 24, 25, 'DH'),
       (1, '나승엽', 22, 51, '1B'),
       (1, '박승욱', 31, 53, '3B'),
       (1, '유강남', 31, 27, 'C'),
       (1, '이학주', 33, 7, 'SS'),
       (1, '윌커슨', 34, 46, 'SP'),
       (1, '정보근', 24, 42, 'C'),
       (1, '손성빈', 22, 00, 'C'),
       (1, '정훈', 36, 9, '1B'),
       (1, '최항', 30, 14, '1B'),
       (1, '손호영', 29, 33, '2B'),
       (1, '노진혁', 52, 34, 'SS'),
       (1, '이주찬', 25, 63, '2B'),
       (1, '김민석', 20, 2, 'CF'),
       (1, '전준우', 38, 8, 'LF'),
       (1, '이정훈', 29, 48, '48'),

       (2, '구자욱', 26, 5, 'LF'),
       (2, '김헌곤', 20, 32, 'RF'),
       (2, '맥키넌', 23, 24, '1B'),
       (2, '김영웅', 29, 30, 'DH'),
       (2, '류지혁', 24, 16, '2B'),
       (2, '이재현', 22, 7, 'SS'),
       (2, '강민호', 31, 47, 'C'),
       (2, '전병우', 31, 34, '3B'),
       (2, '김지찬', 33, 58, 'CF'),
       (2, '레예스', 34, 43, 'SP'),
       (2, '원태인', 26, 18, 'SP'),
       (2, '이성규', 27, 31, 'SP'),
       (2, '강백호', 25, 50, 'IB'),
       (2, '최민호', 22, 18, '1B'),
       (2, '최원준', 33, 53, 'SP'),
       (2, '김재환', 21, 4, '3B'),
       (2, '이호성', 21, 55, 'SP'),
       (2, '코너', 34, 52, 'SP'),
       (2, '이재원', 33, 8, 'RF'),
       (2, '최원준', 32, 53, 'SP');


-- COMMUNITY_BOARD 테이블 더미 데이터 생성
INSERT INTO `COMMUNITY_BOARD` (`team_id`, `user_id`, `title`, `content`)
VALUES (1, 'admin', '그들은 올라갈 힘을 비축하고 있다', '롯데는 이번 시즌 5등으로 마무리할 것이다. 한화는 까불지 마라.'),
       (2, 'admin', '어짜피 내려올 거 얼른 내려와', '거기 어울리는 자리 아닌 거 알잖아. 사람이 몸에 맞는 옷을 입어야해. 너넨 8등이 어울려.'),
       (1, 'hyun', '이번엔 우승할 수 있을까?', '올해 삼성은 강력한 전력을 자랑하지만, 과연 우승까지 갈 수 있을지 궁금하네요.'),
       (1, 'admin', '언제 터지나', '올해 타선이 너무 부진한 것 같아요. 언제쯤 터질까요?'),
       (1, 'hyun', '불펜이 너무 불안해', '불펜이 자꾸 경기 끝내주질 못하네요. 불안합니다.'),
       (1, 'ran',  '이번 시즌 힘들어 보인다', '솔직히 이번 시즌 우승은 무리 아닐까요? 다른 팀들 너무 강해요.'),
       (1, 'gujauk', '젊은 선수들에 기대한다', '젊은 선수들이 좀 더 분발해줘야 할 때인 것 같습니다.'),
       (1, 'byeba', '감독의 전략은?', '감독님 이번 시즌 전략이 뭔가요? 너무 답답한 경기 운영인 듯.'),
       (1, 'non',  '삼성팬으로서 너무 답답하네요', '매번 기대하게 만들고 실망시키고... 힘듭니다.'),
       (1, 'pubao', '과연 플레이오프 갈 수 있을까?', '지금 경기력으로는 플레이오프 진출도 불투명해 보입니다.'),
       (1, 'prao', '언제쯤 반등할까?', '지금 이 분위기 계속 가면 답이 없을 것 같은데요.'),
       (1, 'hyun', '수비 문제 어떻게 해결할까', '수비에서 자꾸 실수가 나오는데, 해결책이 뭔가요?'),
       (1, 'non', '올 시즌 MVP는 누구?', '올해 삼성에서 가장 잘하는 선수는 누구라고 생각하세요?'),
       (1, 'pubao', '또 졌네요', '오늘 경기 또 졌네요. 정말 실망스럽습니다.'),
       (1, 'hyun', '다음 시즌을 기약해야 할 듯', '올해는 포기하고 다음 시즌을 준비해야 할 것 같습니다.'),
       (1, 'byeba', '감독 교체가 답인가요?', '이러다 감독 교체해야 하는 건 아닐지 걱정입니다.'),
       (1, 'ran', '타격 코치 좀 바꿔주세요', '타격이 너무 안 되네요. 코치진 교체가 필요해 보입니다.'),
       (1, 'ran', '올해 신인 선수 어때요?', '올해 신인 선수들은 어떤가요? 기대할 만한가요?'),
       (1, 'hyun', '해외 원정 경기 성적은?', '이번 해외 원정 경기 성적이 궁금합니다. 잘하고 있나요?'),
       (1, 'ran', '홈런이 너무 부족해', '홈런이 너무 안 나오네요. 해결책이 뭔가요?'),
       (1, 'hyun', '선발 투수들 믿어도 될까요?', '선발 투수들이 너무 불안정한 것 같아요. 믿을 수 있을까요?'),
       (1, 'byeba', '이번 시즌 성적 예상', '여러분 이번 시즌 성적 어떻게 예상하시나요?'),
       (1, 'hyun', '주전 선수들 부상 문제', '주전 선수들이 자꾸 부상을 당하는데, 대체선수도 없고... 걱정이네요.'),
       (1, 'pubao', '팬으로서 너무 힘듭니다', '매 시즌 실망만 안겨주는 것 같아 정말 힘드네요.'),
       (1, 'byeba', '이번 시즌 기대해도 될까요?', '올해는 정말 기대해도 되는 걸까요?'),
       (1, 'hyun', '타선에 활력 좀', '타선에 활력이 너무 없네요. 선수들 좀 더 힘내주세요!'),
       (1, 'hyun', '수비 실책 좀 줄이자', '수비 실책이 너무 많아요. 기본부터 다시 다져야 할 것 같아요.'),
       (1, 'hyun', '팬 서비스 좀 신경 써주세요', '팬 서비스가 너무 부족합니다. 신경 좀 써주세요.'),
       (1, 'hyun', '올해 우승 가능할까요?', '솔직히 올해 우승 가능할까요? 다른 팀들 너무 강해요.'),
       (1, 'hyun', '응원합니다!', '그래도 끝까지 포기하지 않고 응원합니다. 화이팅!'),
       (1, 'hyun', '이번 시즌 목표는?', '이번 시즌 목표가 무엇인가요? 현실적인 목표 설정이 필요할 듯.'),
       (1, 'gujauk', '선수 교체가 필요해', '몇몇 선수는 정말 교체가 필요해 보입니다.'),
       (1, 'hyun', '전력 보강이 시급합니다', '전력 보강이 정말 시급합니다. 이대로는 어렵겠어요.'),
       (1, 'hyun', '끝까지 포기하지 말자', '어려워도 끝까지 포기하지 말고 힘내줬으면 좋겠어요.'),
       (1, 'hyun', '감독님의 전략이 궁금해요', '감독님의 전략이 정말 궁금합니다. 잘 이해가 안 가네요.'),
       (1, 'hyun', '이번 시즌 타선 어떨까요?', '올해 타선이 좀 불안한데, 어떻게 보시나요?'),
       (1, 'pubao', '9회말에 강해지자', '9회말에 자꾸 무너지는 것 같아요. 끝까지 집중해야 합니다.'),
       (1, 'pubao', '감독의 용병술이 아쉬워', '감독의 용병술이 조금 아쉽네요. 좀 더 과감한 결정이 필요할 듯.'),
       (1, 'hyun', '올해 우승 한 번 가보자!', '올해 정말 우승 한 번 가보자! 힘내자!'),
       (1, 'hyun', '이번 시즌 MVP는 누구?', '올해 삼성에서 가장 잘하는 선수는 누구라고 생각하세요?'),
       (1, 'hyun', '중위권 안착 가능할까?', '이번 시즌 중위권이라도 안착할 수 있을까요?'),
       (1, 'hyun', '부상자 관리 좀 잘하자', '부상자 관리 좀 잘해줬으면 좋겠어요. 자꾸 주전이 빠지면 답이 없어요.'),
       (1, 'gujauk', '경기력 좀 더 높이자', '경기력이 자꾸 떨어지는 것 같아요. 좀 더 집중합시다.'),
       (1, 'pubao', '올해 새로운 도전', '새로운 도전을 위해 모두가 힘내줬으면 좋겠어요.'),
       (1, 'gujauk', '선수들 화이팅!', '수들 모두 화이팅! 끝까지 포기하지 말자.'),
       (1, 'hyun', '수비가 문제네요', '수비가 너무 불안합니다. 이대로 괜찮을까요?'),
       (1, 'hyun', '타격 부진 해결책은?', '타격 부진이 계속되는데, 해결책이 뭔가요?'),
       (1, 'hyun', '지금이라도 전략 바꿔야', '지금이라도 전략을 바꿔야 할 것 같아요. 너무 답답합니다.'),
       (1, 'non', '올 시즌 우승 가자!', '올해는 꼭 우승 가봅시다! 할 수 있어요!'),
       (1, 'pubao', '타격감 살아나자', '타격감 좀 더 살아났으면 좋겠어요.'),
       (1, 'pubao', '주전 선수들 믿어요', '주전 선수들을 믿고 응원합니다. 힘내주세요!'),
       (1, 'hyun', '이번 시즌 화이팅!', '이번 시즌 끝까지 화이팅합시다! 모두 힘내요!'),
       (2, 'pubao', '이번 시즌은 다를까?', '올해는 롯데가 좀 다르게 보이네요. 과연 잘 할 수 있을까요?'),
       (2, 'prao', '또 실망시키지 말아줘', '올해는 제발 실망 좀 안 시켰으면 좋겠어요.'),
       (2, 'non', '새로운 스타 탄생?', '이번 시즌에 롯데에서 새로운 스타가 나올까요?'),
       (2, 'pubao', '불펜 강화가 필요해', '불펜이 너무 불안합니다. 강화가 시급해요.'),
       (2, 'prao', '타격감 너무 좋네요', '이번 시즌 타격감이 정말 좋습니다. 기대돼요!'),
       (2, 'non', '수비 실책 줄이자', '수비 실책이 너무 많습니다. 기본에 충실해야 해요.'),
       (2, 'pubao', '이번엔 우승할 수 있을까?', '올해는 정말 우승할 수 있을까요?'),
       (2, 'prao', '팬 서비스 좀 신경 써주세요', '팬 서비스가 너무 부족해요. 신경 좀 써주세요.'),
       (2, 'non', '감독의 전략은?', '감독님, 이번 시즌 전략이 뭐죠? 궁금하네요.'),
       (2, 'pubao', '젊은 선수들의 활약', '젊은 선수들이 정말 잘해주고 있습니다. 기대됩니다.'),
       (2, 'prao', '베테랑들의 힘', '베테랑 선수들의 활약이 정말 대단합니다.'),
       (2, 'non', '중위권 안착 가능할까?', '이번 시즌 중위권 안착이라도 가능할까요?'),
       (2, 'pubao', '올 시즌 목표는?', '올 시즌 롯데의 목표가 뭔가요? 궁금하네요.'),
       (2, 'prao', '주전 선수들 부상 문제', '주전 선수들이 자꾸 부상당해서 걱정입니다.'),
       (2, 'non', '팬으로서 힘듭니다', '매 시즌 실망만 안겨줘서 정말 힘듭니다.'),
       (2, 'pubao', '수비 실책 좀 줄이자', '수비 실책을 좀 줄여야 할 것 같아요.'),
       (2, 'prao', '이번 시즌 화이팅!', '이번 시즌 끝까지 화이팅합시다! 힘내자' ),
       (2, 'non', '타선의 힘', '타선이 정말 강력해졌습니다. 이번 시즌 기대돼요.'),
       (2, 'pubao', '경기력 좀 더 높이자', '경기력이 자꾸 떨어지는 것 같아요. 좀 더 집중합시다.'),
       (2, 'prao', '체력 관리의 중요성', '체력 관리를 잘해야 시즌 내내 좋은 성적을 유지할 수 있어요.'),
       (2, 'non', '새로운 도전', '새로운 도전을 위해 모두가 힘내줬으면 좋겠어요.'),
       (2, 'pubao', '끝까지 포기하지 말자', '어려워도 끝까지 포기하지 말고 힘내줬으면 좋겠어요.'),
       (2, 'prao', '감독님의 리더십', '감독님의 리더십 아래에서 좋은 성과를 내고 있습니다.'),
       (2, 'non', '선수 교체가 필요해', '몇몇 선수는 교체가 필요해 보입니다.'),
       (2, 'pubao', '전력 보강이 시급합니다', '전력 보강이 시급합니다. 이대로는 어렵겠어요.'),
       (2, 'prao', '응원합니다!', '그래도 끝까지 포기하지 않고 응원합니다. 이팅!'),
       (2, 'non', '타격 부진 해결책은?', '타격 부진이 계속되는데, 해결책이 뭔가요?'),
       (2, 'pubao', '수비가 문제네요', '수비가 너무 불안합니다. 이대로 괜찮을까요?'),
       (2, 'prao', '주전 선수들 믿어요', '주전 선수들을 믿고 응원합니다. 힘내주세요!'),
       (2, 'non', '타격감 살아나자', '타격감 좀 더 살아났으면 좋겠어요.'),
       (2, 'pubao', '부상자 관리 좀 잘하자', '부상자 관리 좀 잘해줬으면 좋겠어요. 주전이 자꾸 빠지면 답이 없어요.'),
       (2, 'prao', '경기력 좀 더 높이자', '경기력이 자꾸 떨어지는 것 같아요. 좀 더 집중합시다.'),
       (2, 'non', '이번 시즌 목표는?', '이번 시즌 롯데의 목표가 뭔가요? 현실적인 목표 설정이 필요할 듯.'),
       (2, 'pubao', '새로운 도전 시작!', '새로운 도전을 위해 모두가 힘내줬으면 좋겠어요.'),
       (2, 'prao', '올해 우승 가능할까요?', '솔직히 올해 우승 가능할까요? 다른 팀들 너무 강해요.'),
       (2, 'non', '수비 실책 줄이자', '수비 실책이 너무 많습니다. 기본에 충실해야 해요.'),
       (2, 'pubao', '팬으로서 힘듭니다', '매 시즌 실망만 안겨줘서 정말 힘듭니다.'),
       (2, 'prao', '타선의 힘', '타선이 정말 강력해졌습니다. 이번 시즌 기대돼요.'),
       (2, 'non', '감독님의 전략은?', '감독님, 이번 시즌 전략이 뭐죠? 궁금하네요.'),
       (2, 'pubao', '체력 관리의 중요성', '체력 관리를 잘해야 시즌 내내 좋은 성적을 유지할 수 있어요.'),
       (2, 'prao', '젊은 선수들의 활약', '젊은 선수들이 정말 잘해주고 있습니다. 기대됩니다.'),
       (2, 'non', '경기력 좀 더 높이자', '경기력이 자꾸 떨어지는 것 같아요. 좀 더 집중합시다.'),
       (2, 'pubao', '전력 보강이 시급합니다', '전력 보강이 시급합니다. 이대로는 어렵겠어요.'),
       (2, 'prao', '이번 시즌 화이팅!', '이번 시즌 끝까지 화이팅합시다! 힘내자' ),
       (2, 'non', '응원합니다!', '그래도 끝까지 포기하지 않고 응원합니다. 이팅!'),
       (2, 'pubao', '팬 서비스 좀 신경 써주세요', '팬 서비스가 너무 부족해요. 신경 좀 써주세요.'),
       (2, 'prao', '이번엔 우승할 수 있을까?', '올해는 정말 우승할 수 있을까요?'),
       (2, 'non', '불펜 강화가 필요해', '불펜이 너무 불안합니다. 강화가 시급해요.'),
       (2, 'pubao', '새로운 스타 탄생?', '이번 시즌에 롯데에서 새로운 스타가 나올까요?'),
       (2, 'prao', '또 실망시키지 말아줘', '올해는 제발 실망 좀 안 시켰으면 좋겠어요.'),
       (2, 'non', '이번 시즌은 다를까?', '올해는 롯데가 좀 다르게 보이네요. 과연 잘 할 수 있을까요?');


-- COMMUNITY_BOARD_COMMENT 테이블 더미 데이터 생성
INSERT INTO `COMMUNITY_BOARD_COMMENT` (`community_board_id`, `user_id`, `content`)
VALUES (1, 'admin', '마 ! 붓 싼 아니가 ~'),
       (2, 'admin', '샘송은 뭐;;'),
       (99, 'hyun', '정말 이해가 안 되는 경기였어요.'),
       (99, 'prao', '그러니까요, 답답하네요.'),
       (99, 'non', '그래도 끝까지 응원해야죠.'),
       (99, 'pubao', '감독의 전략이 아쉽네요.'),
       (99, 'ran', '선수들 좀 더 힘내줬으면 좋겠어요.'),
       (99, 'hyun', '올해는 좀 달랐으면...'),
       (99, 'prao', '내년에는 좀 더 잘할 수 있겠죠.'),
       (99, 'non', '이번 시즌은 진짜 다르네요.'),
       (99, 'pubao', '선수들 너무 잘하고 있어요!'),
       (99, 'ran', '감독님 최고!'),
       (99, 'hyun', '우승 가자!'),
       (99, 'prao', '응원합니다!'),
       (45, 'non', '오늘 경기 정말 멋졌어요.'),
       (45, 'pubao', '다음 경기도 기대됩니다.'),
       (45, 'ran', '수비 좀 더 잘했으면 좋겠어요.'),
       (45, 'hyun', '타선도 힘내길.'),
       (45, 'prao', '모두 응원합시다.'),
       (45, 'non', '감독님 믿고 갑시다'),
       (45, 'ran', '수비 좀 더 잘했으면 좋겠어요.'),
       (45, 'hyun', '타선도 힘내길.'),
       (45, 'prao', '모두 응원합시다.'),
       (45, 'non', '감독님 믿고 갑시다.'),
       (48, 'pubao', '이번 시즌 진짜 기대돼요.'),
       (48, 'ran', '롯데 화이팅!'),
       (48, 'hyun', '우승 가자!'),
       (48, 'prao', '경기력이 점점 좋아지고 있어요.'),
       (48, 'non', '오늘 경기 멋졌습니다.'),
       (48, 'pubao', '다음 경기도 이길 수 있길.'),
       (48, 'ran', '선수들 모두 화이팅!'),
       (48, 'hyun', '감독님 리더십이 빛납니다.'),
       (48, 'prao', '수비도 점점 나아지고 있네요.'),
       (48, 'non', '팬 서비스도 좋았어요.'),
       (98, 'pubao', '이번 시즌 기대 많이 했는데요.'),
       (98, 'ran', '선수들 정말 잘해주고 있어요.'),
       (98, 'hyun', '타격감이 살아나고 있네요.'),
       (98, 'prao', '마무리도 잘했으면 좋겠어요.'),
       (98, 'non', '감독님, 화이팅입니다.'),
       (98, 'pubao', '모두 응원해요!'),
       (98, 'ran', '수비 실책만 줄이면 완벽합니다.'),
       (97, 'hyun', '롯데 팬으로서 정말 기쁩니다.'),
       (97, 'prao', '오늘 경기 정말 멋졌어요.'),
       (97, 'non', '다음 경기에도 이기길!'),
       (97, 'pubao', '선수들 체력 관리도 중요해요.'),
       (97, 'ran', '응원하러 경기장 가야겠어요.'),
       (97, 'hyun', '타선이 정말 대단해요.'),
       (97, 'prao', '수비도 좋아지고 있네요.'),
       (97, 'non', '우승까지 가보자!'),
       (50, 'pubao', '감독님 믿습니다.'),
       (50, 'ran', '선수들 모두 힘내주세요.'),
       (50, 'hyun', '이번 시즌 진짜 기대돼요.'),
       (50, 'prao', '모두 응원합시다!'),
       (50, 'non', '오늘도 이겼으면 좋겠어요.'),
       (50, 'pubao', '수비 실수만 없었으면...'),
       (50, 'ran', '올해는 우승 가자!'),
       (50, 'hyun', '타격감이 좋아서 다행입니다.'),
       (50, 'prao', '선수들 모두 잘하고 있어요.'),
       (46, 'non', '팬 서비스도 좋네요.'),
       (46, 'pubao', '응원합니다!'),
       (46, 'ran', '오늘 경기 정말 기대돼요.'),
       (46, 'hyun', '감독님 화이팅!'),
       (46, 'prao', '롯데의 힘을 보여줍시다.'),
       (46, 'non', '모두 화이팅!'),
       (46, 'pubao', '이번 시즌은 다릅니다.'),
       (46, 'ran', '경기력 점점 좋아지고 있네요.'),
       (46, 'hyun', '타선이 잘 터져서 기쁩니다.'),
       (46, 'prao', '수비도 잘했으면 좋겠어요.'),
       (46, 'non', '다음 경기 기대돼요.'),
       (94, 'pubao', '롯데 정말 대단합니다.'),
       (94, 'ran', '오늘 경기 멋졌어요.'),
       (94, 'hyun', '선수들 모두 힘내세요.'),
       (94, 'prao', '우승까지 갑시다!'),
       (94, 'non', '응원합니다!'),
       (94, 'pubao', '감독님 믿고 갑시다.'),
       (94, 'ran', '팬 서비스도 좋았습니다.'),
       (94, 'hyun', '타격감 살아나고 있네요.'),
       (5, 'prao', '수비도 좋아졌으면 좋겠어요.'),
       (5, 'non', '선수들 체력 관리도 중요해요.'),
       (5, 'pubao', '모두 응원합시다!'),
       (5, 'ran', '경기력 점점 좋아지고 있습니다.'),
       (5, 'hyun', '오늘 경기 기대돼요.'),
       (5, 'prao', '롯데 화이팅!'),
       (5, 'non', '감독님 전략 좋았습니다.'),
       (5, 'pubao', '선수들 모두 잘했어요.'),
       (5, 'ran', '이번 시즌 우승 가자!'),
       (90, 'hyun', '모두 응원합시다.'),
       (90, 'prao', '다음 경기 기대됩니다.'),
       (90, 'non', '경기력 좋았습니다.'),
       (90, 'pubao', '응원합니다!'),
       (90, 'ran', '오늘 경기 멋졌어요.'),
       (90, 'hyun', '선수들 모두 힘내세요.'),
       (90, 'prao', '우승까지 갑시다!'),
       (90, 'non', '응원합니다!'),
       (90, 'pubao', '감독님 믿고 갑시다.'),
       (90, 'ran', '팬 서비스도 좋았습니다.'),
       (51, 'hyun', '타격감 살아나고 있네요.'),
       (51, 'prao', '수비도 좋아졌으면 좋겠어요.'),
       (51, 'non', '선수들 체력 관리도 중요해요.'),
       (51, 'pubao', '모두 응원합시다!'),
       (51, 'ran', '경기력 점점 좋아지고 있습니다.'),
       (51, 'hyun', '오늘 경기 기대돼요.'),
       (51, 'prao', '롯데 화이팅!'),
       (51, 'non', '감독님 전략 좋았습니다.'),
       (18, 'pubao', '선수들 모두 잘했어요.'),
       (18, 'ran', '이번 시즌 우승 가자!'),
       (18, 'hyun', '모두 응원합시다.'),
       (18, 'prao', '다음 경기 기대됩니다.'),
       (18, 'non', '경기력 좋았습니다.'),
       (18, 'pubao', '응원합니다!'),
       (18, 'ran', '오늘 경기 멋졌어요.'),
       (18, 'hyun', '선수들 모두 힘내세요.'),
       (18, 'prao', '우승까지 갑시다!'),
       (18, 'non', '응원합니다!'),
       (18, 'pubao', '감독님 믿고 갑시다.'),
       (100, 'ran', '팬 서비스도 좋았습니다.'),
       (100, 'hyun', '타격감 살아나고 있네요.'),
       (100, 'prao', '수비도 좋아졌으면 좋겠어요.'),
       (100, 'non', '선수들 체력 관리도 중요해요.'),
       (100, 'pubao', '모두 응원합시다!'),
       (100, 'ran', '경기력 점점 좋아지고 있습니다.'),
       (100, 'hyun', '오늘 경기 기대돼요.'),
       (100, 'prao', '롯데 화이팅!'),
       (100, 'non', '감독님 전략 좋았습니다.'),
       (100, 'pubao', '선수들 모두 잘했어요.'),
       (101, 'ran', '이번 시즌 우승 가자!'),
       (101, 'hyun', '모두 응원합시다.'),
       (101, 'prao', '다음 경기 기대됩니다.'),
       (101, 'non', '경기력 좋았습니다.'),
       (101, 'pubao', '응원합니다!'),
       (101, 'ran', '오늘 경기 멋졌어요.'),
       (101, 'hyun', '선수들 모두 힘내세요.'),
       (101, 'prao', '우승까지 갑시다!'),
       (102, 'non', '응원합니다!'),
       (102, 'pubao', '감독님 믿고 갑시다.'),
       (102, 'ran', '팬 서비스도 좋았습니다.'),
       (102, 'hyun', '타격감 살아나고 있네요.'),
       (102, 'prao', '수비도 좋아졌으면 좋겠어요.'),
       (102, 'non', '선수들 체력 관리도 중요해요.'),
       (102, 'pubao', '모두 응원합시다!'),
       (102, 'ran', '경기력 점점 좋아지고 있습니다.');