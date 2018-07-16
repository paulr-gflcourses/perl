TRUNCATE TABLE users;
TRUNCATE TABLE articles;

INSERT INTO users(id,login,password) VALUES
(0,"user1","user1"),
(0,"user2","user2");

INSERT INTO articles(id,title,message,is_private,id_user) VALUES
(0, "Article 1", "The article 1 content - Some information: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas elementum mi at est viverra molestie. Nulla varius risus at nibh bibendum, non luctus justo dignissim. Curabitur facilisis, nulla sit amet venenatis sagittis, erat enim suscipit magna, vel fringilla risus libero at elit. ",0,1),
(0, "Article 2", "The private article 2 content - Some information (private): Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas elementum mi at est viverra molestie. Nulla varius risus at nibh bibendum, non luctus justo dignissim .",1,1),
(0, "Article 3", "The article 3 content - Some information. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas elementum mi at est viverra molestie. Nulla varius risus at nibh bibendum, non luctus justo dignissim. Curabitur facilisis, nulla sit amet venenatis sagittis, erat enim suscipit magna, vel fringilla risus libero at elit. ",0,2),
(0, "Article 4", "The private article 4 content - Some information (private). Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas elementum mi at est viverra molestie.",1,2);


