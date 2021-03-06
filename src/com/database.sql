CREATE DATABASE IF NOT EXISTS bbcsin_consulting;

DROP TABLE IF EXISTS user_enquiry ;
DROP TABLE IF EXISTS contact;
DROP TABLE IF EXISTS business_stream ;
DROP TABLE IF EXISTS company ;
DROP TABLE IF EXISTS company_image ;
DROP TABLE IF EXISTS education_detail ;
DROP TABLE IF EXISTS experience_detail ;
DROP TABLE IF EXISTS job_location ;
DROP TABLE IF EXISTS job_post ;
DROP TABLE IF EXISTS job_post_activity ;
DROP TABLE IF EXISTS job_post_skill_set ;
DROP TABLE IF EXISTS job_type ;
DROP TABLE IF EXISTS seeker_profile ;
DROP TABLE IF EXISTS seeker_skill_set ;
DROP TABLE IF EXISTS skill_set ;
DROP TABLE IF EXISTS user_account ;
DROP TABLE IF EXISTS user_log ;
DROP TABLE IF EXISTS user_type ;

CREATE TABLE IF NOT EXISTS user_enquiry (
id INT AUTO_INCREMENT PRIMARY KEY,
fullname varchar(50),
email varchar(60),
phone NUMERIC(10),
subject varchar(150),
shortmessage varchar(500));

CREATE TABLE IF NOT EXISTS contact(
  id int not null AUTO_INCREMENT,
  name varchar(75),
  email varchar(75),
  mobile numeric(10),
  query varchar(200),
  resume MEDIUMBLOB,
  createdate DATETIME,
  PRIMARY KEY (id)
  );
  
  
-- tables
-- Table: business_stream
CREATE TABLE IF NOT EXISTS business_stream (
    id int NOT NULL,
    business_stream_name varchar(100) NOT NULL,
    CONSTRAINT business_stream_pk PRIMARY KEY (id)
);

-- Table: company
CREATE TABLE IF NOT EXISTS company (
    id int NOT NULL,
    company_name varchar(100) NOT NULL,
    profile_description varchar(1000) NOT NULL,
    business_stream_id int NOT NULL,
    establishment_date date NOT NULL,
    company_website_url varchar(500) NOT NULL,
    CONSTRAINT company_pk PRIMARY KEY (id)
);

-- Table: company_image
CREATE TABLE IF NOT EXISTS company_image (
    id int NOT NULL,
    company_id int NOT NULL,
    company_image blob NOT NULL,
    CONSTRAINT company_image_pk PRIMARY KEY (id)
);

-- Table: education_detail
CREATE TABLE IF NOT EXISTS education_detail (
    user_account_id int NOT NULL,
    certificate_degree_name varchar(50) NOT NULL,
    major varchar(50) NOT NULL,
    Institute_university_name varchar(50) NOT NULL,
    starting_date date NOT NULL,
    completion_date date NULL,
    percentage int NULL,
    cgpa int NULL,
    CONSTRAINT education_detail_pk PRIMARY KEY (user_account_id,certificate_degree_name,major)
);

-- Table: experience_detail
CREATE TABLE IF NOT EXISTS experience_detail (
    user_account_id int NOT NULL,
    is_current_job char(1) NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    job_title varchar(50) NOT NULL,
    company_name varchar(100) NOT NULL,
    job_location_city varchar(50) NOT NULL,
    job_location_state varchar(50) NOT NULL,
    job_location_country varchar(50) NOT NULL,
    description varchar(4000) NOT NULL,
    CONSTRAINT experience_detail_pk PRIMARY KEY (user_account_id,start_date,end_date)
);

-- Table: job_location
CREATE TABLE IF NOT EXISTS job_location (
    id int NOT NULL,
    street_address varchar(100) NOT NULL,
    city varchar(50) NOT NULL,
    state varchar(50) NOT NULL,
    country varchar(50) NOT NULL,
    zip varchar(50) NOT NULL,
    CONSTRAINT job_location_pk PRIMARY KEY (id)
);

