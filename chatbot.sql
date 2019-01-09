-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2019 at 07:04 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatbot`
--

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

CREATE TABLE `holiday` (
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `holiday`
--

INSERT INTO `holiday` (`date`, `reason`) VALUES
('2019-01-01 06:30:00', 'New Year\'s Day'),
('2019-01-14 06:30:00', 'Makar Sankranti / Pongal'),
('2019-01-26 06:30:00', 'Republic Day'),
('2019-03-04 06:30:00', 'Maha Shivaratri'),
('2019-03-21 06:30:00', 'Holi'),
('2019-04-06 06:30:00', 'Ugadi / Gudi Padwa'),
('2019-04-13 06:30:00', 'Ram Navami'),
('2019-04-17 06:30:00', 'Mahavir Jayanti'),
('2019-04-19 06:30:00', 'Good Friday'),
('2019-05-01 06:30:00', 'Labor Day'),
('2019-05-18 06:30:00', 'Budhha Purnima'),
('2019-06-05 06:30:00', 'Eid-ul-Fitar'),
('2019-07-04 06:30:00', 'Rath Yatra'),
('2019-08-12 06:30:00', 'Bakri Id / Eid ul-Adha'),
('2019-08-15 06:30:00', 'Raksha Bandhan'),
('2019-08-15 06:30:00', 'Independence Day'),
('2019-08-24 06:30:00', 'Janmashtami'),
('2019-09-02 06:30:00', 'Vinayaka Chaturthi'),
('2019-09-10 06:30:00', 'Muharram'),
('2019-09-11 06:30:00', 'Onam'),
('2019-10-02 06:30:00', 'Mathatma Gandhi Jayanti'),
('2019-10-08 06:30:00', 'Dussehra / Dasara'),
('2019-10-27 06:30:00', 'Diwali / Deepavali'),
('2019-11-10 06:30:00', 'Milad un Nabi'),
('2019-11-12 06:30:00', 'Guru Nanak\'s Birthday'),
('2019-12-25 06:30:00', 'Christmas');

-- --------------------------------------------------------

--
-- Table structure for table `quesans`
--

CREATE TABLE `quesans` (
  `id` int(11) NOT NULL,
  `questions` text NOT NULL,
  `answers` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quesans`
--

