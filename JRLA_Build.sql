CREATE DATABASE JapaneseRuralLifeAdventure;

USE JapaneseRuralLifeAdventure;

CREATE TABLE chapters (
ID_chapter INT primary Key auto_increment,
Title varchar(50),
Category_Code INT);

INSERT INTO chapters (title, category_code) 
VALUES 	('Events', 100), 
		('Cooking', 200), 
        ('Farming', 300), 
        ('Fish', 400), 
        ('Bugs', 500), 
        ('Animal Phoots', 600), 
        ('Clothing', 700), 
        ('Wild Plants', 800), 
        ('Festival Prizes', 900), 
        ('Dagashi', 1000), 
        ('Daily Good Deeds', 1100), 
        ('Secret Treasures', 1200), 
        ('Medals', 1300), 
        ('Calendar', 1400), 
        ('Characters', 1500), 
        ('Relationships', 1600), 
        ('Revitalization', 1700), 
        ('DIY', 1800),  
        ('Buying', 1900), 
        ('Selling', 2000), 
        ('Map Locations', 2100);

CREATE TABLE `japaneserurallifeadventure`.`calendar` (
  `ID_Calendar` INT NOT NULL,
  `Early_Late` VARCHAR(7) NOT NULL,
  `Month_Calendar` VARCHAR(12) NOT NULL,
  `number_calendar` VARCHAR(3) NOT NULL,
  `Season_calendar` VARCHAR(15) NOT NULL,
  `Spring_cal` TINYINT NULL,
  `Summer_cal` TINYINT NULL,
  `Autumn_cal` TINYINT NULL,
  `Winter_cal` TINYINT NULL,
  PRIMARY KEY (`ID_Calendar`));

INSERT INTO calendar (ID_Calendar,Early_Late,Month_Calendar,number_calendar,Season_calendar,Spring_cal,Summer_cal,Autumn_cal,Winter_cal)
VALUES (
	1401,'Early','	January','	1','Winter',	0,	0,	0,	1),(
	1402,'Late','	January','	1','Winter',	0,	0,	0,	1),(
	1403,'Early','	February','	2','Winter',	0,	0,	0,	1),(
	1404,'Late','	February','	2','Winter',	0,	0,	0,	1),(
	1405,'Early','	March','3','Spring',	1,	0,	0,	0),(
	1406,'Late','	March','3','Spring',	1,	0,	0,	0),(
	1407,'Early','	April','4','Spring',	1,	0,	0,	0),(
	1408,'Late','	April','4','Spring',	1,	0,	0,	0),(
	1409,'Early','	May','	5','Spring',	1,	0,	0,	0),(
	1410,'Late','	May','	5','Spring',	1,	0,	0,	0),(
	1411,'Early','	June','	6','Summer',	0,	1,	0,	0),(
	1412,'Late','	June','	6','Summer',	0,	1,	0,	0),(
	1413,'Early','	July','	7','Summer',	0,	1,	0,	0),(
	1414,'Late','	July','	7','Summer',	0,	1,	0,	0),(
	1415,'Early','	August','8','Summer',	0,	1,	0,	0),(
	1416,'Late','	August','8','Summer',	0,	1,	0,	0),(
	1417,'Early','	September','9','Autumn',	0,	0,	1,	0),(
	1418,'Late','	September','9','Autumn',	0,	0,	1,	0),(
	1419,'Early','	October','10','Autumn',	0,	0,	1,	0),(
	1420,'Late','	October','10','Autumn',	0,	0,	1,	0),(
	1421,'Early','	November','11','Autumn',	0,	0,	1,	0),(
	1422,'Late','	November','11','Autumn',	0,	0,	1,	0),(
	1423,'Early','	December','12','Winter',	0,	0,	0,	1),(
	1424,'Late','	December','12','Winter',	0,	0,	0,	1),(
	99999,'Any','	Any','99','	Any',	1,	1,	1,	1);


CREATE TABLE `events1` (
  `ID_Events` INT NOT NULL PRIMARY KEY, 
  `Event_Name` VARCHAR(50) NULL,
  `Description_Event` VARCHAR(255) NULL,
  `ID_Calendar1` INT NOT NULL,
  `ID_Calendar2` INT NULL,
  `ID_Calendar3` INT NULL,
  `ID_Calendar4` INT NULL,
  FOREIGN KEY (ID_Calendar1) REFERENCES calendar (ID_calendar),
  FOREIGN KEY (ID_Calendar2) REFERENCES calendar (ID_calendar),
  FOREIGN KEY (ID_Calendar3) REFERENCES calendar (ID_calendar),
  FOREIGN KEY (ID_Calendar4) REFERENCES calendar (ID_calendar)
);

