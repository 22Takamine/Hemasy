-- 最終 消費カロリー出せます
select T1.lists_and_records_id ID
, T1.value1 運動の種類
, T1.value2 Mets
, T1.value3 運動時間\/分
, T1.value3/60 運動時間\/時間
, T1.create_date 日付
, T1.user_id ユーザーID
, T2.value2 体重
, T1.value2*(T1.value3/60)*T2.value2*1.05 消費エネルギー量
from lists_and_records T1
JOIN lists_and_records T2
ON T1.user_id = T2.user_id 
AND T1.create_date = T2.create_date
AND T1.category = 2 
AND T2.category = 2
AND T1.type = 2
AND T2.type = 5;

-- WHERE T1.user_id = ?
;

-- 運動記録

select * from 
lists_and_records

WHERE category = 2
AND type = 2;

-- 体重
select * from 
lists_and_records

WHERE category = 2
AND type = 5;

-- 
select T1.lists_and_records_id ID, T1.value1 運動の種類, T1.value2 Mets, T1.value3 運動時間, T1.create_date 日付, T1.user_id ユーザーID
from
lists_and_records AS T1
JOIN lists_and_records AS T2 
ON T1.user_id = T2.user_id 
AND T1.create_date = T2.create_date

WHERE T1.category = 2
And T1.type = 2
;