INSERT INTO `quesans` (`id`, `questions`, `answers`) VALUES
(1, 'entry inclusive, entry include, entry includes, ticket rides, charges rides, ticket include, ticket includes', 'Yes! Once you\'re in, you can go on any ride as many times as you like.'),
(2, 'accept card, accept credit card, accept debit card, pay by card, pay with card', 'Yes, you can pay by card at our ticket counters as well as our restaurants. '),
(3, 'wallets, ewallets, e-wallets, paytm, mobikwik, phonepe, mobile wallet', 'You can pay through Paytm to buy tickets at our ticketing counter.  But once you enter the park, wallet payments are not available.'),
(4, 'limit rides, times rides, times ride, count rides, count ride', 'There is no limit on how many times you can go on a ride. You\'re free to enjoy as many thrills as you want until the park closes.'),
(5, 'birthday party, parties, host events, host party, host events', 'At present, we do not have provisions for organising birthday parties. However if you do have a special request, you can reach out to us at 080-22010333 OR +91-9945557777.\r\nMeanwhile, you could buy any of the 6 varieties of Birthday cakes made in Wonderla Resort from the park. You could reach out to the park help desk to book this.'),
(6, 'transfer ticket, transfer pass', 'We\'re sorry, but tickets once booked cannot be transferred since the ID proof has to be validated at the entrance. But in cases of unavoidable circumstances, if you cannot be personally present with your friends/family, then your original photo identity proof as well as the presenting guest\'s ID Proof  has to be produced at the time of check-in.'),
(7, 'cancel ticket, cancel booking, refund ticket', 'Unfortunately, we don\'t have a refund option on the tickets booked on our platforms.'),
(8, 'some other day, another day, postpone visit, postpone coming', 'We\'re sorry, but your tickets can only be redeemed on the date that they were booked for.'),
(9, 'family place, private space, private place, enjoy alone, special place', 'Unfortunately, we do not have a provision to enjoy the rides in the privacy of your family. But with a fastrack ticket you can skip the longer queues at all the rides.'),
(10, 'theme celebrations, themed parties, themed celebrate, theme celebrate', 'At present, we do not have provisions for organising themed celebrations. However if you do have a special request, you can reach out to us at 080-22010333 OR +91-9945557777'),
(11, 'order food, food party, food celebration, food event', 'We have 6 multi-cuisine restaurants options for food inside the park premises. Unfortunately we do not allow food and beverage purchased outside into the parks.'),
(12, 'alcohol, hard drinks, liquor, whiskey, scotch, booze ', 'You can get a drink at the Wonderla Resort, but we advice you not to consume alcohol until the park closes. We have a strict rule against entry after consumption of any inebriating substance.'),
(13, 'type ticket, type tickets, kind of tickets, names tickets, name tickets', 'We have 2 types of tickets- regular and Fastrack. Fastrack ticket gives you faster access to the rides by skipping queues.'),
(14, 'skip queue, get ahead queue, special ticket, priority queue', 'Yes, you could buy Fastrack Tickets which allows you to skip the queues at the rides once you are inside the park. '),
(15, 'drivers place, drivers rest, staff relax, staff rest, driver relax', 'There are plenty of space just outside the park premises where your helping staff and drivers could relax and enjoy the scenic beauty.'),
(16, 'drivers restroom, drivers washroom, drivers bathroom, drivers urinals, drivers toilet', 'Yes, the drivers have restrooms available outside the park'),
(17, 'drop busstand, drop busstop, drop bus stand, drop outside', 'Yes, we have our buses plying to the nearest bus stops till one hour after park closure time'),
(18, 'drop home, drop back home, drop my place, drop our place, charges drop', 'Unfortunately, we don\'t have an option to offer a drop till home. The buses inside the park would drop you to the nearest bus stop and it is free of cost.'),
(19, 'taxi service, taxi stand, auto stand, auto service, call taxi', 'All the local taxi services including Ola and Uber cabs are available at our parks.'),
(20, 'uber, ola', 'Yes, both Ola and Uber extend their services till our park premises. You should not have trouble getting a cab from the park.'),
(21, 'parking charges, parking toll, parking free, parking, car parking, cab parking, van parking, lorry parking, bus parking, park car, park bus, park van, parking fee, parking', 'We offer parking facility inside the park and this is free of cost for our guests'),
(22, 'restaurant, eat food, hungry, need to eat, have food, eateries', 'We have many fine restaurants located at convenient spots in each of our parks. '),
(23, 'power bars, food kioks, food vending, protein bar', 'Unfortunately, we don’t\' have power bars. But variety of food options are available inside the park with over 6 multi cuisine restaurants and other food outlets'),
(24, 'medical shop, medicines, medicine shop, buy tablets, buy medicine', 'We don\'t have a medical shop, but a first aid section which offers support in case of any untoward incidents. We also have 24x7 ambulance services from the park.'),
(25, 'toddler ride, child ride, children ride, kid ride, kids ride', 'Ride entry is based on the height of the guest. We have rides available for guests above 75cm.'),
(26, 'age full ticket, age full price, age child price, age child ticket,age kid ticket, age kid price', 'Ticket prices are based on the height of the guest. A regular ticket is required for guests above 140 cm. Child ticket is applicable for guests between 140cm and 90cm and kids ticket is applicable for kids between 90cm and 75cm. No entry fee is applicable for toddlers under 75cm.'),
(27, 'foreigner ticket, other nations, other nationalities, other citizens, foreigner entry', 'We don\'t differentiate our guests based on the ethnicity. Same price are applicable for all our guests including foreign nationals'),
(28, 'timings, open time, close time, open now, closed now, open weekend, close weekend, open weekday, close weekday, close peak day, open peak day, timing, timeing, office timing, office time, office timeing', 'The park is open from 11 AM till 7 PM on peak days and 11 AM till 6 PM on regular days'),
(29, 'waterpark timings, water park timings, water park open, water park close, waterpark open, waterpark close, waterpark weekday, waterpark peak day, waterpark weekend, water park weekday, water park weekend, water park peak day', 'The water park is open from 12 PM till 6 PM on all days'),
(30, 'happy hours, concession hours', 'We don\'t have a special rate based on time of entry.'),
(31, 'after hours entry, afterhours entry, afterhour entry, after closing entry, late evening entry, early morning entry', 'We don\'t have a special rate based on time of entry.'),
(32, 'security guard, life guard, security people, guarding park', 'Yes, we have required number of life guards near all the water rides to ensure the safety of our guests. We also have security guards guarding the park '),
(33, 'ambulance, take to hospital', 'Yes, we have ambulance available inside the park across the working hours'),
(34, 'children safe, child safe, women safe, child safety, women safety, woman safe, woman safety, kids safe, kids safety', 'Yes, all our guests are completely safe inside the park. We keep the safety of our guests at paramount priority. '),
(35, 'separate pool ladies, separate pool women, special pool ladies,  special pool women, private pool women, private pool ladies, ladies rides, women rides, women rain dance, ladies rain dance', 'We have separate pools for ladies, kids and families in our water park. We also have separate space for them for rain dance. But we don\'t have separate places in our dry rides.'),
(36, 'careless accidents, carelessness, safety record, past accidents, past casualties, past injuries', 'We have one of the best safety records in the world with no accidents due to carelessness'),
(37, 'changes past accident, mechanism accident, measures accident, prevent accident, safety measures', 'We have one of the best safety records in the world with no accidents due to carelessness. We have best of processes and safety mechanisms to ensure the safety and security of our guests.'),
(38, 'nanny service, babysitting, baby keeping, take care kids, take care children, child care, creche, aayah service', 'No, we don\'t have such facilities. We always recommend kids to be acompanied by an adult'),
(39, 'senior citizen discount, elders discount, senior special price, senior discount, elders special price', 'Yes, there is a discounted special rate for senior citizens above 60 years.'),
(40, 'group booking, group discount, corporate group, company group, employee group, large gathering discount, group offer, group price, group pricing, group special rate, group rate', 'Yes, we do have special rates for group bookings. You could connect to our team at +91-9945557777 or marketing.blr@wonderla.com for more details'),
(41, 'school trip rate, school trip pricing, school pricing, school booking, school disccount', 'Yes, we do have special rates for school bookings. You could connect to our team at +91-9945557777 or marketing.blr@wonderla.com for more details'),
(42, 'school id, school id card, school student discount, school identity card, school student offer, school student rate, school student concession', 'We don\'t offer concessions on showing school IDs, but we have special rates for school group bookings. You could connect to our team at +91-9945557777 or marketing.blr@wonderla.com for more details'),
(43, 'locker, personal belonging, cloak room, safety locker, safe locker, keep valuables, store luggage, locker cost, safe locker cost, luggage storage, luggage storage cost, store items', 'Yes, we have highly secure locker systems powered by RFID tags. You could use the locker at a price of INR 170 and a security deposit of INR 100 for a day.'),
(44, 'theft locker, stolen locker, locker broken, valuable stolen', 'No, we have never had any such incident. The lockers we offer are of highest safety standards which work with specially designed RFID tags'),
(45, 'cctv, cameras park, survelliance cameras, cameras inside', 'Yes, we have CCTV cameras in most of the key areas inside the park to ensure safety and security of our guests.'),
(46, 'address, location, directions, whereabout, zip code, pincode, pin code', 'Away from the maddening crowd, we are located in Jadenahalli on the Mysore road, 28 km from Bangalore.'),
(47, 'water quality, water borne diseases, treatment of water, water treatment, reverse osmosis, ro, ro plant, hygiene of water, water hygiene, cleanliness water, clean water, water pollution, water quality, quality of water', 'Feel safe with us. We have in house RO plant to ensure that water is absolutely clean and hygienic. Water quality is monitored continuously.'),
(48, 'water temperature, heated pools, cold water, temperature, solar power, winter', 'We provide temperature controlled water in the pools using solar panels mounted atop various buildings. We are committed to providing you’re a great experience through the year.'),
(49, 'drinking water, water bottle, bottled water, carry water bottle', 'We’ve fitted multiple purified, potable water outlets at various locations in our parks. However, if packaged water is your thing, you could buy it at the kiosks or food counters.'),
(50, 'outside food, food from outside, packed food, carry food, own food', 'Unfortunately, not. We don’t allow food from outside in the park premises. But we are sure you would enjoy the delicious food available at our multi cuisine restaurants and eateries inside the park.'),
(51, 'kind of food, cuisines, what food, softdrinks, ice creams, icecreams,  veg non-veg, non-veg, non vegetarian', 'You can choose from a wide range from South Indian food to multi-cuisine outlets. Soft drinks, ice creams and bottled potable water are also available..'),
(52, 'dress code, what to wear, Saree, Dupatta, Shawls, Scarves, Hijab, Mafta, Habit, wear, what should I wear', 'Apparels made of nylon or 100% synthetic material only are allowed at the water rides. Almost all our rides involve moving parts and to avoid potential risk of any accidents, refrain from wearing long or loose garments like Saree/Dupatta/ Shawls/Scarves/ Hijab/Mafta/Habit etc.'),
(53, 'buy dresses, forgot dress, purchase clothes, apparel store, prices of clothes, clothing store, shop for clothes, shop for swimwear, cost of clothes, swim accessories, dress accessories', 'You can bring your own swim accessories. And you could purchase synthetic clothes at stores in the park near changing room area at a nominal price starting Rs. 100/-'),
(54, 'fastrack ticket, fastrack, fastrack entry, cost of fastrack ticket, fastrack pass, fasttrack, fast track, fast track entry', 'Fastrack tickets make your visit a privileged one. With that, you can enjoy your favourite rides without long queues. '),
(55, 'including food, ticket includes food, ticket with food, entry with food', 'Sorry, food is not included in the ticket. There are multiple food outlets within the park to provide quality food at nominal cost.'),
(56, 'floats, water floats, floaters, floater for kids, kids floaters, inflatable water tubes, water tubes, pool rafts', 'Sorry, we do not provide inflatable floats for children. However, you are free to carry them inside the park.'),
(57, 'smoking, cigarette, lighters, lighter, allow smoking, smoking area', 'Sorry, we have a very strict no smoking policy. Cigarette packs, lighters and matchboxes will be confiscated at the entrance.'),
(58, 'weather, all seasons, rainy season, rains, during rain', 'Yes, we do operate on all weather conditions and the park will be open.'),
(59, 'ideal time, time required, complete all the rides, finish all rides', 'It would take about 3 hours to experience all the rides. However, we encourage you to take up your favourite rides multiple times have the best of fun.'),
(60, 'rides, rides available, unique rides, total number of rides', 'We\'ve got land rides, water rides, high thrill rides and special rides for kids. All in all, we have about 50 unique rides to bring you wholesome entertainment.'),
(61, 'land rides, landrides, land rides available, list of land rides', 'We\'ve got adventures of chikku, cinemagic 3D, musical fountain and laser show, hang glider, pirate ship, net walk, wonder splash, termite coaster and train, dungeon ride, crazy cars and crazy wagon.'),
(62, 'water rides, waterrides, water rides available, list of water rides', 'We\'ve got jungle lagoon, lazy river, boomerang, harakiri, fun racers, uphill racers, banded kraits, twisters, water pendulum, rain disco, wave pools, play pools and wavy fall.'),
(63, 'high thrill rides, list of high thrill rides, highthrill rides, thrill rides', 'We\'ve got flash tower, equinox, insanity, hurricane, y-scream, maverick, mixer, drop zone, wonderla bamba'),
(64, 'kids rides, children rides, kidrides, rides for children, rides for kids', 'We\'ve got magic mushroom, mini venice, mini pirate ship, merry ghost, kiddies wheel, mini express, moon walker, jumping frog, flying jumbo, lion swing, funky monkey, carousel and convoy'),
(65, 'latest, new stuff, new ride, latest in wonderla', 'Wonderla brings to you Recoil - India\'s First Reverse Looping Rollercoaster. Experience it for the first time in India.'),
(66, 'recoil, reverse looping rollercoaster,', 'Recoil gives you a whole new experience of thrill and it has been brought to you exclusively by Wonderla.'),
(67, 'regular days, peak days, regular and peak, regular and special, special days', 'Monday to Friday and all working days are regular days. Saturdays, Sundays, public holidays and special days declared by us are peak days.'),
(68, 'electronic gadgets, carry laptop, carry mobile, take mobile, bring mobile, carry ellphone, device, electronics', 'Yes, you can carry any electronic device that you wish. But please note we will not be responsible for any of your belongings and it will be at your own risk.'),
(69, 'camera, video camera, phone camera, digital camera, dslr, digicam', 'Yes, you can carry any cameras inside. But please note we will not be responsible for any of your belongings and it will be at your own risk.'),
(70, 'discount for women, women ticket, ladies ticket, ', 'There is no special discount for women. It’s the same price as adults.'),
(71, 'cities', 'We have three parks - Bangalore, Kochi and the recently opened one in Hyderabad.'),
(72, 'voucher, confirmations, booking vouchers, ticket delivery', 'Book your tickets here and you\'ll get an instant confirmation through email & sms. Just flash this message at the entrance to gain entry'),
(73, 'worth visiting, should i visit, why should i visit, why should i come, should i come, come with family, come with kids, come with children', 'Yes, of course. If you are in Bangalore and have not visited Wonderla even once, you are certainly missing something. There is so much out there to experience.'),
(74, 'special about, so special', 'We are one of the best & the largest amusement parks in the India and offer whole new meaning to entertainment. That makes us truly special.'),
(75, 'owner, founder, promoter, started by', 'Kochouseph Thomas Chittilappilly is the founder of Wonderla. He is an Indian businessperson, writer, philanthropist and humanist. He is also the founder Chairman of V-Guard Industries Ltd.'),
(76, 'ceo, chief executive', 'Dipy Sachdeva is the CEO of Wonderla Holidays Ltd. And he has been with us since August 2015.'),
(77, 'head of marketing, cmo, chief marketing', 'Bimelundu Tarafdar heads the marketing function for us and he is the one who led the re-branding exercise successfully.'),
(78, 'ecofriendly,eco,environment,eco-friendly', 'Yes, it is absolutely eco-friendly. The whole park has been designed in such a way to help conserve our environment.'),
(79, 'sustainability,sustainable,renewable,recycle,recycled,recycling', 'We\'ve taken various steps to ensure sustainability of our mother nature by harvesting, conserving & recycling water, using solar power panels and eco-friendly materials.'),
(80, 'visitors,people,people come,average number of people', 'We have served to about 100,000 people so far since launch.'),
(81, 'future plans,expansion,enhancement', 'We are expanding both horizontally & vertically. Horizontally by enhancing the existing properties and vertically by adding new properties. '),
(82, 'to have fun,enjoy,how old fun,how old enjoy', 'Age is not at all a bar to have fun at the park. You can be an infant or a senior, we have something for everyone.'),
(83, 'Adventures of Chikku', 'Experience the Adventures of Chikku, a state-of-the-art ride that combines a 3D film with physical and environmental effects, in an air-conditioned theatre.'),
(84, 'Cinemagic 3D', 'Cinemagic 3D is an absolute family thriller that brings you the essence virtual reality cinema.Experience HD-3D video, multi-channel surround sound, high power blowers and hydraulics-assisted seats that move in perfect synchronization with the visual content.'),
(85, 'Musical Fountain and Laser Show', 'Wonderla boasts of India\'s only indoor musical fountain. Watch a colourful display as water takes centre stage and dances gracefully to the beat of music and brilliantly choreographed lighting - Followed by a spectacular Laser Show.'),
(86, 'Hang Glider', 'Hang Glider is an adventurous ride that takes the riders on an air trip at a dizzying height.\r\n'),
(87, 'Pirate Ship', 'The Pirate ship is not for the weak hearted. This swing, in a shape of a wooden craft, swings to an arc of 180 degrees - giving you a sudden rush of adrenaline through its acceleration.'),
(88, 'Net Walk', 'The Net Walk is a new and totally safe ride for small boys and girls where they have to walk along with a slightly elevated walkway made of netting on three sides. The essence of the ride is to maintain balance while moving forward.'),
(89, 'Wonder Splash', 'Sit in a bogie that resembles a raft made of logs. The bogie is hauled up a hill using a conveyor and then hurled down a steep incline at a dizzying speed and splashes into a shallow pool.'),
(90, 'Techno Jump', 'The Techno Jump has 14 spokes arranged around a hub. At the outer end of each spoke is a capsule that can seat three. The spokes are raised and lowered hydraulically, while the whole contraption spins like a carousal.'),
(91, 'Sky Wheel', 'Firmly straddling a 13-storey-high tower, the giant wheel with a diameter of 30 meters, gives riders a bird\'s eye view of the park and its surroundings.'),
(92, 'Toon Tango', 'The Toon Tango is a ride for all the age groups where twosomes (or threesomes if you can squeeze yourselves in) are seated in one of the four capsules that emanate from a central pivot and are gently spun around as if in a waltz.'),
(93, 'Termite Coaster and Train', 'Inside a termite coaster mound are two popular rides - the Termite Train and the Termite Coaster. The Train winds along a crazy track with sharp curves, steep climbs and dizzying drops. The Coaster will take you screaming, up and down hair-raising loops.'),
(94, 'Dungeon Ride', 'The Dungeon Ride is an intense and exciting ride though a dungeon haunted by its notorious jail warden\'s ghost.'),
(95, 'Crazy Cars I & II', 'Fasten your seat belts and go Crazy Car driving. This family fun ride will have you going to be a bumpy ride, jostling for space with the other drivers.'),
(96, 'Crazy Wagon', 'Crazy Wagon is a massive family ride themed like a horse-wagon that oscillates insanely while it swings in every possible direction.'),
(97, 'Jungle Lagoon', 'Jungle Lagoon - Its an an exhilarating and fun jungle-themed family water attraction.'),
(98, 'Lazy River', 'If all you want is to wallow in the waters and relax, get yourself a float and drift along the meandering lazy river.'),
(99, 'Boomerang', 'Boomerang is a thrilling water ride with a float moves into a closed tunnel and then suddenly drops from a height into a large boomerang shaped water slide resulting in a repeated to and fro motion.'),
(100, 'Harakiri', 'This water slide takes you down, levels off at mid-way, and then takes you down again. After you have reached the bottom it carries you up with the force of your momentum till as far as you\'ll go.'),
(101, 'Fun Racers', 'Fun Racers are water slides where you slither down lying prostrate on rubber mats. The downward slide is interspaced with level portions for a wonderful experience.'),
(102, 'Uphill Racers', 'Uphill Racers are similar to Fun Racers except that instead of level spaces these rides have ups and downs.'),
(103, 'Banded Kraits ', 'Banded Kraits are a water slide in which you sit on rubber rafts and make your way down, negotiating curves and loops on the way, to end up splurging in a shallow pool.'),
(104, 'Water Pendulum', 'This is a unique water slide where riders move up and down like a pendulum in a wide U shaped slide before coming to a gradual halt.'),
(105, 'Rain Disco', 'As the name suggests, rain disco is all about getting wet \'n\' absolutely wild.'),
(106, 'Wave Pools', 'If a beach is what Bangalore lacked, Wonderla offers you two, complete with artificial waves and even a lighthouse.'),
(107, 'Play Pools', 'If wave pools don\'t catch your fancy, there\'s the play pool in which people of all ages can splurge and frolic.'),
(108, 'Wavy and Vertical Fall', 'The Wavy and Vertical Falls are water slides similar to Twisters except that there are no loops to slow you down. The ride starts from the height of a six storey building, and before you know it you are already in the pool.'),
(109, 'Flash Tower', 'Flash tower is a free fall ride over 40 meters tall that is sure to get your adrenaline rush going.'),
(110, 'Equinox', 'The equinox is an ultimate thrill ride. At its peak the riders travel upside down at 70 kmph 16 meters above the ground - while experiencing a multitude of thrilling forces.'),
(111, 'Insanity', 'As the name suggests, this ride will drive you insane. Get turned, twisted, and swirled in every direction possible through sophisticated hydraulics and machine movements.'),
(112, 'Hurricane', 'The Hurricane is a giant three-bladed fan with seating capsules along the blades of the fan. As the fan turns, each capsule also rotates on its own axis, giving you the feeling of being caught in a whirlwind.'),
(113, 'Y-Scream', 'Sixteen capsules, with two seats each, are suspended from a bow-like structure from a height of 20 meters. The bow swings and turns like a joint wheel, while the capsules themselves turns on their axis, making the occupants scream.'),
(114, 'Maverick', 'Maverick, like the name suggests, is a ride that doesn\'t go by the rules. It turns. It twists. It tilts. It swivels. It turns you upside down and every which way possible.'),
(115, 'Mixer', 'The Mixer is a ride that gives you the feeling of being caught in a mixer or blender. The capsule gyrates and moves in all possible directions giving you a ride you\'ll never forget.'),
(116, 'Drop Zone', 'If bungee jumping is what you fancied, here\'s something just as exhilarating. Securely seated around a vertical column, Drop Zone hoists you up to a dizzying height of 17 meters, and then just let\'s go, plummeting you to earth with all the force that gravity can muster.'),
(117, 'Wonderla Bamba', 'A high thrill 18 seater thriller with the wonderland mascot, takes you up and down in clockwise and anti-clockwise directions, with sudden, unexpected accelerations and abrupt drops from a height of 5.5 meters.'),
(118, 'Magic Mushroom', 'Magic Mushroom is a carousel ride with seats shaped like Ants & Honey bees. The ride carries a theme of Honey Bees rotating around a Mushroom.'),
(119, 'Mini Venice', 'Mini Venice can accommodate 24 kids. The ride recreates the feeling of gondola ride through the canals of Venice.'),
(120, 'Mini Pirate Ship', 'This is a miniature version of the pirate ship and is meant exclusively for toddlers, who can be seated safely harnessed while the boat swings up and down.'),
(121, 'Merry Ghost', 'This is another colourful merry-go-round for little children under the age of ten, which gently swings up and down as it spins round a brilliantly decorated spindle.'),
(122, 'Kiddies Wheel', 'This is a miniature giant wheel specially designed for little kids, which provides them with all the thrills of the larger version, without being as scary.'),
(123, 'Mini Express', 'This is a tiny, colourful ride for little kids that takes them frolicking round the circuit in absolute merriment.'),
(124, 'Moon Walker', 'This is wavy slide where little children can slither down. The sides of the slide are padded making it safe even for toddlers.'),
(125, 'Jumping Frog', 'This is a merry-go-round specially designed for little children who are seated in capsules that resemble frogs. As the merry-go-round spins, the frogs leap gently into the air, giving the children a fairy-tale ride.'),
(126, 'Flying Jumbo', 'This is a wavy merry-go-around where participants seated like mahouts on flying elephants spin in a circle while also moving up and down vertically.'),
(127, 'Lion Swing', 'This is a highly enjoyable ride for young children where the riders sit mounted on a log guarded by a lion and its cub. The ride takes you spinning like a top continuously changing the angle of its pivot. This is the slow ride for the not so adventures.'),
(128, 'Funky Monkey', 'Funky Monkey is a kiddies\' version of Drop Zone specially designed for children in the age group of 6-12. The ride takes them to a maximum height of four meters, giving them a miniature experience of the free-fall.'),
(129, 'Carousel', 'An evergreen favourite with children, the carousel is a merry-go-round with colourful horses that takes children galloping around in circles. Brilliantly illuminated after sundown, the carousel is a big draw with kids under the age of ten.'),
(130, 'Convoy', 'This ride for the tiny tots consists of a convoy of mini trucks rollicking over a hilly terrain.'),
(131, 'apply job, vacancy, vacancies, open positions, work opportunity, work opportunities, career, career opportunities, career opportunity', 'Thanks for showing interest to work with us. Please apply through http://www.wonderla.com/careers/apply-now.html and we\'ll get back to you in case of a potential match.'),
(132, 'business proposal, marketing proposal, propose idea, business idea', 'Thanks for contacting us. I would suggest you to write to marketing.blr@wonderla.com with more details an appropriate personnel from our team will get in touch.'),
(133, 'send pic, send photo, send photograph, email photograph', 'Sure, please send a request to mail.blr@wonderla.com with your name & date of visit and we\'ll help you.'),
(134, 'direct online, recommend online, suggest online, suggest direct, suggestion booking', 'We would recommend you to book through our website www.wonderla.co.in. It is safe & secure and you get instant confirmations. This will help you avoid thr queue & delay in the booking counter.'),
(135, 'reach you, contact you, get touch you, email you, call you', 'I would suggest you to write to mail.blr@wonderla.com with more details an appropriate personnel from our team will get in touch. You could connect to our team at +91-9945557777.'),
(136, 'too costly, expensive, prices high, price high', 'Please note that the prices are competitive and we have tried to keep it realistic considering the kind of the state of the art entertainment we offer.'),
(137, 'gst, taxes, tax slab, tax, entertainment tax, gst rate, goods services tax, service tax', 'As per the tax slabs laid out by the Govt. of India, the entertainment GST of 28% applies on top of the ticket prices.'),
(138, 'yes-proceed', 'Thanks for choosing to visit us. Please complete the transaction through the link below:'),
(139, 'no-cancel', 'Thanks. Is there something else that we can help you to make you visit us.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `quesans`
--
ALTER TABLE `quesans`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `quesans`
--
ALTER TABLE `quesans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
