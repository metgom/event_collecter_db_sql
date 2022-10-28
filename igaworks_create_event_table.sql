create database event_db;
create table event_db.`order_log` (
	`order_id`	varchar(255)	not null	unique	primary key,
	`event_id`	varchar(255)	not null	unique,
	`price`		float		not null,
	`currency`	varchar(255)	not null
);

create table event_db.`event_log` (
	`event_id`	varchar(255)	not null	unique	primary key,
	`user_id`	varchar(255)	not null,
	`event`		varchar(255)	not null,
	`event_datetime`	datetime(3)	not null
);

alter table event_db.`order_log`
add constraint	foreign key (`event_id`)
references	event_db.event_log(`event_id`)
on delete cascade;
