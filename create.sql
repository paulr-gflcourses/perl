CREATE TABLE users(
    id  smallint(5) unsigned PRIMARY KEY auto_increment,
    login  varchar(20) UNIQUE,
    password varchar(20) 
);

CREATE TABLE articles(
    id  smallint(5) unsigned PRIMARY KEY auto_increment,
    title       varchar(50),
    message     text,       
    is_private  tinyint(1) DEFAULT 0, 
    id_user     int(10)    
);
