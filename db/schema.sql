create table micro_posts(
	id SERIAL primary key,
	created_on TIMESTAMP,
	updated_on TIMESTAMP,
	img_url VARCHAR(255),
	words TEXT,
	author_id INTEGER references authors
);

create table authors(
	id SERIAL primary key,
	name VARCHAR(255),
	img_url VARCHAR(255),
	bio VARCHAR(255),
	location VARCHAR(255)
);

create table tags(
	id SERIAL primary key,
	name VARCHAR(255)
);

create table micro_posts_tags(
	post_id INTEGER references micro_posts,
	tag_id INTEGER references tags
)