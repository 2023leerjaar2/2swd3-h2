-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 29 jan 2024 om 18:19
-- Serverversie: 10.4.28-MariaDB
-- PHP-versie: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ala_6`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `Naam` varchar(50) NOT NULL,
  `Achternaam` varchar(50) NOT NULL,
  `e-mail` varchar(50) NOT NULL,
  `Wachtwoord` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `admin`
--

INSERT INTO `admin` (`id`, `Naam`, `Achternaam`, `e-mail`, `Wachtwoord`) VALUES
(1, 'Admin', 'Admin', 'Admin@mborijnland.nl', 'Admin123'),
(2, 'Adnan ', 'Arabbaj Akoudad', 'adnanarabbaj@gmail.com', '128021');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `contact_Naam` varchar(50) NOT NULL,
  `contact_Achternaam` varchar(50) NOT NULL,
  `contact_Email` varchar(50) NOT NULL,
  `contact_Status` varchar(50) NOT NULL,
  `contact_Bericht` text DEFAULT NULL,
  `verwijderd` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `contact`
--

INSERT INTO `contact` (`contact_id`, `contact_Naam`, `contact_Achternaam`, `contact_Email`, `contact_Status`, `contact_Bericht`, `verwijderd`) VALUES
(11, 'Muhammet', 'Aslan', 'muhammet@gmail.com', 'Gelezen', 'raaaaaaaaaaaaaa', 0),
(12, 'Adnan', 'Arabbaj', 'Adnan@gmail.com', 'Gelezen', 'Praat veel onzinddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', 0),
(13, 'safoune', 'Lahoua', 'safoune@gmail.com', 'Gelezen', ':)', 1),
(15, 'Ismael', 'balaban', 'ismael@gmail.com', '', 'Je moeder vriend', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `recepteboeken`
--

CREATE TABLE `recepteboeken` (
  `Boek_id` int(11) NOT NULL,
  `Boek_naam` varchar(100) NOT NULL,
  `Boek_recepten` text DEFAULT NULL,
  `Boek_Filter` varchar(100) DEFAULT NULL,
  `Boek_prijs` decimal(10,2) DEFAULT NULL,
  `Status` varchar(50) NOT NULL,
  `Boek_img` text NOT NULL,
  `Recept_img` text NOT NULL,
  `Boek_link` varchar(255) DEFAULT NULL,
  `Korting_prijs` decimal(10,2) DEFAULT NULL,
  `Korting_startdatum` date DEFAULT NULL,
  `Korting_einddatum` date DEFAULT NULL,
  `ingredienten` text DEFAULT NULL,
  `Recenties` text DEFAULT NULL,
  `Originele_prijs` decimal(10,2) DEFAULT NULL,
  `Nieuw_status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `recepteboeken`
--

