-- show global variables like "port";


create table if not exists pressure_heartrate_list(
	date datetime not null,
    patient_id char(20) not null,
    highpressure int(10) not null,
    lowpressure int(10) not null,
    heartrate int(10) not null,
    primary key(date, patient_id),
	constraint fk_phl
	foreign key(patient_id)
	references patient_list(patient_id)
);