DROP TABLE IF EXISTS users, posts, comments;

CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT,
  username VARCHAR(50),
  email VARCHAR(50),
  blurb VARCHAR(255),
  PRIMARY KEY (id)
);

CREATE TABLE posts (
  post_id INT NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  post_text VARCHAR(255),
  PRIMARY KEY (post_id),
  FOREIGN KEY (user_id)
  REFERENCES users (id)
);

CREATE TABLE comments (
  comment_id INT NOT NULL AUTO_INCREMENT,
  post_id INT NOT NULL,
  comment_text VARCHAR(255),
  PRIMARY KEY (comment_id),
  FOREIGN KEY (post_id)
  REFERENCES posts (post_id)
);