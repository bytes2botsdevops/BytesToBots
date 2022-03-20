-- Database Name: bbcsin_careers
-- DB Username: bbuser
-- DB Password : y4avady2a


DROP TABLE IF EXISTS user_account ;
DROP TABLE IF EXISTS user_type ;

CREATE TABLE user_type (
    id int NOT NULL AUTO_INCREMENT,
    user_type_name varchar(20) NOT NULL,
    CONSTRAINT user_type_pk PRIMARY KEY (id)
);

insert into user_type (user_type_name) 
values ("jobseeker"); 

insert into user_type (user_type_name) 
values ("admin"); 

insert into user_type (user_type_name) 
values ("hr"); 



CREATE TABLE user_account (
    id int NOT NULL AUTO_INCREMENT,
    user_type_id int NOT NULL,
    email varchar(255) NOT NULL,
    password varchar(100) NOT NULL,
    date_of_birth date NOT NULL,
    gender char(1) NOT NULL,
    is_active char(1) NOT NULL,
    contact numeric(10) NOT NULL,
    sms_notification_active char(1) NOT NULL,
    email_notification_active char(1) NOT NULL,
    user_resume mediumblob NULL,
    registration_date date NOT NULL,
    CONSTRAINT user_account_pk PRIMARY KEY (id)
);


select * from user_account where id=1;
select id from user_account where email='' and password='';
select count(*) from user_account where user_type_id=(select * from user_type where user_type_name='jobseeker');
select * from user_account registration_date between '' and '';


-- Sample Query
--insert into user_account (id,user_type_id,email,password,date_of_birth,gender,is_active,contact_int,sms_notification_active,email_notification_active,user_resume,registration_date)
--values (1, 1,"adc@gmail.com",'login',CURDATE(),'m','t',33333,'t','t',LOAD_FILE('D:\test\abc.txt'),CURDATE());