INSERT INTO `recepteboeken` (`Boek_id`, `Boek_naam`, `Boek_recepten`, `Boek_Filter`, `Boek_prijs`, `Status`, `Boek_img`, `Recept_img`, `Boek_link`, `Korting_prijs`, `Korting_startdatum`, `Korting_einddatum`, `ingredienten`, `Recenties`, `Originele_prijs`, `Nieuw_status`) VALUES
(1, 'Smokey Goodness BBQ Snack Attack', 'Voorbereiding: 10 minuten\r\nBereiding: 40 minuten\r\n\r\n \r\n\r\nMeng voor de wortelbleekselderijsalade alle ingrediënten door elkaar in een kom en breng op smaak met zout en versgemalen zwarte peper. Verkruimel voor de Blue Cheese Topping de blauwe kaas in een andere kom. Meng hem met de mayonaise en bieslook, en breng op smaak met zout en versgemalen zwarte peper. Bereid een BBQ of grill voor op direct grillen en verhitdeze tot bij het rooster een temperatuur van 200 °C is bereikt. Doe alle ingrediënten voor de Hot Sauce Glaze samen in een pannetje en laat op de hoek van de BBQ op laag vuur smelten.\r\n\r\nRoer dan goed door elkaar. Meng het knoflook- en uiengranulaat door het kippengehakt en vorm vier burgers. Bestrooi deze met zout en versgemalen zwarte peper en gril ze enkele minuten tot ze mooi op kleur zijn. Draai ze om met een spatel en gaar verder tot ze een kerntemperatuur hebben bereikt van 70 °C. ', 'geen vega', 24.99, '', '900x1200.jpg', '', 'https://www.bol.com/nl/nl/p/smokey-goodness-bbq-snack-attack/9300000130268836/?bltgh=p0eHF-4lE7n6wtv8qM9COA.2_12.13.ProductImage ', NULL, NULL, '2023-12-20', 'Ingrediënten:\r\nWortel-Bleekselderijsalade:\r\n250 g geraspte wortelen\r\n2 stengels bleekselderij, fijngehakt\r\n2 el olijfolie\r\n1 el citroensap\r\nZout en zwarte peper naar smaak\r\nBlue Cheese Topping:\r\n100 g verkruimelde blauwe kaas\r\n2 el mayonaise\r\n1 el fijngehakte bieslook\r\nZout en zwarte peper naar smaak\r\nHot Sauce Glaze:\r\n2 el hot sauce\r\n1 el honing\r\n1 el boter\r\n1 tl worcestersaus\r\nKippenburgers:\r\n500 g kippengehakt\r\n1 tl knoflookgranulaat\r\n1 tl uiengranulaat\r\nZout en zwarte peper naar smaak\r\n', NULL, 24.99, 0),
(2, 'Smokey Goodness Burgers & BBQ Bites', 'Voorbereiding: 10 minuten\r\nBereiding: 40 minuten\r\n\r\n \r\n\r\nBereid een BBQ met deksel voor op indirect grillen en verhit deze tot een temperatuur van 130 °C is bereikt.\r\n\r\n \r\n\r\nSchraap met eenlepel de lamellen voorzichtig uit de portobello’s. Smeer de portobello’s en oesterzwammen in met olijfolie. Voeg de rook-houtsnippers toe aan de gloeiende kolen, leg de portobello’s in de smoker en laat 15 minuten roken. Leg de oesterzwammen erbij en rook nog 15 minuten.\r\n\r\n \r\n\r\nSnijd ondertussen de brioche broodjes open en verkruimel de feta. Haal de paddenstoelen als ze zachten gaar zijn geworden van de BBQ en trek ze in dunne reepjes.\r\n\r\n\r\nMeng ze in een hittebestendige kom met de harissasaus. Voeg zout en versgemalen zwarte peper naar smaak toe en zet nog 5 minuten in de smoker om op te warmen.\r\n\r\n \r\n\r\nVerdeel de ranch dressing over de briochebroodjes, leg hierop de warme harissa-paddenstoelen en verdeel de fetacrumble, peterselie en fijngehakte schil van de citroen over de broodjes. Maak af meteen laatste draai van de zwarte-pepermolen.', 'geen vega', 24.99, '', 'Burgers-BBQ-Bites.jpg', '', 'https://www.bol.com/nl/nl/p/smokey-goodness-burgers-bbq-bites/9200000125167177/?bltgh=ivd0UfrKOqnMSnkm-TdHrA.irg9-If3tgxQGoUOFWJInA_0_16.19.ProductImage', NULL, NULL, NULL, 'Ingrediënten:\r\n\r\nGerookte Harissa-Paddenstoelen:\r\n- 4 portobello\'s\r\n- Oesterzwammen\r\n- Olijfolie\r\n- Rook-houtsnippers\r\n- Zout en zwarte peper naar smaak\r\n- Harissasaus\r\n\r\nBroodjes en Toppings:\r\n- Brioche broodjes\r\n- Feta, verkruimeld\r\n- Ranch dressing\r\n- Peterselie, gehakt\r\n- Schil van een citroen, fijngehakt\r\n- Zwarte peper naar smaak\r\n\r\n\r\n', NULL, 24.99, 0),
(3, 'BBQ - Fire, Food & Friends', 'Pel voor de chutney de uien en snijd ze in kwarten. Verhit 1 eetlepel olie in een skillet en bak de uien op het snijvlak tot donkerbruin/zwart. Zet het vuur laag en voeg de overige ingrediënten toe. Laat langzaam garen tot de uien zacht zijn.\r\n\r\nBereid een BBQ voor op indirect grillen en verhit deze tot een temperatuur van 200 °C is bereikt. Bekleed de skillet met bakpapier en verdeel het bladerdeeg over de bodem, waarbij je een opstaande rand vormt.\r\n\r\nDuw de overlappende randjes goed op elkaar en prik de bodem in met een vork. Verkruimel het beschuit en verdeel het over het bladerdeeg; dit vangt het vocht op en geeft een krokantere bodem. Beleg de bodem achtereenvolgens met de plakken spek en kaas.\r\n\r\nKlop de eieren los met de zure room en roer er wat zout en peper en het paprikapoeder en bieslook door. Verdeel het mengsel over de kaas. Zet de skillet op het rooster van de BBQ en sluit de deksel. Bak de spekplaatkoek in ongeveer 30 minuten gaar, tot het bladerdeeg krokant en de vulling goudbruin is. Rol je mouwen op, serveer de spekplaatkoek met de lauwwarme uienchutney en gebruik je ellebogen om je tafelgenoten op afstand te houden terwijl je stuk na stuk verorbert.', 'geen vega', 15.99, '', 'Fire-Food-Friends-BBQ-Fire-Food-Friends.jpg', '', 'https://www.bol.com/nl/nl/p/fire-food-friends-bbq-fire-food-friends/9300000103683500/?bltgh=ohdpFKtE96vGjXRv0AxLzA.2_43.44.ProductImage', NULL, NULL, NULL, 'Ingrediënten:\r\n\r\nUienchutney:\r\n- Uien, gepeld en in kwarten gesneden\r\n- 1 eetlepel olie\r\n- Overige chutney-ingrediënten\r\n\r\nSpekplaatkoek:\r\n- Bladerdeeg\r\n- Beschuit, verkruimeld\r\n- Plakken spek\r\n- Kaas\r\n- 2 eieren\r\n- Zure room\r\n- Zout, peper, paprikapoeder, bieslook\r\n\r\n', NULL, 15.99, 0),
(4, 'Winter BBQ', 'Meng de ingrediënten voor de kruidige rub in een kom.\r\n\r\nWrijf de biefstukken in met de kruidige rub aan beide zijden. Laat ze 15-30 minuten marineren.\r\n\r\nVerhit de grill voor op middelhoog vuur.\r\n\r\nGrill de biefstukken naar gewenste gaarheid, meestal 4-5 minuten per kant voor medium-rare. Laat ze rusten op een bord.\r\n\r\nTerwijl de biefstukken rusten, maak je de rode wijn saus. Smelt de boter in een pan op middelhoog vuur. Voeg de sjalot en knoflook toe en bak tot ze zacht zijn.\r\n\r\nVoeg de rode wijn toe en laat het geheel sudderen tot de wijn met de helft is verminderd.\r\n\r\nVoeg de runderbouillon toe en laat de saus opnieuw sudderen tot deze iets is ingedikt. Breng op smaak met zout en peper.\r\n\r\nServeer de gegrilde biefstukken met de rode wijn saus eroverheen gegoten.', 'geen vega', 16.99, '', 'Winter-BBQ.jpg', '', 'https://www.bol.com/nl/nl/p/winter-bbq/9200000115193000/?bltgh=iVT1-Dm17bkKqFFvyu5BKA.2_18.21.ProductImage', NULL, NULL, NULL, 'Gegrilde Biefstuk met Rode Wijn Saus:\r\n\r\nKruidige Rub:\r\n- Biefstukken\r\n- Kruidige rub-ingrediënten (specifieke kruiden naar keuze, zoals knoflookpoeder, uienpoeder, paprikapoeder, zout, en peper)\r\n\r\nRode Wijn Saus:\r\n- Boter\r\n- Sjalot, fijngesneden\r\n- Knoflook, fijngesneden\r\n- Rode wijn\r\n- Runderbouillon\r\n- Zout en peper naar smaak\r\n\r\n\r\n', NULL, 16.99, 0),
(5, 'Smokey Goodness The Best of BBQ Birds', 'Ontvlies de spareribs door een kruiskopschroevendraaier tussen het longvlies en het bot aan de achterzijde van de rack te steken. Wrik de schroevendraaier voorzichtig heen en weer totdat deze over de gehele breedte tussen vlies en het bot zit. Trek deze daarna naar je toe en trek zo het hele vlies van de rack af. Smeer iedere rack aan beide zijden lichtjes in met sriracha saus en kruid gelijkmatig over beiden zijden van de spareribs met het zout en de grof gemalen zwarte peper.\r\n\r\nBereid een BBQ met deksel voor op indirect grillen op 130 °C. Voeg de rookhoutchunks aan de kolen toe en plaats de gekruide spareribs op het rooster. Gaar de ribben circa 3 uur waarbij je om het half uur de ribben nat spuit met Smokey’s pig spray. Pak de ribben in aluminiumfolie als deze mooi goudbruin van kleur zijn waarbij je ze voor je de folie dichtvouwt een klont boter op de ribben legt. Gaar de ribben met de bolle zijde naar beneden circa anderhalf uur.\r\n\r\nVerwarm voor de bourbon peach BBQ saus de boter in een pan en bak hierin de witte ui, knoflook en rode peper tot de ui glazig is. Voeg de basterdsuiker toe, roer goed door en laat de suiker iets karamelliseren. Blus af met de appelciderazijn en voeg daarna de overige ingrediënten toe. Wil je hem als glaze voor spare ribs gebuiken, houd de saus dan warm. Wil je lekker lepelen bij gegaard BBQ-vlees, koel dan de saus terug en bewaar eventueel maximaal 5 dagen gekoeld.', 'geen vega', 16.99, '', 'The-Best-OF-BBQ-Birds.jpg', '', 'https://www.bol.com/nl/nl/p/smokey-goodness-the-best-of-bbq-birds/9300000153232479/?bltgh=n3eCZpiQfSGvLIfhJuVO5g.2_50.56.ProductImage', NULL, NULL, NULL, 'Ingrediënten:\r\n\r\nSpareribs:\r\n- Spareribs rack\r\n- Sriracha saus\r\n- Zout\r\n- Grof gemalen zwarte peper\r\n- Rookhoutchunks\r\n- Smokey\'s pig spray\r\n- Aluminiumfolie\r\n- Boterklontje\r\n\r\nBourbon Peach BBQ Saus:\r\n- Boter\r\n- Witte ui, knoflook, rode peper (fijngehakt)\r\n- Basterdsuiker\r\n- Appelciderazijn\r\n- Bourbon\r\n- Perzikjam\r\n- Tomatenketchup\r\n- Worcestersaus\r\n\r\n', NULL, 16.99, 0),
(6, 'Smokey Goodness Winter BBQ', '\r\nBenodigdheden\r\nhet rooster en zet opzij. Bestrooi de burgers met grof zeezout en versgemalen zwarte peper en gril ze aan beide zijden tot ze een kerntemperatuur hebben\r\nBBQ met deksel voor direct grillen bereikt van 48 °C. Beleg ze met gietijzeren grillrooster kernthermometer\r\nBereidingswijze\r\nDuur: voorbereiding 10 minuten, bereiding 10 minuten.\r\nBereid een BBQ met gietijzeren grillrooster voor op direct grillen en verhit deze tot een temperatuur van 110 °C is bereikt.\r\nMeng voor de mosterdmayonaise alle ingrediënten vlot door elkaar.\r\nSnijd de burgerbuns doormidden en rooster ze kort op de hete grill. Bak het speck krokant op\r\nde plakken raclette en laat de\r\nkaas smelten terwijl je de burgers verder gaart tot maximaal 56 °C.\r\nVerdeel over elke onderste helft van de burgerbun 1 eetlepel mosterdmayonaise, leg hierop het gegrilde speck en verdeel de augurkjes en zilveruitjes erover. Leg de gegrilde burgers erop. geef de bovenste broodkapjes nog een goede lik mosterdmayonaise en dek de burgers ermee af. Vouw twee handen om de burger, sluit je ogen, neem een hap en neurie met volle mond je favoriete après-skinummer.\r\n46', 'geen vega', 32.99, '', 'Smokey-Winter-BBQ.jpg', '', 'https://www.bol.com/nl/nl/p/smokey-goodness-winter-bbq/9200000095348453/?bltgh=iVT1-Dm17bkKqFFvyu5BKA.2_18.19.ProductImage', NULL, NULL, NULL, 'Ingrediënten (4 personen):\r\n\r\nMosterdmayonaise:\r\n- 6 el mayonaise\r\n- 2 el grove mosterd\r\n- 1 el appelciderazijn\r\n- Zout en versgemalen zwarte peper\r\n\r\nBurgers:\r\n- 4 runderburgers (160-180 g)\r\n- 8 plakken speck (gedroogde ham)\r\n- Grof zeezout en zwarte peper\r\n- 200 g raclette\r\n- 30 g veldsla\r\n- 60 g augurkjes\r\n- 60 g zilveruitjes\r\n\r\nBroodjes:\r\n- 4 Bacon Potato BBQ Buns (of gewone burgerbroodjes)\r\n\r\n\r\n', NULL, 32.99, 0),
(7, 'Cobb Kookboek - Grillen als geen ander', 'Meng in een kom de olijfolie, knoflook, paprikapoeder, komijnpoeder, oregano, zout, peper en citroensap.\r\n\r\nVoeg de kipblokjes toe aan de marinade en zorg ervoor dat ze goed bedekt zijn. Laat het minimaal 30 minuten tot 2 uur marineren in de koelkast.\r\n\r\nRijg de gemarineerde kipblokjes aan spiesen.\r\n\r\nVerhit de grill op middelhoog vuur en vet deze lichtjes in om plakken te voorkomen.\r\n\r\nLeg de kipspiesen op de grill en gril ze ongeveer 8-10 minuten, regelmatig draaiend, tot ze gaar zijn en een mooie grillmarkering hebben.\r\n\r\nBestrooi de kipspiesen met verse peterselie voor garnering (optioneel).\r\n\r\nServeer de gegrilde kipspiesen met je favoriete bijgerechten, zoals een frisse salade of geroosterde groenten.', 'geen vega', 25.99, '', 'Cobb-Kookboek.jpg', '', 'https://www.bol.com/nl/nl/p/cobb-kookboek-grillen-als-geen-ander/9200000014979075/?bltgh=vYEEuuQE7K0NSS1ekhBFRw.2_6.12.ProductImage', NULL, NULL, NULL, 'Ingrediënten:\r\n\r\n- 500 g kipblokjes\r\n- 3 el olijfolie\r\n- 3 teentjes knoflook, fijngehakt\r\n- 1 tl paprikapoeder\r\n- 1 tl komijnpoeder\r\n- 1 tl oregano\r\n- Zout naar smaak\r\n- Zwarte peper naar smaak\r\n- Sap van 1 citroen\r\n- Verse peterselie voor garnering (optioneel)\r\n\r\n', NULL, 25.99, 0),
(8, 'Baas van de BBQ', 'Verwijder het membraan aan de achterkant van de spareribs.\r\n\r\nMeng in een kom de bruine suiker, gerookt paprikapoeder, knoflookpoeder, uienpoeder, komijnpoeder, zout en zwarte peper. Wrijf dit mengsel gelijkmatig over de spareribs aan beide zijden.\r\n\r\nVerpak de spareribs in plasticfolie en laat ze minstens 2 uur (of \'s nachts voor meer smaak) in de koelkast marineren.\r\n\r\nBereid intussen de barbecuesaus door alle ingrediënten in een sauspan te mengen. Breng aan de kook en laat sudderen op laag vuur gedurende 15-20 minuten, of totdat de saus iets is ingedikt.\r\n\r\nVerwarm de barbecue voor op indirecte hitte (ongeveer 120-150°C).\r\n\r\nPlaats de gemarineerde spareribs op de barbecue en sluit het deksel. Laat ze langzaam garen gedurende 3-4 uur of totdat het vlees mooi van het bot begint te komen.\r\n\r\nGedurende het laatste uur, bestrijk de spareribs regelmatig met de bereide barbecuesaus.\r\n\r\nHaal de spareribs van de grill, laat ze een paar minuten rusten en snijd ze dan in porties.', 'geen vega', 9.99, '', 'Baas-Van-De-BBQ.jpg', '', 'https://www.bol.com/nl/nl/p/baas-van-de-bbq/9300000111284543/?bltgh=vYEEuuQE7K0NSS1ekhBFRw.2_6.24.ProductImage', NULL, NULL, NULL, 'Ingrediënten:\r\n\r\nSpareribs:\r\n- Spareribs\r\n- Bruine suiker\r\n- Gerookt paprikapoeder\r\n- Knoflookpoeder\r\n- Uienpoeder\r\n- Komijnpoeder\r\n- Zout\r\n- Zwarte peper\r\n\r\nBarbecuesaus:\r\n- Ketchup\r\n- Bruine suiker\r\n- Appelazijn\r\n- Worcestersaus\r\n- Mosterd\r\n- Rode peper vlokken (optioneel)\r\n- Zout\r\n- Zwarte peper\r\n\r\n', NULL, 9.99, 0),
(9, 'Smokey Goodness No Worries BBQ', 'Duur:\r\nVoorbereiding: 20 minuten\r\nBereiding: 6-8 uur \r\n \r\nBereid een BBQ voor op indirect grillen en verhit deze tot een temperatuur van 135 °C is bereikt.\r\n \r\nOp de achterzijde (botkant) van de short ribs zit een taai vlies. Wrik een kruiskopschroevendraaier tussen bot en het vlies en maak een wrikkende en trekkende beweging om het gehele vlies van de botten te trekken. Aan de vleeszijde kan er een laag vet of vliesjes zitten. Indien aanwezig snijd deze met een klein mesje weg totdat je mooi schoon vlees hebt. Meng het zeezout en de zwarte peper en bestrooi de gehele short rib rijkelijk met het zout-pepermengsel. Schrik niet van de hoeveelheid peper, door de lange garing wordt de smaak hiervan een stuk milder.Leg de rookhoutchunks tussen de gloeiende kolen en leg de gekruide short ribs met de botzijde op het rooster in de BBQ en sluit de deksel. Houd de BBQ gedurende 5-6 uur op een constante temperatuur van 135 °C. Pak na 4 uur de short ribs in butcher paper en giet er net voor het dichtvouwen een beetje root beer bij. Vouw het papier dicht en gaar de ribben nog 1-2 uur verder tot een kerntemperatuur van 92 °C. De beef ribs zijn gaar als je erin prikt met je thermometer en je de juiste weerstand voelt.', 'geen vega', 32.99, '', 'No-Worries-BBQ.jpg', '', 'https://www.bol.com/nl/nl/p/smokey-goodness-no-worries-bbq/9200000102317442/?bltgh=vYEEuuQE7K0NSS1ekhBFRw.2_6.27.ProductImage', NULL, NULL, NULL, 'Ingrediënten:\r\n\r\n- Short ribs (hoeveelheid naar keuze)\r\n- Zeezout\r\n- Zwarte peper\r\n- Rookhoutchunks\r\n- Butcher paper\r\n- Root beer (kleine hoeveelheid)\r\n\r\n', NULL, 32.99, 0),
(10, 'We Can BBQ Too', 'Voorbereiding van de Varkensschouder:\r\n\r\nMeng de bruine suiker, gerookt paprikapoeder, knoflookpoeder, uienpoeder, komijnpoeder, mosterdpoeder, cayennepeper, zout en zwarte peper in een kom om de kruidenrub te maken.\r\nWrijf de varkensschouder grondig in met de kruidenrub, zorg ervoor dat het aan alle kanten goed bedekt is.\r\nWikkel de varkensschouder in plasticfolie en laat deze minstens 6 uur (bij voorkeur \'s nachts) in de koelkast marineren.\r\nBereiding van de BBQ:\r\n\r\nVerwarm je barbecue of smoker voor op een temperatuur van ongeveer 110-120°C.\r\nHet Roken van de Varkensschouder:\r\n\r\nPlaats de gemarineerde varkensschouder op het rooster van de barbecue, weg van directe hitte.\r\nRook de schouder gedurende 8-12 uur, afhankelijk van de grootte, tot de interne temperatuur 90-95°C bereikt.\r\nBereiding van de Barbecuesaus:\r\n\r\nTerwijl de varkensschouder rookt, meng alle ingrediënten voor de barbecuesaus in een pan.\r\nBreng het mengsel aan de kook en laat het 10-15 minuten sudderen tot het iets is ingedikt.\r\nHaal van het vuur en laat afkoelen.\r\nHet Serveren:\r\n\r\nHaal de gerookte varkensschouder van de barbecue en laat deze 30 minuten rusten.\r\nTrek het vlees uit elkaar met behulp van twee vorken (pulled pork).\r\nServeer de pulled pork op een broodje, besprenkeld met de zelfgemaakte barbecuesaus.', 'geen vega', 18.95, '', 'We-Can-BBQ-Too.jpg', '', 'https://www.bol.com/nl/nl/p/we-can-bbq-too/9300000038225439/?bltgh=vYEEuuQE7K0NSS1ekhBFRw.2_6.31.ProductTitle', NULL, NULL, NULL, 'Ingrediënten:\r\n\r\nKruidenrub voor Varkensschouder:\r\n- 1/2 kop bruine suiker\r\n- 2 el gerookt paprikapoeder\r\n- 1 el knoflookpoeder\r\n- 1 el uienpoeder\r\n- 1 el komijnpoeder\r\n- 1 el mosterdpoeder\r\n- 1/2 tl cayennepeper\r\n- Zout naar smaak\r\n- Zwarte peper naar smaak\r\n\r\nVarkensschouder:\r\n- Varkensschouder\r\n\r\nBarbecuesaus:\r\n- 1 kop ketchup\r\n- 1/2 kop appelazijn\r\n- 1/3 kop bruine suiker\r\n- 2 el mosterd\r\n- 1 el worcestersaus\r\n- 1 tl gerookt paprikapoeder\r\n- 1 tl uienpoeder\r\n- 1 tl knoflookpoeder\r\n- Zout en zwarte peper naar smaak\r\n\r\n', NULL, 18.95, 0),
(39, 'BBQ Vegetarisch World Champion BBQ', '**Bereidingswijze:**\r\n \r\n1. Begin met het voorverwarmen van de barbecue op medium hitte.\r\n \r\n2. Snijd de groenten in stukken die geschikt zijn voor het rijgen aan de spiesen.\r\n \r\n3. Meng in een kom de ingrediënten voor de marinade: olijfolie, knoflook, paprikapoeder, komijnpoeder, oregano, zout, peper en citroensap.\r\n \r\n4. Rijg de groenten afwisselend op de houten spiesen. Bestrijk de groentespiesen royaal met de marinade.\r\n \r\n5. Plaats de spiesen op de voorverwarmde barbecue en gril ze ongeveer 10-15 minuten, regelmatig draaiend, tot de groenten zacht en licht gebruind zijn.\r\n \r\n6. Tijdens het grillen kun je extra marinade gebruiken om de groenten te bestrijken voor extra smaak.\r\n \r\n7. Optioneel: voeg verse kruiden toe aan het einde van het grillen voor een extra aroma.\r\n \r\n8. Haal de spiesen van de barbecue en serveer ze warm. Je kunt ze als hoofdgerecht serveren met bijgerechten zoals gegrilde aardappelen, salades of een lekker sausje.', 'Vega', 9.99, '', 'BBQ Vegetarisch.jpg\r\n', '', 'https://www.bol.com/nl/nl/p/bbq-vegetarisch/9300000127424466/?bltgh=gAI9h569C-ZZ7cYcjPFFDQ.2_6.7.ProductImage', NULL, NULL, NULL, '**Ingrediënten:**\r\n \r\n- 1 courgette, in plakjes\r\n- 1 rode paprika, in blokjes\r\n- 1 gele paprika, in blokjes\r\n- 1 rode ui, in partjes\r\n- 1 pint cherrytomaten\r\n- Champignons, schoongemaakt\r\n- Olijfolie\r\n- Zout en peper naar smaak\r\n- Verse kruiden zoals tijm, rozemarijn of oregano (optioneel)\r\n- Houten spiesen, geweekt in water om verbranden te voorkomen\r\n\r\n**Voor de marinade:**\r\n \r\n- 3 eetlepels olijfolie\r\n- 2 teentjes knoflook, fijngehakt\r\n- 1 theelepel paprikapoeder\r\n- 1 theelepel komijnpoeder\r\n- 1 theelepel gedroogde oregano\r\n- Zout en peper naar smaak\r\n- Sap van 1 citroen', NULL, 9.99, 1),
(40, 'Vega BBQ\r\ngegrilde groenten', '**Bereidingswijze:**\r\n \r\n1. Verwarm de barbecue voor op medium tot hoog vuur.\r\n \r\n2. Maak de marinade door balsamicoazijn, olijfolie, knoflook, tijm, zout en peper te mengen. Bestrijk de portobello-paddenstoelen met deze marinade en laat ze minstens 15 minuten marineren.\r\n \r\n3. Leg de gemarineerde portobello\'s op de barbecue en grill ze ongeveer 5-7 minuten aan elke kant, of tot ze zacht zijn en mooie grillstrepen hebben.\r\n \r\n4. Terwijl de paddenstoelen grillen, kun je de ui en paprika op de barbecue roosteren tot ze zacht zijn.\r\n \r\n5. In de laatste paar minuten van het grillen, leg je een plakje geitenkaas op elke portobello en sluit je de deksel van de barbecue zodat de kaas smelt.\r\n \r\n6. Snijd de volkoren hamburgerbroodjes doormidden en rooster ze kort op de barbecue.\r\n \r\n7. Bouw de burgers door een gegrilde portobello op elk broodje te leggen. Top met geroosterde ui, paprika, verse spinazie of rucola.\r\n \r\n8. Serveer de vegetarische portobello-burgers warm. Optioneel kun je nog een beetje extra balsamicoazijn over de burgers druppelen voor extra smaak.', 'Vega', 19.99, '', 'Vega BBQ.jpg', '', 'https://www.bol.com/nl/nl/p/vega-bbq/9200000102248528/?bltgh=gAI9h569C-ZZ7cYcjPFFDQ.2_6.8.ProductImage', NULL, NULL, NULL, '**Ingrediënten:**\r\n \r\n- 4 grote portobello-paddenstoelen, schoongemaakt en stelen verwijderd\r\n- 4 volkoren hamburgerbroodjes\r\n- 1 rode ui, in ringen gesneden\r\n- 1 rode paprika, in dunne reepjes\r\n- 4 plakjes geitenkaas (of een andere favoriete kaas)\r\n- Verse spinazie of rucola voor garnering\r\n- Olijfolie\r\n- Zout en peper naar smaak\r\n \r\n**Voor de marinade:**\r\n \r\n- 3 eetlepels balsamicoazijn\r\n- 2 eetlepels olijfolie\r\n- 2 teentjes knoflook, fijngehakt\r\n- 1 theelepel gedroogde tijm\r\n- Zout en peper naar smaak', NULL, 19.99, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_review` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `reviews`
--

INSERT INTO `reviews` (`review_id`, `book_id`, `user_name`, `user_review`, `created_at`) VALUES
(1, 1, 'Adnan', 'goed', '2024-01-25 20:36:34'),
(2, 1, 'Adnan', 'goed', '2024-01-25 20:36:39'),
(3, 1, 'Adnan', 'goed', '2024-01-25 20:36:39'),
(4, 1, 'Adnan', 'goed', '2024-01-25 20:36:40'),
(5, 1, 'Muhammet', 'goed', '2024-01-25 20:48:12'),
(6, 1, 'Adnan', 'hdllewf', '2024-01-25 20:54:02'),
(7, 1, 'Safouane', 'Heel goed lan', '2024-01-25 21:01:44'),
(8, 1, 'Ismail', 'niks nigga', '2024-01-25 21:08:37'),
(9, 1, 'adnan', 'wq', '2024-01-25 21:11:17'),
(10, 1, 'Ali', 'ik ben verstopt', '2024-01-25 21:14:05');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexen voor tabel `recepteboeken`
--
ALTER TABLE `recepteboeken`
  ADD PRIMARY KEY (`Boek_id`);

--
-- Indexen voor tabel `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `book_id` (`book_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT voor een tabel `recepteboeken`
--
ALTER TABLE `recepteboeken`
  MODIFY `Boek_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT voor een tabel `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `recepteboeken` (`Boek_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
