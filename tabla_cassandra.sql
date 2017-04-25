CREATE KEYSPACE andrea_key WITH  replication = {'class':'SimpleStrategy','replication_factor':1};

use andrea_key;

create type struct_pets(
	name text,
	especie text,
	raza text,
	age int
);

create table students(
	id varchar PRIMARY KEY,
	name text,
	age int, 
	dir text,
	colors set<text>,
	accounts list<int>,
	pets set<frozen<struct_pets>>
);

create type list_points (
	points int,
	bonus int);
create table users (
	id varchar PRIMARY KEY,
	name text,
	age int
	type int,
	status text,
	favorites map<text,text>,
	finished list<int>,
	badges set <text>,
	points list<frozen<list_points>>


insert into students(id, name,age,dir,colors,accounts,pets) VALUES ('1','ana',24, 'zamora 89', {'blue','red','yellow'},[6,7,10],{{name:'toby',especie:'dog',raza:'akita',age:2}});
insert into students(id, name,age,dir,colors,accounts,pets) VALUES ('2','mario',24,'av sonora 79',{'black','pink','blue'},[10,8,9],{{name:'chocolate',especie:'dog',raza:'dalmata',age:5}});
insert into students(id, name,age,dir,colors,accounts,pets) VALUES ('3','priscila',24,'tula 67',{'black', 'brown', 'white'},[10,7,3,2],{{name:'yuguimi',especie:'dog',raza:'bulldog',age:1}});
insert into students(id, name,age,dir,colors,accounts,pets) VALUES ('4','victor',32,'zamora 7',{'pink','purpure','red'},[5,4,9,1],{{name:'spock',especie:'dog',raza:'boxer',age:4 }});
insert into students(id, name,age,dir,colors,accounts,pets) VALUES ('5','miguel',28,'muyuguarda 78',{'black','red','pink'},[10,44,89,55,1],{{name:'toko',especie:'dog',raza:'alaska',age:3}});
insert into students(id, name,age,dir,colors,accounts,pets) VALUES ('6','may',22,'oceania 78',{'black','red','orange'},[77,56,9,2],{{name:'botas',especie:'cat',raza:'persa',age:2}});
insert into students(id, name,age,dir,colors,accounts,pets) VALUES ('7','carlos',34,'portales 101',{'white','green','purpure'},[10,9,8],{{name:'max',especie:'dog',raza:'beagle',age:1},{name:'liki',especie:'cat',raza:'burnes',age:1}});
insert into students(id, name,age,dir,colors,accounts,pets) VALUES ('8','erika',24,'la noria 28',{'pink','red','green'},[1,2,3],{{name:'bigotes',especie:'dog',raza:'cocker',age:1}});
insert into students(id, name,age,dir,colors,accounts,pets) VALUES ('9','perseo',27,'cafetales 1',{'yellow','white','orange'},[7,8,6],{{name:'ozo',especie:'dog',raza:'chow chow',age:5},{name:'toko',especie:'dog',raza:'golden',age:5}});
insert into users(id, name,age,type,status,favorites,finished,badges,points) VALUES ('16','paco',34,2,'A',{'artist':'Desconocido','food':'chocolate'},[23,32],{'orange','white'},[{points:78,bonus:8},{points:57,bonus:7}]);

#Insert para la tabla users
	insert into users(id, name,age,type,status,favorites,finished,badges,points) VALUES ('1','sue',19,1,'P',{'artist':'picasso','food':'pizza'},[17,3],{'blue','black'},[{points:85,bonus:20},{points:85,bonus:10}]);
	insert into users(id, name,age,type,status,favorites,finished,badges,points) VALUES ('2','bob',42,1,'A',{'artist':'Miro','food':'meringue'},[11,25],{'green'},[{points:85,bonus:20},{points:54,bonus:12}]);
	insert into users(id, name,age,type,status,favorites,finished,badges,points) VALUES ('3','ahn',22,2,'A',{'artist':'Cassatt','food':'cake'},[6],{'blue','red'},[{points:81,bonus:1},{points:55,bonus:20}]);
	insert into users(id, name,age,type,status,favorites,finished,badges,points) VALUES ('4','xi',34,2,'D',{'artist':'Chagall','food':'chocolate'},[5,11],{'red','black'},[{points:53,bonus:13},{points:51,bonus:15}]);
	insert into users(id, name,age,type,status,favorites,finished,badges,points) VALUES ('5','xyz',23,2,'D',{'artist':'Noguchi','food':'nougat'},[14,6],{'orange'},[{points:71,bonus:20}]);
	insert into users(id, name,age,type,status,favorites,finished,badges,points) VALUES ('6','abc',43,1,'A',{'artist':'Picasso','food':'pizza'},[18,12],{'blue','black'},[{points:78,bonus:8},{points:57,bonus:7}]);
	insert into users(id, name,age,type,status,favorites,finished,badges,points) VALUES ('7','les',23,1,'P',{'artist':'van Gogh','food':'hotdogs'},[24,9],{'red','black'},[{points:85,bonus:20},{points:85,bonus:10},{points:95,bonus:12}]);
	insert into users(id, name,age,type,status,favorites,finished,badges,points) VALUES ('8','rob',40,1,'A',{'artist':'Riso','food':'Sushi'},[11,25],{'green','black'},[{points:85,bonus:20},{points:64,bonus:12},{points:90,bonus:22},{points:70,bonus:27}]);
	insert into users(id, name,age,type,status,favorites,finished,badges,points) VALUES ('9','bala',50,2,'A',{'artist':'Monet','food':'potatoes'},[6,15,27],{'yellow','pink'},[{points:81,bonus:8},{points:55,bonus:20}]);
	insert into users(id, name,age,type,status,favorites,finished,badges,points) VALUES ('10','tiki',34,2,'D',{'artist':'Dali','food':'pizza'},[5,11,89,12],{'red','white'},[{points:53,bonus:15},{points:51,bonus:15},{points:51,bonus:15},{points:51,bonus:15}]);
	insert into users(id, name,age,type,status,favorites,finished,badges,points) VALUES ('11','may',22,2,'D',{'artist':'Noguchi','food':'hamburger'},[14,6,7,19],{'orange','pink','yellow'},[{points:96,bonus:89},{points:89,bonus:10}]);
	insert into users(id, name,age,type,status,favorites,finished,badges,points) VALUES ('12','punk',43,1,'A',{'artist':'RISO','food':'cockies'},[18,2],{'pink','orange'},[{points:97,bonus:89},{points:89,bonus:10}]);
	insert into users(id, name,age,type,status,favorites,finished,badges,points) VALUES ('13','dbc',56,1,'P',{'artist':'picasso','food':'pizza'},[18,12],{'black','blue','red'},[{points:78,bonus:8},{points:57,bonus:7}]);
	insert into users(id, name,age,type,status,favorites,finished,badges,points) VALUES ('14','dbe',67,1,'P',{'artist':'Picasso','food':'pizza'},[18,12],{'black','blue'},[{points:78,bonus:8},{points:57,bonus:7},{points:57,bonus:7},{points:90,bonus:13},{points:100,bonus:4}]);
	insert into users(id, name,age,type,status,favorites,finished,badges,points) VALUES ('15','erika',27,2,'A',{'artist':'picasso','food':'chilaquiles'},[18,12],{'blue','pink'},[{points:78,bonus:8},{points:57,bonus:7}]);
	insert into users(id, name,age,type,status,favorites,finished,badges,points) VALUES ('16','paco',34,2,'A',{'artist':'Desconocido','food':'chocolate'},[23,32],{'orange','white'},[{points:78,bonus:8},{points:57,bonus:7}]);


