drop table if exists users;
drop table if exists routines;
drop table if exists exercises;
drop table if exists routines_exercises;

create table users
(
    userId text, 
    name text not null,
    age int not null,
    weight int not null,
    primary key (userId)
);

create table routines
(
    routineId text,
    name text not null,
    duration int not null,
    userId text not null,
    primary key (routineId),
    foreign key (userId) references users (userid)
);

create table exercises
(
    exerciseId text,
    name text not null,
    muscle text not null,
    primary key (exerciseId)
);

create table routines_exercises
(
    routineId text,
    exerciseId text,
    primary key (routineId, exerciseId)
);

insert into users values ('u1', 'Davis Blackburn', 26, 204);
insert into users values ('u2', 'Ann Roberts', 34, 173);
insert into users values ('u3', 'Scott Green', 41, 150);

insert into routines values ('r1', 'Legs', 20, 'u1');
insert into routines values ('r2', 'Full Body', 60, 'u1');
insert into routines values ('r3', 'Arms', 20, 'u2');
insert into routines values ('r4', 'Core+Butt', 30, 'u3');

insert into exercises values ('e1', 'sit-ups', 'abs');
insert into exercises values ('e2', 'flutter kicks', 'abs');
insert into exercises values ('e3', 'lunges', 'quads');
insert into exercises values ('e4', 'squats', 'glutes');
insert into exercises values ('e5', 'bridges', 'glutes');
insert into exercises values ('e6', 'tricep dips', 'triceps');
insert into exercises values ('e7', 'leg curls', 'biceps');
insert into exercises values ('e8', 'pull-ups', 'back');
insert into exercises values ('e9', 'superman', 'back');
insert into exercises values ('e10', 'push-ups', 'chest');

insert into routines_exercises values ('r1', 'e3');
insert into routines_exercises values ('r1', 'e4');
insert into routines_exercises values ('r1', 'e5');
insert into routines_exercises values ('r2', 'e1');
insert into routines_exercises values ('r2', 'e3');
insert into routines_exercises values ('r2', 'e4');
insert into routines_exercises values ('r2', 'e6');
insert into routines_exercises values ('r2', 'e7');
insert into routines_exercises values ('r2', 'e8');
insert into routines_exercises values ('r2', 'e10');
insert into routines_exercises values ('r3', 'e6');
insert into routines_exercises values ('r3', 'e7');
insert into routines_exercises values ('r3', 'e10');
insert into routines_exercises values ('r4', 'e1');
insert into routines_exercises values ('r4', 'e2');
insert into routines_exercises values ('r4', 'e4');
insert into routines_exercises values ('r4', 'e10');