-- Table: job_post
CREATE TABLE IF NOT EXISTS job_post (
    id int NOT NULL,
    posted_by_id int NOT NULL,
    job_type_id int NOT NULL,
    company_id int NOT NULL,
    is_company_name_hidden char(1) NOT NULL,
    created_date date NOT NULL,
    job_description varchar(500) NOT NULL,
    job_location_id int NOT NULL,
    is_active char(1) NOT NULL,
    CONSTRAINT job_post_pk PRIMARY KEY (id)
);

-- Table: job_post_activity
CREATE TABLE IF NOT EXISTS job_post_activity (
    user_account_id int NOT NULL,
    job_post_id int NOT NULL,
    apply_date date NOT NULL,
    CONSTRAINT job_post_activity_pk PRIMARY KEY (user_account_id,job_post_id)
);

-- Table: job_post_skill_set
CREATE TABLE IF NOT EXISTS job_post_skill_set (
    skill_set_id int NOT NULL,
    job_post_id int NOT NULL,
    skill_level int NOT NULL,
    CONSTRAINT job_post_skill_set_pk PRIMARY KEY (skill_set_id,job_post_id)
);

-- Table: job_type
CREATE TABLE IF NOT EXISTS job_type (
    id int NOT NULL,
    job_type varchar(20) NOT NULL,
    CONSTRAINT job_type_pk PRIMARY KEY (id)
);

-- Table: seeker_profile
CREATE TABLE IF NOT EXISTS seeker_profile (
    user_account_id int NOT NULL,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    current_salary int NULL,
    is_annually_monthly char(1) NULL,
    currency varchar(50) NULL,
    CONSTRAINT seeker_profile_pk PRIMARY KEY (user_account_id)
);

-- Table: seeker_skill_set
CREATE TABLE IF NOT EXISTS seeker_skill_set (
    user_account_id int NOT NULL,
    skill_set_id int NOT NULL,
    skill_level int NOT NULL,
    CONSTRAINT seeker_skill_set_pk PRIMARY KEY (user_account_id,skill_set_id)
);

-- Table: skill_set
CREATE TABLE IF NOT EXISTS skill_set (
    id int NOT NULL,
    skill_set_name varchar(50) NOT NULL,
    CONSTRAINT skill_set_pk PRIMARY KEY (id)
);

-- Table: user_account
CREATE TABLE IF NOT EXISTS user_account (
    id int NOT NULL,
    user_type_id int NOT NULL,
    email varchar(255) NOT NULL,
    password varchar(100) NOT NULL,
    date_of_birth date NOT NULL,
    gender char(1) NOT NULL,
    is_active char(1) NOT NULL,
    contact_int int(10) NOT NULL,
    sms_notification_active char(1) NOT NULL,
    email_notification_active char(1) NOT NULL,
    user_resume mediumblob NULL,
    registration_date date NOT NULL,
    CONSTRAINT user_account_pk PRIMARY KEY (id)
);

-- Table: user_log
CREATE TABLE IF NOT EXISTS user_log (
    user_account_id int NOT NULL,
    last_login_date date NOT NULL,
    last_job_apply_date date NULL,
    CONSTRAINT user_log_pk PRIMARY KEY (user_account_id)
);

-- Table: user_type
CREATE TABLE IF NOT EXISTS user_type (
    id int NOT NULL,
    user_type_name varchar(20) NOT NULL,
    CONSTRAINT user_type_pk PRIMARY KEY (id)
);

-- foreign keys
-- Reference: company_business_stream (table: company)
ALTER TABLE company ADD CONSTRAINT company_business_stream FOREIGN KEY company_business_stream (business_stream_id)
    REFERENCES business_stream (id);

-- Reference: company_image_company (table: company_image)
ALTER TABLE company_image ADD CONSTRAINT company_image_company FOREIGN KEY company_image_company (company_id)
    REFERENCES company (id);