INSERT INTO events1 (ID_Events, Event_Name, Description_Event, ID_Calendar1, ID_Calendar2, ID_Calendar3, ID_Calendar4)
VALUES (
	101,'Opening','Time to start your new life. Enjoy country living to the fullest.',99999,NULL,NULL,NULL),(
	102,'Clean and repair the house','A favor for the landlord. The first trial of your countryside life. Clean the house and repair the floor.',99999,NULL,NULL,NULL),(
	103,'Create a path to the entrance','Make a stone path to the front door to welcome your guests.',99999,NULL,NULL,NULL),(
	104,'Shoe removal stone','The kutsunugiishi goes nest to the engawa to mark the barrier between the house and the yard, Used as a stepping stone and for taking shoes off.',99999,NULL,NULL,NULL),(
	105,'Path to the shed','Make a stone path to the shed.',99999,NULL,NULL,NULL),(
	106,'Make a work bench','Make a wooden table to use for DIY projects at home.',99999,NULL,NULL,NULL),(
	107,'Bathe in the drum','Taking a relaxing drum bath in the great outdoors.',99999,NULL,NULL,NULL),(
	108,'Receive Mail','Make a mailbox by your door. The postman will deliver an item each morning.',99999,NULL,NULL,NULL),(
	109,'Mailbox','Clean up the old mailbox no one is using.',99999,NULL,NULL,NULL),(
	110,'Split a log for the first time','Splitting logs is part of basic self-sufficiency. The sound of splitting logs echoing in the mountains is so nice.',99999,NULL,NULL,NULL),(
	111,'Swap out the shoji paper','Shoji are part of a traditional Japanese house. Stretching paper over the frames allows gentle light to enter.',99999,NULL,NULL,NULL),(
	112,'Rice paddy','Make a paddy so you can grow rice.',99999,NULL,NULL,NULL),(
	113,'Till your first field','Fields allow you to grow crops. Make your first one.',99999,NULL,NULL,NULL),(
	114,'Till all the fields','Till all your fields and grow lots of veggies.',99999,NULL,NULL,NULL),(
	115,'Go fishing','Go fishing in the great outdoors. What kinds of fish can you catch?',99999,NULL,NULL,NULL),(
	116,'Go bug-catching','Go bug-catching in the great outdoors. Become an insect expert.',99999,NULL,NULL,NULL),(
	117,'Eat a roasted fish','Cook and eat a fish you caught. Taste one of the joys of country living.',99999,NULL,NULL,NULL),(
	118,'Get a doggy','Get a doggy to be your coutryside companion.',99999,NULL,NULL,NULL),(
	119,'Doghouse','Build a doghouse for your doggy.',99999,NULL,NULL,NULL),(
	120,'Chicken coop','Build a chicken coop so you can keep a chicken.',99999,NULL,NULL,NULL),(
	121,'An offering to Ojizo-san','Ojizo-san are made as memorials, for prayer offerings, or with other reasons in mind. Make an offering to a precious Ojizo-san.',99999,NULL,NULL,NULL),(
	122,'Pond for the yard','Build a pond in front of the engawa to make the yard like a Japanese garden.',99999,NULL,NULL,NULL),(
	123,'Shishiodohi','	Originally a farming tool to ward off animals that would ravage the crops, they\'\re now enjoyed for the sound they make as a garden decoration.',99999,NULL,NULL,NULL),(
	124,'Build a well','If you build a well, you can draw groundwater. It might freese over when it\'\s cold.',99999,NULL,NULL,NULL),(
	125,'Plum harvest','Can\'\t have Japanese food without plums. Grow a plum tree in the yard and harvest the fruit.',99999,NULL,NULL,NULL),(
	126,'Mikan harvest','The Unshu variety of mikan is famous in Japan. Grow a mikan tree in the yard and harvest the fruit.',99999,NULL,NULL,NULL),(
	127,'Persimmon harvest','Not the special Japanese sweet variety, but the astringent kind. Dry and eat them.',99999,NULL,NULL,NULL),(
	128,'Yuzu harvest','Grow a yuzu tree in the yard and harvest the tree.',99999,NULL,NULL,NULL),(
	129,'Decorate with hanging scroll','Hanging scrolls are a part of traditional culture Japan takes pride in. Many different kinds are collected and sold as cultural assets and antiques. Hang one in the tokonoma to admire.',	99999,NULL,NULL,NULL),(
	130,'Worship','	There are various ways to worship. Make sure to follow etiquette.',99999,NULL,NULL,NULL),(
	131,'Dried persimmons','Dry astringent persimmons. Drying them removes the bitter taste and brings out their natural sweetness.',99999,NULL,NULL,NULL),(
	132,'First shrine visit of the year','The first shrine visit of the year is called hatsumode. Pray for the new year to go well.',1401,NULL,NULL,NULL),(
	133,'Grow a bonsai','Growing bonsai isn\'\t like growing just any houseplant. You can re-create the grandeur of a huge tree in a little pot.',99999,NULL,NULL,NULL),(
	134,'Summer festival','tbd',1415,NULL,NULL,NULL),(
	135,'Candy apple from a festival stall','tbd',99999,NULL,NULL,NULL),(
	136,'Yakisoba from a festival stall','tbd',99999,NULL,NULL,NULL),(
	137,'Take a yuzu bath','December 22 is the winter solstice. Put some yuzu in your bath and purify your body.',1424,NULL,NULL,NULL),(
	138,'Raise a koi', 'tbd',99999,NULL,NULL,NULL),(
	139,'Decorate with kagami mochi','This New Year\'\s decoration is an offering for the gods to welcome them. It has a long history in Japan.',1401,NULL,NULL,NULL),(
	140,'Kagami Biraki','The gods reside in the kagami mochi. After the New Year holiday is over, break apart the mochi and eat it to receive divine power. Make ozoni with it.',1402,NULL,NULL,NULL),(
	141,'Get the waterwheel working','You don\'\t see waterwheels around much these days. Having a working one could be good for the village\'\s tourism.',99999,NULL,NULL,NULL),(
	142,'Begin pottery','Japanese pottery is known for asymmetrical shapes and the natural beauty of its colors. Enjoy firing pieces that speak to you.',99999,NULL,NULL,NULL),(
	143,'Master Pottery','tbd',99999,NULL,NULL,NULL),(
	144,'Moon-viewing on Jugoya','Sit on the engawa on Jugoya and eat dango that resemble the moon.',1418,NULL,NULL,NULL),(
	145,'Watch fireflies','Maybe if you make a nice pond, fireflies will come. Watch them from your engawa in the summer.',1413,1414,1415,1416),(
	146,'Ajisai appreciation','Admire some colorful hydrangeas that could bloom during the rainy season.',1411,1412,NULL,NULL),(
	147,'Tsutsuji appreciation','Admire some vibrant azaleas.',1409,1410,NULL,NULL),(
	148,'Furin (wind chime)','A furin brings a refreshing element to muggy Japanese summers. Hang it on the engawa and have a cool summer.',1415,1416,NULL,NULL),(
	149,'Bonfire','Make a bonfire in yard during autumn. And roast some sweet potatoes too.',1421,1422,NULL,NULL),(
	150,'Toshikoshi soba','The superstitious eat toshikoshi soba on New Year\'\s Eve. Its a custom emblematic of Japan at the end of the year.',1424,NULL,NULL,NULL),(
	151,'Put up a kadomatsu','Kadomatsu are made with pine for good luck. Set one up nest to your door to welcome the gods during the New Year holiday.',1424,NULL,NULL,NULL),(
	152,'Put up a shimenawa','A shimenawa forms a barrier between a sacred area and the outside world. Hang one on your door for New Year\'\s to welcome the gods.',1424,NULL,NULL,NULL),(
	153,'Nanakusagayu','New Year\'\s Day',1401,NULL,NULL,NULL),(
	154,'Fly a kite','tbd',1424,1401,NULL,NULL),(
	155,'Sleep in the futon','Sleep till morning in your homemade cotton futon.',99999,NULL,NULL,NULL),(
	156,'Hina Matsuri','Set up the hina dolls and eat hishi mochi.',1405,NULL,NULL,NULL),(
	157,'Children\'\s Day (Tango no Sekku)','Early May, daytime',1409,NULL,NULL,NULL),(
	158,'Tanabata','The gosekku (five seasonal festivals) add color to Japan\'\s four seasons, and July 7 is Tanabata no Sekku. Write wishes on tanzaku and hang them from bamboo grass.',1413,NULL,NULL,NULL),(
	159,'Choyo no Sekku','early September',1417,NULL,NULL,NULL),(
	160,'Setsubun','February 3 is Setsubun. Throw beans at nighttime. Throw the outside your house to ward off demons (bad luck) and throw them inside to attract good fortune.',1403,NULL,NULL,NULL),(
	161,'Build an ice shed','Ice sheds proliferated during the era before electronic appliances as a way to store ice and snow. You can keep the ice you acquire until summer.',99999,NULL,NULL,NULL),(
	162,'Sparklers','Play with sparklers in a summer night. Can you see the beautiful falling chrysantemum petals?',1415,1416,NULL,NULL),(
	163,'Ohigan','A time for making memorial offerings to ancestors\'\ graves. There are ohigan in spring and fall, and it\'\s customary to eat bota mochi/ohagi and shojin ryori (Japanese vegetarian food).',1406,1418,NULL,NULL),(
	164,'Ohanami','April, village square, Eat a hanami bento.',1407,1408,NULL,NULL),(
	165,'Put up a kumade','Kumade were once used as farming tools, but now they are lucky items for raking up good fortune.',1424,1401,NULL,NULL),(
	166,'Explore the mountain','Explore the mountain behind your house. There are lots of rare items and bugs up there. There are also many dangers, no be careful.',99999,NULL,NULL,NULL),(
	167,'Joya no Kane','Late december, night - Ring the temple bell',1424,NULL,NULL,NULL),(
	168,'See Mount Fuji','At 3,776 meters above sea level, Mount Fuji is the tallest mountain in Japan. It\'\s said the water goddess Asama Daijin in enshrined at the peak.',1424,1401,NULL,NULL),(
	169,'Build a mountain hut','Build a mountain hut so you can get up early and see the sunrise. It\'\ll be just big enough to sleep one person.',99999,NULL,NULL,NULL),(
	170,'See the first sunrise of the year','Early January, Early morning, the spot where you can see mount fuji',1401,NULL,NULL,NULL),(
	171,'Museum','Finish setting up the museum You have something to display',99999,NULL,NULL,NULL),(
	172,'Hunt for shells','tbd',99999,NULL,NULL,NULL),(
	173,'The Legend of the Great Serpent Rock','tbd',99999,NULL,NULL,NULL),(
	174,'Sea Turtle Eggs','tbd',99999,NULL,NULL,NULL),(
	175,'Seasonal events','Do all the seasonal events on the calendar in one year',99999,NULL,NULL,NULL);
  
  
