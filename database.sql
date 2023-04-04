create table telemetry
(
	recorded_at timestamp not null default current_timestamp(),
	pm10_standard int,
	pm25_standard int,
	pm100_standard int,
	pm10_env int,
	pm25_env int,
	pm100_env int,
	particles_03um int,
	particles_05um int,
	particles_10um int,
	particles_25um int,
	temperature int,
	humidity int,
	wifi_signalstrength_p int
);

create table log
(
	recorded_at timestamp not null default current_timestamp(),
	message varchar(1024)
);


CREATE USER '***'@'192.168.1.%' IDENTIFIED BY 'xxx';
GRANT ALL PRIVILEGES ON AirQualityStation01.* TO '***'@'192.168.1.%';
FLUSH PRIVILEGES;
