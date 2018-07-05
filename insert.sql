TRUNCATE TABLE users;
TRUNCATE TABLE articles;

INSERT INTO users(id,login,password) VALUES
(0,"test1","pass1"),
(0,"test2","pass2");

INSERT INTO articles(id,title,message,is_private,id_user) VALUES
(0, "art1", "Article 1:The new interesting article1!!!",0,1),
(0, "art2", "Article 2:The new interesting article2!!!",1,1),
(0, "art3", "Article 3:The new interesting article3!!!",0,2),
(0, "art4", "Article 4:The new interesting article4!!!",1,2);


