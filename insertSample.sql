-- users
insert into users
(user_name, mail, password, sex, birth, height, created_at, goal_exercise_time, goal_calorie, rank_flag, alcohol_flag, smoke_flag, role_id, achievement_id, achievement_flag)
values
(--username
''
,--mail
''
,--password
''
,--sex

,--birth
''
,--height

,--created_at
''
,--goal_exercise_time

,--goal_calorie

,--rank_flag

,--alcohol_frag

,--smoke_flag

,--role_id

,--achievement_id

,--achievement_flag

);




insert into users
(user_id,user_name, mail, password, sex, birth, height, created_at, goal_exercise_time, goal_calorie, rank_flag, alcohol_flag, smoke_flag, role_id, achievement_id, achievement_flag)
values
(1, '川滿唯希', 't.kawamitsu@tc-tech.co.jp', 'kawamitsu', 0, '2001-04-23', 80, '2022-01-01', 60, 1000,0,0,0,0,1,0);
insert into users
(user_id,user_name, mail, password, sex, birth, height, created_at, goal_exercise_time, goal_calorie, rank_flag, alcohol_flag, smoke_flag, role_id, achievement_id, achievement_flag)
values
(2,'一般ユーザA', 'aSample@sample.co.jp', 'pass', 0, '2002-01-01', 50, '2022-06-20', 120, 2500,1,1,1,1,1,0);
insert into users
(user_id,user_name, mail, password, sex, birth, height, created_at, goal_exercise_time, goal_calorie, rank_flag, alcohol_flag, smoke_flag, role_id, achievement_id, achievement_flag)
values
(3,'一般ユーザB', 'bSample@sample.co.jp', 'pass', 0, '2003-01-01', 60, '2022-01-02', 150, 500,1,1,1,1,1,0);

--　achievement
insert into achievement
(achievement_name, requirement_to_get, condition_formula, score, major_divisions, sub_divisions)
values
('新人', 'HeMaSyの世界を始めて訪れた。', 0, 10, 0, 0);

-- units
insert into units values(1, '名前');
insert into units values(2, 'kCal');
insert into units values(3, '人前');
insert into units values(4, 'Mets');
insert into units values(5, '時間(h)');
insert into units values(6, '本数');
insert into units values(7, '度数');
insert into units values(8, 'ml');
insert into units values(9, '杯');
insert into units values(10, 'Kg');
insert into units values(11, '体脂肪率');

-- categories
insert into categories values(1, 'リスト');
insert into categories values(2, '記録');

-- type 
insert into type(type_id, type, type_unit1, type_unit2, type_unit3, type_unit4)
values(1, '食べ物', 1, 2,3, null);
insert into type(type_id, type, type_unit1, type_unit2, type_unit3, type_unit4)
values(2, '運動', 1, 4,5, null);
insert into type(type_id, type, type_unit1, type_unit2, type_unit3, type_unit4)
values(3, 'タバコ', null, 6, null, null);
insert into type(type_id, type, type_unit1, type_unit2, type_unit3, type_unit4)
values(4, 'アルコール', 1, 8,9, 7);
insert into type(type_id, type, type_unit1, type_unit2, type_unit3, type_unit4)
values(5, '体重', null, 10,11, null);

-- lists_and_records
insert into lists_and_records
(lists_and_records_id, category, type, value1, value2, value3, value4, value5, create_date, user_id)
values(1,1,1,'ライス', 100,1,null,null,'2022-05-15', 1);
insert into lists_and_records
(lists_and_records_id, category, type, value1, value2, value3, value4, value5, create_date, user_id)
values(2,1,1,'カレー', 500, 1,null,null,'2022-05-15', 2);
insert into lists_and_records
(lists_and_records_id, category, type, value1, value2, value3, value4, value5, create_date, user_id)
values(3,2,1,'ライス', 100,3,null,null,'2022-06-18', 1);
insert into lists_and_records
(lists_and_records_id, category, type, value1, value2, value3, value4, value5, create_date, user_id)
values(4,2,1,'カレー', 500,2,null,null,'2022-06-18', 2);
insert into lists_and_records
(lists_and_records_id, category, type, value1, value2, value3, value4, value5, create_date, user_id)
values(5,1,2,'ジョギング', 20,1,null,null,'2022-05-15', 1);
insert into lists_and_records
(lists_and_records_id, category, type, value1, value2, value3, value4, value5, create_date, user_id)
values(6,1,2,'スクワット', 40,1,null,null,'2022-05-15', 2);
insert into lists_and_records
(lists_and_records_id, category, type, value1, value2, value3, value4, value5, create_date, user_id)
values(7,2,2,'ジョギング', 20,60,null,null,'2022-06-18', 1);
insert into lists_and_records
(lists_and_records_id, category, type, value1, value2, value3, value4, value5, create_date, user_id)
values(8,2,2,'スクワット', 40,60,null,null,'2022-06-18', 2);
insert into lists_and_records
(lists_and_records_id, category, type, value1, value2, value3, value4, value5, create_date, user_id)
values(9,2,3, null, null, 12,null,null,'2022-06-18', 2);
insert into lists_and_records
(lists_and_records_id, category, type, value1, value2, value3, value4, value5, create_date, user_id)
values(10,1,4, 'ビール(ショート)', 350, 1, 5,null,'2022-05-15', 2);
insert into lists_and_records
(lists_and_records_id, category, type, value1, value2, value3, value4, value5, create_date, user_id)
values(11,1,4, 'ビール(ロング)', 500, 1, 5,null,'2022-05-15', 2);
insert into lists_and_records
(lists_and_records_id, category, type, value1, value2, value3, value4, value5, create_date, user_id)
values(12,2,4, 'ビール(ショート)', 350, 3, 5,null,'2022-05-15', 2);
insert into lists_and_records
(lists_and_records_id, category, type, value1, value2, value3, value4, value5, create_date, user_id)
values(13,1,4, 'ビール(ロング)', 500, 8, 5,null,'2022-05-15', 2);
insert into lists_and_records
(lists_and_records_id, category, type, value1, value2, value3, value4, value5, create_date, user_id)
values(14,2,5, null, 60, 23, null, null,'2022-07-01', 1);






