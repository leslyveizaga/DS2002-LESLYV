SELECT * FROM country WHERE Continent='South America';
SELECT Population FROM country WHERE Name = 'Germany';
SELECT name FROM city where CountryCode = 'JPN';
SELECT * FROM country WHERE Continent = 'Africa' ORDER by population DESC LIMIT 3;
SELECT name, LifeExpectancy from country WHERE Population > 1000000 AND Population < 5000000;
SELECT name from country join countrylanguage ON country.code = countrylanguage.CountryCode where countrylanguage.Language = 'French' and countrylanguage.IsOfficial = "T";
SELECT Title FROM Album JOIN Artist ON Album.ArtistId = Artist.ArtistId WHERE Artist.Name='AC/DC';
SELECT `FirstName`, `Email` FROM Customer WHERE `Country` = "Brazil";
SELECT * FROM `Playlist`;
SELECT COUNT(*) FROM Track JOIN Genre ON Track.GenreId = Genre.GenreId WHERE Genre.Name= 'Rock';
SELECT * FROM `Employee` WHERE `ReportsTo` = "2";
SELECT CustomerID, SUM(Total) FROM Invoice GROUP BY CustomerID;

create table students (studentnumber int(10), firstname varchar(20),lastname varchar(25),PRIMARY KEY(studentnumber));
create table classes (crn int(25), subject varchar(20),number int(10),PRIMARY KEY(crn));
create table pastcourses (id int(25), studentnumber varchar(20),crn int(20),PRIMARY KEY(id));

insert into students values (1, "lesly", "veizaga"), (2, "Garrett", "Veizaga"),(3,"Eyvin","Veizaga"),(4,"Ana","Aquino"),(5,"Edwin","Veizaga"),(6, "Simba","Veizaga");
insert into classes values (098,"DS",2002),(078,"DS",2003),(058,"PLAP",3002),(045,"PLIR",4134),(023,"PLCP",3524);
insert into pastcourses values (1,1,098),(2,1,078),(3,2,058),(4,3,045),(5,4,023);

SELECT * from students WHERE firstname = "lesly";
SELECT subject from classes WHERE subject = "DS";
SELECT * from pastcourses where studentnumber = 1;