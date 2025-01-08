create database Futbol
use futbol


create table team(id int  ,
			name varchar(25),
			name_code varchar(3) ,
			pres_name varchar(15) ,
			kit_color varchar(10) )


insert into team (id, name, name_code, pres_name, kit_color) values
(1, 'Real Madrid', 'RMA', 'Perez', 'White'),
(2, 'Barcelona', 'BAR', 'Laporta', 'Blue-Red'),
(3, 'Manchester City', 'MCI', 'Sheikh', 'Sky Blue'),
(4, 'Bayern Munich', 'BAY', 'Hainer', 'Red'),
(5, 'Juventus', 'JUV', 'Agnelli', 'Blc-White'),
(6, 'Chelsea', 'CHE', 'Boehly', 'Blue'),
(7, 'Paris Saint-Germain', 'PSG', 'Al-Khelaifi', 'Blue-Red'),
(8, 'Liverpool', 'LIV', 'Henry', 'Red');

select * from team
create table players (
    player_id int,
    player_name varchar(30),
    team_id int,
    position varchar(15),
    age int,
    goals int) 

insert into players values
(1, 'Vinisius Junior', 1, 'Forward', 24, 275),
(2, 'Cristiano Ronaldo', null, 'Forward', 38, 920),
(3, 'Erling Haaland', 3, 'Forward', 23, 200),
(4, 'Kevin De Bruyne', 3, 'Midfielder', 32, 90),
(5, 'Virgil Van Dijk', 8, 'Defender', 32, 20);


create table stadiums (
    stadium_id int,
    stadium_name varchar(50),
    team_id int,
    capacity int,
    location varchar(30))

insert into stadiums values
(1, 'Santiago Bernabeu', 1, 81044, 'Madrid'),
(2, 'Camp Nou', 2, 99354, 'Barcelona'),
(3, 'Etihad Stadium', 3, 53000, 'Manchester'),
(4, 'Allianz Arena', 4, 75000, 'Munich'),
(5, 'Anfield', 8, 54000, 'Liverpool');

create table matches (
    match_id int,
    home_team_id int,
    away_team_id int,
    match_date date,
    result varchar(10),
    stadium_id int
);

insert into matches values
(1, 1, 2, '2024-01-12', '3-1', 1),
(2, 3, 5, '2024-01-15', '2-2', 3),
(3, 2, 8, '2024-02-10', '1-0', 2),
(4, 4, 7, '2024-02-20', '1-3', 4),
(5, 6, 8, '2024-03-01', '0-1', 5)


create table  coaches (
    coach_id int,
    coach_name varchar(30),
    team_id int,
    nationality varchar(20),
    experience_years int)

insert into coaches values
(1, 'Carlo Ancelotti', 1, 'Italian', 25),
(2, 'Xavi Hernandez', 2, 'Spanish', 10),
(3, 'Pep Guardiola', 3, 'Spanish', 17),
(4, 'Jurgen Klopp', 8, 'German', 20),
(5, 'Mauricio Pochettino', 6, 'Argentinian', 15)

create table sponsors (
    sponsor_id int,
    sponsor_name varchar(50),
    team_id int,
    contract_value decimal(10, 2),
    contract_years int)

insert into sponsors values
(1, 'Fly Emirates', 1, 50000000.00, 5),
(2, 'Rakuten', 2, 55000000.00, 4),
(3, 'Etihad Airways', 3, 60000000.00, 6),
(4, 'Adidas', 4, 70000000.00, 10),
(5, 'Nike', 8, 75000000.00, 7)

create table referees (
    referee_id int,
    referee_name varchar(30),
    nationality varchar(20),
    experience_years int,
    matches_officiated int)

insert into referees values
(1, 'Michael Oliver', 'English', 15, 350),
(2, 'Clement Turpin', 'French', 12, 300),
(3, 'Daniele Orsato', 'Italian', 20, 400),
(4, 'Antonio Mateu Lahoz', 'Spanish', 18, 380),
(5, 'Bjorn Kuipers', 'Dutch', 22, 450);

create table fans (
    fan_id int,
    fan_name varchar(30),
    team_id int,
    age int,
    country varchar(20))

insert into fans values
(1, 'John Doe', 1, 28, 'USA'),
(2, 'Luis Garcia', 2, 35, 'Spain'),
(3, 'Ahmed Ali', 3, 24, 'UAE'),
(4, 'Hans Muller', 4, 42, 'Germany'),
(5, 'James Smith', 8, 30, 'England')

create table tournaments (
    tournament_id int,
    tournament_name varchar(50),
    start_date date,
    end_date date,
    host_country varchar(20))

insert into tournaments values
(1, 'UEFA Champions League', '2024-09-12', '2025-06-01', 'Europe'),
(2, 'FIFA World Cup', '2026-11-20', '2026-12-18', 'USA'),
(3, 'Europa League', '2024-09-15', '2025-05-30', 'Europe'),
(4, 'Copa America', '2024-06-10', '2024-07-10', 'Argentina'),
(5, 'AFCON', '2025-01-15', '2025-02-15', 'Morocco');

create table awards (
    award_id int,
    award_name varchar(30),
    player_id int,
    year_awarded int,
    category varchar(20))

insert into awards values
(1, 'Ballon d''Or', 1, 2023, 'Best Player'),
(2, 'Golden Boot', 2, 2022, 'Top Scorer'),
(3, 'Best Goalkeeper', 5, 2022, 'Defense'),
(4, 'Golden Boy', 3, 2021, 'Young Talent'),
(5, 'Player of the Year', 4, 2023, 'Midfielder')


select* from awards

select * from INFORMATION_SCHEMA.TABLES