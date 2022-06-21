DROP DATABASE hemasy_db;
/* データベース作成 */
CREATE DATABASE hemasy_db;

DROP TABLE users;
create table users(
user_id SERIAL PRIMARY KEY,
user_name varchar(255) Not Null Unique,
mail varchar(255) Not Null Unique,
password varchar(255) Not Null,
sex integer Not Null,
birth date Not Null,
height decimal Not Null,
created_at date Not Null,
goal_exercise_time integer,
goal_calorie integer,
rank_flag integer Not Null,
alcohol_flag integer Not Null,
smoke_flag integer Not Null,
role_id integer Not Null,
achievement_id integer references achievement(achievement_id),
achievement_flag integer
);

DROP TABLE units;
create table units(
units_id SERIAL PRIMARY KEY,
category varchar(255)
);

DROP TABLE categories;
create table categories(
categories_id SERIAL PRIMARY KEY,
unit_name varchar(255)
);

DROP TABLE type;
create table type(
type_id SERIAL PRIMARY KEY,
type varchar(255),
type_unit1 integer references units(units_id),
type_unit2 integer references units(units_id),
type_unit3 integer references units(units_id),
type_unit4 integer references units(units_id),
type_unit5 integer references units(units_id),
type_unit6 integer references units(units_id),
type_unit7 integer references units(units_id),
type_unit8 integer references units(units_id)
);

DROP TABLE lists_and_records;
create table lists_and_records(
lists_and_records_id SERIAL PRIMARY KEY,
category integer references categories(categories_id),
type integer references type(type_id),
value1 varchar(255),
value2 decimal,
value3 decimal,
value4 decimal,
value5 decimal,
value6 decimal,
value7 decimal,
value8 decimal,
create_date date,
user_id integer references users(user_id)
);

DROP TABLE bmi_display;
create table bmi_display(
bmi_id SERIAL PRIMARY KEY,
lower_limit decimal,
upper_limit decimal,
bmi_name varchar(255),
img_pass varchar(255)
);

DROP TABLE color;
create table color(
color_id SERIAL PRIMARY KEY,
color_code varchar(255),
color_level integer,
genre integer UNIQUE
);

DROP TABLE infomation;
create table infomation(
information_id SERIAL PRIMARY KEY,
user_id integer references users(user_id),
title varchar(255),
contents varchar(5000),
send_at date,
read_flag integer,
done_flag integer
);

DROP TABLE achievement;
create table achievement(
achievement_id SERIAL PRIMARY KEY,
achievement_name varchar(255),
requirement_to_get varchar(255),
condition_formula integer,
score integer,
major_divisions integer,
sub_divisions integer
);

DROP TABLE achievement_unlock;
create table achievement_unlock(
achievement_unlock_id SERIAL PRIMARY KEY,
achievement_id integer references achievement(achievement_id),
user_id integer references users(user_id)
);

DROP TABLE message;
create table message(
message_id SERIAL PRIMARY KEY,
message_text varchar(255),
message_date date,
user_id integer references users(user_id)
);
