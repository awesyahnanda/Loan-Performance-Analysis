# Create Database for SQL Test BNC
create database transaction_bnc;

use transaction_bnc;

show tables;

# Create table transaction_detail
create table transaction_detail(
		transaction_date date,
        user_id int primary key,
        transaction_id VARCHAR(50),
        transaction_amount int
    	);

# Create table user_info
create table user_info(
        user_id int primary key,
        user_name VARCHAR(50),
        user_type VARCHAR(50)
    	);

describe transaction_detail;
describe user_info;

# Insert data to table transaction detail
INSERT INTO transaction_detail(transaction_date, user_id, transaction_id, transaction_amount)
VALUES
('2022-09-26',630896,'LRM-123',8409952),
('2021-09-02',540885,'PAG-269',5789470),
('2021-06-14',838693,'CMA-888',8701781),
('2022-08-05',860614,'GYX-702',4875473),
('2022-11-14',861388,'DXQ-163',2555684),
('2022-04-01',332208,'BDB-345',4781370),
('2021-08-01',378317,'WND-613',9484204),
('2022-03-09',840679,'ZDC-322',375903375),
('2021-07-06',982223,'ZNQ-598',231420280),
('2022-03-10',680168,'POK-940',179074805),
('2022-02-20',487282,'HPO-928',5736544),
('2021-09-30',289815,'JSS-322',6135228),
('2022-04-21',628119,'XPR-778',5281025),
('2022-12-09',372494,'NCU-998',2650512),
('2022-04-11',729445,'WZC-768',9557900),
('2021-12-21',277676,'OEB-659',4365803),
('2021-01-28',926046,'PME-630',2878333),
('2021-03-16',572214,'NXC-494',8595848),
('2021-07-04',249040,'ZHA-318',6857503),
('2021-06-24',757120,'YNP-655',65595),
('2022-04-01',909264,'TYF-616',4486491);



# Insert data to table user_info
INSERT INTO user_info(user_id, user_name, user_type)
VALUES
(630896,'Mas Samsu','Retail'),
(540885,'Endy Alam Sutera','Retail'),
(838693,'Mas Yono','Retail'),
(860614,'Fina Drift','Retail'),
(861388,'Pempek PNS','Merchant'),
(332208,'Resto Biasa Saja','Merchant'),
(378317,'Hadir Fried Chicken','Merchant'),
(840679,'PT Berapa Berapa','Corporate'),
(982223,'PT Jengkol Abadi Jaya','Corporate'),
(680168,'Tama Moving Company','Corporate');

# Cek and Validate Data Input Results
select * from transaction_detail;
select * from user_info;

describe transaction_detail;
describe user_info;



