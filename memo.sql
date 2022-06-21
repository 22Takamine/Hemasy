-- 最終 消費カロリー出せます
select T1.lists_and_records_id ID
, T1.value1 運動の種類
, T1.value2 Mets
, T1.value3 運動時間
, T1.value3/60 運動時間
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

-- 運動記録

select * from 
lists_and_records

WHERE category = 2
AND type = 2;

-- 体重
select * from 
lists_and_records

-- メインページで使う　統計に遷移する際に送るデータをとるsql
select  sum(value2*value3) calorie
, create_date AS day
from lists_and_records  
where category = 2 
and type = 1 
group by create_date
ORDER by day;
-- 月でくくって日ごとの消費カロリーを計算します
select create_date AS day
, sum(value2*value3) 摂取カロリー
 from lists_and_records 
 where left(to_char(create_date, 'YYYY-MM'), 7) = left(cast('2022-01-01' as date) + cast( '5 months' as INTERVAL ), 7)
 AND user_id = 1
 AND category = 2
 AND type = 1
 group by create_date
 ORDER BY day;

-- 年でくくって月ごとの消費カロリー計算
SELECT to_char(create_date, 'YYYY-MM') AS month,
    sum(value2 * value3) 摂取カロリー
FROM lists_and_records
where category =2
AND type = 1
AND user_id = 1
AND left(to_char(create_date, 'YYYY-MM'), 4) = left('2022-04-23', 4)
GROUP BY month
ORDER BY month;

-- 翌年のYYYYが出てくる
left(to_char(cast('2022-01-01' as date) + cast( '1 year' as INTERVAL ), 'YYYY-MM'), 4)

-- 先月のYYYY-MMが出てくる
left(to_char(cast('2022-01-01' as date) + cast( '-1 month' as INTERVAL ), 'YYYY-MM'), 7)

--もっていない称号を見る。
SELECT T1.achievement_id, T1.achievement_name, T2.user_id
FROM achievement T1
LEFT JOIN achievement_unlock T2
ON T1.achievement_id = T2.achievement_id
AND T2.user_id = 1
where user_id is null;

-- BMI算出
select T1.user_name, T1.height/100 身長, T2.value2, T2.value2/((T1.height/100)*(T1.height/100)) BMI , T2. create_date 日付
from users T1
Join lists_and_records T2
ON T1.user_id = T2.user_id
AND T2.category = 2
AND T2.type = 5

where T1.user_id =1
order by T2.create_date desc;

