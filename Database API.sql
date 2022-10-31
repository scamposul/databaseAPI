CREATE TABLE "users" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "email" varchar,
  "password" varchar,
  "age" int
);

CREATE TABLE "entries" (
  "id" SERIAL PRIMARY KEY,
  "user_id" int,
  "title" varchar,
  "description" text,
  "author_id" int,
  "content" varchar
);

CREATE TABLE "categories" (
  "id" SERIAL PRIMARY KEY,
  "entry_id" int,
  "name" varchar
);

CREATE TABLE "comments" (
  "id" SERIAL PRIMARY KEY,
  "entry_id" int,
  "comment" text
);

CREATE TABLE "authors" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

ALTER TABLE "entries" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "entries" ADD FOREIGN KEY ("author_id") REFERENCES "authors" ("id");

ALTER TABLE "categories" ADD FOREIGN KEY ("entry_id") REFERENCES "entries" ("id");

ALTER TABLE "comments" ADD FOREIGN KEY ("entry_id") REFERENCES "entries" ("id");

insert into users (name, email, password, age) values 
('Anselmo', 'anselmo@gmail.com', 'anselmno1234', 87), 
('Juventina', 'balceirojuventina@gmail.com', 'juventina1234', 83);

insert into authors (name) values 
('Temístocles'),
('Don Críspulo Pisba');

insert into entries (user_id, title, description, author_id, content) values
(1, 'Lorem ipsum', 'Lorem ipsum dolor sit amet', 1, 'Quisque est purus, dictum a convallis at, ultricies id felis. Nunc pulvinar, mauris et semper dignissim, ligula nisl congue diam, ut luctus purus enim ac augue. Proin quis auctor risus. Cras et eros quis nibh congue iaculis sollicitudin eu leo. '), 
(2, 'Lorem ipsum 2', 'Lorem ipsum dolor sit amet', 2, 'Nunc auctor, elit non tincidunt feugiat, enim ex feugiat augue, sed feugiat urna nibh quis arcu. Suspendisse potenti. Duis ut elementum ipsum.');

insert into categories (entry_id, name) values 
(1, 'Videogames'), 
(2, 'Movies');

insert into comments (entry_id, comment) values 
(1, 'TLOZ: Breath of the Wild es un Elden Ring para niños de 10 años'),
(2, 'Sí, a mí también me pareció floja, es mejor la primera');
