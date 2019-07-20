insert ignore into pressure_heartrate_list values
(
	'2019-03-21 12:00:01',
    'licanchen',
    165,
    100,
    68
),
(
	'2019-05-21 12:05:01',
    'licanchen',
    180,
    102,
    75
),
(
	'2019-05-21 22:00:01',
    'licanchen',
    200,
    120,
    100
),
(
	'2019-03-21 20:00:01',
    'liuguoyu',
    200,
    120,
    100
),
(
	'2019-09-21 12:00:01',
    'liuguoyu',
    200,
    120,
    100
),
(
	'2019-09-21 12:00:01',
    'lixiaowei',
    200,
    120,
    100
),
(
	'2019-09-21 12:00:01',
    'zhangmingyu',
    200,
    120,
    100
),
(
	'2019-09-21 12:00:01',
    'zhangnan',
    200,
    120,
    100
)




;

SELECT lowpressure FROM pressure_heartrate_list WHERE patient_id= 'licanchen';