-- Reference: educ_dtl_seeker_profile (table: education_detail)
ALTER TABLE education_detail ADD CONSTRAINT educ_dtl_seeker_profile FOREIGN KEY educ_dtl_seeker_profile (user_account_id)
    REFERENCES seeker_profile (user_account_id);

-- Reference: exp_dtl_seeker_profile (table: experience_detail)
ALTER TABLE experience_detail ADD CONSTRAINT exp_dtl_seeker_profile FOREIGN KEY exp_dtl_seeker_profile (user_account_id)
    REFERENCES seeker_profile (user_account_id);

-- Reference: job_post_act_user_register (table: job_post_activity)
ALTER TABLE job_post_activity ADD CONSTRAINT job_post_act_user_register FOREIGN KEY job_post_act_user_register (user_account_id)
    REFERENCES user_account (id);

-- Reference: job_post_activity_job_post (table: job_post_activity)
ALTER TABLE job_post_activity ADD CONSTRAINT job_post_activity_job_post FOREIGN KEY job_post_activity_job_post (job_post_id)
    REFERENCES job_post (id);

-- Reference: job_post_company (table: job_post)
ALTER TABLE job_post ADD CONSTRAINT job_post_company FOREIGN KEY job_post_company (company_id)
    REFERENCES company (id);

-- Reference: job_post_job_location (table: job_post)
ALTER TABLE job_post ADD CONSTRAINT job_post_job_location FOREIGN KEY job_post_job_location (job_location_id)
    REFERENCES job_location (id);

-- Reference: job_post_job_type (table: job_post)
ALTER TABLE job_post ADD CONSTRAINT job_post_job_type FOREIGN KEY job_post_job_type (job_type_id)
    REFERENCES job_type (id);

-- Reference: job_post_skill_set_job_post (table: job_post_skill_set)
ALTER TABLE job_post_skill_set ADD CONSTRAINT job_post_skill_set_job_post FOREIGN KEY job_post_skill_set_job_post (job_post_id)
    REFERENCES job_post (id);

-- Reference: job_post_skill_set_skill_set (table: job_post_skill_set)
ALTER TABLE job_post_skill_set ADD CONSTRAINT job_post_skill_set_skill_set FOREIGN KEY job_post_skill_set_skill_set (skill_set_id)
    REFERENCES skill_set (id);

-- Reference: job_post_user_register (table: job_post)
ALTER TABLE job_post ADD CONSTRAINT job_post_user_register FOREIGN KEY job_post_user_register (posted_by_id)
    REFERENCES user_account (id);

-- Reference: seeker_profile_user_register (table: seeker_profile)
ALTER TABLE seeker_profile ADD CONSTRAINT seeker_profile_user_register FOREIGN KEY seeker_profile_user_register (user_account_id)
    REFERENCES user_account (id);

-- Reference: seeker_skill_set_skill_set (table: seeker_skill_set)
ALTER TABLE seeker_skill_set ADD CONSTRAINT seeker_skill_set_skill_set FOREIGN KEY seeker_skill_set_skill_set (skill_set_id)
    REFERENCES skill_set (id);

-- Reference: skill_set_seeker_profile (table: seeker_skill_set)
ALTER TABLE seeker_skill_set ADD CONSTRAINT skill_set_seeker_profile FOREIGN KEY skill_set_seeker_profile (user_account_id)
    REFERENCES seeker_profile (user_account_id);

-- Reference: use_log_user_register (table: user_log)
ALTER TABLE user_log ADD CONSTRAINT use_log_user_register FOREIGN KEY use_log_user_register (user_account_id)
    REFERENCES user_account (id);

-- Reference: user_register_user_type (table: user_account)
ALTER TABLE user_account ADD CONSTRAINT user_register_user_type FOREIGN KEY user_register_user_type (user_type_id)
    REFERENCES user_type (id);

-- End of file.
  
  