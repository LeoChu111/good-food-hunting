CREATE DATABASE goodfoodhunting;

CREATE TABLE dishes (
    id SERIAL PRIMARY KEY,
    title TEXT,
    image_url TEXT,
    user_id INTEGER NOT NULL
);
ALTER TABLE dishes ADD COLUMN user_id INTEGER NOT NULL;
update dishes set user_id = 1;
INSERT INTO dishes (title, image_url, user_id) 
VALUES ('cake', 'https://stylesweet.com/wp-content/uploads/2022/06/ChocolateCakeForTwo_Featured.jpg', 1),
('pasta', 'https://www.allrecipes.com/thmb/5SdUVhHTMs-rta5sOblJESXThEE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/11691-tomato-and-garlic-pasta-ddmfs-3x4-1-bf607984a23541f4ad936b33b22c9074.jpg',1);

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    email TEXT,
    password_digest TEXT
);

INSERT INTO users (email) VALUES ('leo@gmail.com');