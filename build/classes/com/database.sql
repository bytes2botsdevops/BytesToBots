desc user_enquiry;

CREATE TABLE user_enquiry (
id INT AUTO_INCREMENT PRIMARY KEY,
fullname varchar(50),
email varchar(60),
phone NUMERIC(10),
subject varchar(150),
shortmessage varchar(500));

