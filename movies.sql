create database triveni;
use triveni;


create table movies(movie_id int primary key,title varchar(50),release_year int,director_id int);

insert into movies (movie_id, title, release_year, director_id)
values(1001,"sakhi",2000,001);
insert into movies (movie_id, title, release_year, director_id)
values(1002,"five-feetapart",2019,002);
insert into movies (movie_id, title, release_year, director_id)
values(1003,"titanic",1997,003);
insert into movies (movie_id, title, release_year, director_id)
values(1004,"RRR",2022,004);
insert into movies (movie_id, title, release_year, director_id)
values(1005,"ok kanmani",2015,001);
insert into movies (movie_id, title, release_year, director_id)
values(1006,"eega",2012,004);
insert into movies (movie_id, title, release_year, director_id)
values(1007,"magadheera",2009,004);


create table directors(director_id int primary key,director_name varchar(50));

insert into directors (director_id, director_name)
values(001,"mani ratnam");
insert into directors (director_id, director_name)
values(002,"Justin Baldoni");
insert into directors (director_id, director_name)
values(003,"James Cameron");
insert into directors (director_id, director_name)
values(004,"Rajamouli ");


create table genres(genre_id int primary key,genre_name varchar(50));

insert into genres (genre_id, genre_name)
 values(01,"romance");
 insert into genres (genre_id, genre_name)
 values(02,"historic drama");
 insert into genres (genre_id, genre_name)
 values(03,"drama");
 
 
create table movie_genres(movie_id int primary key,genre_id int );

insert into movie_genres (movie_id,genre_id)
values(1001,01);
insert into movie_genres (movie_id,genre_id)
values(1002,03);
insert into movie_genres (movie_id,genre_id)
values(1003,02);
insert into movie_genres (movie_id,genre_id)
values(1004,02);
insert into movie_genres (movie_id,genre_id)
values(1005,01);
insert into movie_genres (movie_id,genre_id)
values(1006,03);
insert into movie_genres (movie_id,genre_id)
values(1007,03);


select title,director_name
from movies m,directors d
where m.director_id=d.director_id ;

select title,release_year,director_name
from movies m,directors d
where m.director_id=d.director_id ;

select director_name,title 
from directors d,movies m 
where m.director_id=d.director_id ;

select title,release_year,director_name
from movies m,directors d
where d.director_id=m.director_id ;

select title,genre_name
from movies m,genres g,movie_genres u
where u.movie_id=m.movie_id and u.genre_id=g.genre_id ;