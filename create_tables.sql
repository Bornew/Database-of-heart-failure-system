drop table if exists relationship_pat_date;
drop table if exists date_pressure_rate;

drop table if exists relationship_pat_medicine;
drop table if exists medicine_list;

drop table if exists pressure_heartrate_list;

drop table if exists patient_list;
drop table if exists doctor_list;

-- 医生表
create table if not exists doctor_list(
	name char(100) not null,
    gender bit default 1 check(gender in (1, 0)),
    doctor_id char(20) primary key,
    password varchar(12) not null,
    birthday date,
    professional_time date,
    tel char(20) not null,
    email char(100) not null
);

-- 患者表
create table if not exists patient_list(
	name char(20) not null,
    gender bit default 1 check(gender in (1, 0)),
    patient_id char(20) not null primary key,
    password varchar(12) not null,
    birthday date,
    sick_time date,
    doctor_id char(20),
    tel char(20) not null,
    email char(100) not null,
    blood_type char(1) not null,
    constraint fk_1
	foreign key(doctor_id)
	references doctor_list(doctor_id)
);


-- 药物表
create table if not exists medicine_list(
	medicine_id char(20) not null primary key,
    medicine_cat char(50) not null,
    medicine_name char(50) not null
);

-- 药物与病人关系表
create table if not exists relationship_pat_medicine(
	patient_id char(20) not null,
    medicine_id char(20) not null,
    primary key(patient_id, medicine_id),
    constraint fk_8
	foreign key(patient_id)
	references patient_list(patient_id),
    constraint fk_9
	foreign key(medicine_id)
	references medicine_list(medicine_id)
);