CREATE TABLE `map_locations` (
  `ID_Map` INT NOT NULL,
  `Location` VARCHAR(20),
  PRIMARY KEY (`ID_Map`)  
);

INSERT INTO map_locations (ID_map, location)
VALUES (
	2101,	'Home'),(
	2102,	'Shrine'),(
	2103,	'Headgate'),(
	2104,	'Bench'),(
	2105,	'Truck Stop'),(
	2106,	'Mailbox'),(
	2107,	'Ojizo-san'),(
	2108,	'Mountain'),(
	2109,	'Village'),(
	2110,	'Store'),(
	2111,	'Dagashiya'),(
	2112,	'Hokora'),(
	2113,	'Museum'),(
	2114,	'Temple'),(
	2115,	'Cemetery'),(
	2116,	'Assemby Hall'),(
	2117,	'Square'),(
	2118,	'School'),(
	2119,	'Waterwheel'),(
	2120,	'Mountain Shrine'),(
	2121,	'Kind Woman\'\s House'),(
	2122,	'Stubborn Man\'\s House'),(
	2123,	'Landlord\'\s House'),(
	2124,	'Home: Riverside'),(
	2125,	'Home: Kiln'),(
	2126,	'Home: Ice Shed'),(
	2127,	'tbd'),(
	2128,	'tbd'),(
	2129,	'tbd'),(
	2130,	'tbd'),(
	2131,	'tbd'),(
	2132,	'tbd'),(
	2133,	'tbd'),(
	2134,	'tbd'),(
	2135,	'tbd'),(
	2136,	'tbd'),(
	2137,	'tbd'),(
	2138,	'tbd'),(
	2139,	'tbd'),(
	2140,	'tbd'
);


