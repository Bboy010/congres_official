-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 16 nov. 2023 à 02:38
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `congres`
--

-- --------------------------------------------------------

--
-- Structure de la table `activities`
--

CREATE TABLE `activities` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `code` varchar(10) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `presentateur_name` varchar(255) NOT NULL,
  `presentation_file_url` varchar(255) DEFAULT NULL,
  `session_id` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `activities`
--

INSERT INTO `activities` (`id`, `code`, `title`, `presentateur_name`, `presentation_file_url`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 'CI1', 'Génomique et protéomique, Quel avenir en Afrique pour le monde agronomique?', 'POKOU Désiré', 'files/sessions_inaugurales/presentation1.pptx', 1, '2023-10-18 14:24:54', '2023-10-18 14:24:54'),
(2, 'CI2', 'Génomique et protéomique, Quel avenir en Afrique pour la santé animale?', 'COUACY-HYMANN E', 'files/sessions_inaugurales/presentation2.pptx', 1, '2023-10-18 14:24:54', '2023-10-18 14:24:54'),
(3, 'AM1', 'Genomics insight of Mycobacterium ulcerans', 'Bi Gore O. Tchan', 'files\\sessions\\session1\\presentation1.pptx', 2, '2023-10-18 14:24:54', '2023-10-18 14:24:54'),
(4, 'AM2', 'Diagnostics moléculaires du SARS-CoV-2 en Côte d’Ivoire', ' Sylla Aboubacar', 'files\\sessions\\session1\\presentation2.pptx', 2, '2023-10-18 14:24:54', '2023-10-18 14:24:54'),
(5, 'AM3', 'Impact of MMP1 and MMP3 genes promoter nucleotide polymorphism on Human Papillomavirus infection and cervical cancer grade', 'Prosper BADO', 'files\\sessions\\session1\\presentation3.pptx', 2, '2023-10-18 14:24:54', '2023-10-18 14:24:54'),
(6, 'AM4', 'Human leukocyte antigen alleles (HLA-DRB1*11 and HLA-DRB1*12) polymorphisms and risk of developing prostate cancer in Burkina Faso: case control study', 'Pegdwendé Abel SORGHO', 'files\\sessions\\session1\\presentation4.pptx', 2, '2023-10-18 14:24:54', '2023-10-18 14:24:54'),
(7, 'AM5', 'Efficacité des tests rt-lamp dans le diagnostic moléculaire des génotypes du sarcov-2 circulant à ouagadougou durant la période post pandémique 2021-2022', 'Jean Bienvenue OUOBA', '', 2, '2023-10-18 14:24:54', '2023-10-18 14:24:54'),
(8, 'SE1', 'Contamination des aliments de rue par des Salmonella multirésistantes à Ouagadougou, Burkina Faso : Utilisation de l\'approche de séquençage du génome entier', 'Marguerite E. M. Nikiema', '', 2, '2023-10-18 14:24:54', '2023-10-18 14:24:54'),
(9, 'SE2', 'Analyse socio-épidémiologique et moléculaire de la circulation de Treponema pallidum pertenue en Côte d’Ivoire', 'Kambou Sié Hamadi', '', 2, '2023-10-18 14:24:54', '2023-10-18 14:24:54'),
(10, 'SE3', 'Évaluation de la pollution de l’air dans les zones industrielles à Abidjan Sud', 'Natacha YAO-ASSAHI', '', 2, '2023-10-18 14:24:54', '2023-10-18 14:24:54'),
(11, 'SE4', 'Cartographie des sites de dépotage des déchets et analyse de la distribution des déchets plastiques dans le réseau d’assainissement d’eau pluviale de la ville de Grand-Bassam (Côte d’Ivoire), Patrimoine Mondial de l’Unesco', 'TEYA Koffi Basile', '', 2, '2023-10-18 14:24:54', '2023-10-18 14:24:54'),
(12, 'SE5', 'Evaluation des risques sanitaires et environnementaux des pesticides chimiques utilisés en production maraîchère et son impact sur les indicateurs économique dans la ville de Korhogo', 'Ka Solange Gbezo', '', 2, '2023-10-18 14:24:54', '2023-10-18 14:24:54'),
(13, 'SE6', 'Évaluation de la qualité nutritionnelle du thon listao (Katsuwonus pelamis), le poisson ‶garba″ conservé à Température ambiante', 'N’da Keke Marie', '', 2, '2023-10-18 14:24:54', '2023-10-18 14:24:54'),
(14, 'SE7', 'Risques d’exposition à la contamination fécale : cas des enfants de la Commune d’Abobo, Abidjan', 'Coulibaly Phaniwa Zié', '', 2, '2023-10-18 14:24:54', '2023-10-18 14:24:54'),
(15, 'SE8', 'Tree allometry for carbon stock estimation in republic of congo’s forest', 'Romeo EKOUNGOULOU', '', 2, '2023-10-18 14:24:54', '2023-10-18 14:24:54'),
(16, 'SE9', 'Prévalence de Streptococcus infantarius sub-espèce infantarius et caractérisation du danger lié à la présence de souches multi résistantes d’Escherichia coli et de Staphylococcus aureus dans le lait au nord de la Côte d’Ivoire', 'Sylvain Gnamien Traoré', '', 2, '2023-10-18 14:24:54', '2023-10-18 14:24:54'),
(17, 'SE10', 'Evaluation du biotraitement des Effluents de Production d’Huile de Palme à partir de Yarrowia lipolytica par approche statistique', 'Yao Fulgence Koffi', '', 2, '2023-10-18 14:24:54', '2023-10-18 14:24:54'),
(18, 'SE11', 'Le Zaï Rectangulaire, Une Nouvelle Innovante De Récupération Des Sols Nus Et d’accroissement Du Rendement Du Sorgho (Sorghum Bicolor (L.) Moench) Dans Les Zones Sahélienne Et Soudano-Sahélienne Du Burkina Faso', 'Abdoulaye DABRE', '', 2, '2023-10-18 14:24:54', '2023-10-18 14:24:54'),
(19, 'SE12', 'Approche métagénomique pour découvrir la diversité et la structure communautaire des géminivirus à l\'échelle du système agro-écologique dans deux localités du Burkina Faso', 'Alassane Ouattara', '', 2, '2023-10-18 14:24:54', '2023-10-18 14:24:54'),
(20, 'SE13', 'Recherche des elements traces metalliques dans les semoules de manioc (attieke) provenant de la ville de grand-lahou, dabou et bonoua', 'Diaby Vandjiguiba', '', 2, '2023-10-18 14:24:54', '2023-10-18 14:24:54'),
(21, 'SE14', 'Influence Des Paramètres Agro Climatiques Sur La Production De Canne A Sucre Sur Les Exploitations De l\'unité Agricole Intégrée De Borotou Koro, Côte d’ivoire', 'KONATE Yaya', '', 2, '2023-10-18 14:24:54', '2023-10-18 14:24:54'),
(22, 'SE15', 'Diversité taxonomique du phytoplancton et statut trophique des eaux de la station aquacole de Jacqueville (lagune Ebrié, Côte d\'Ivoire)', 'ETTIEN Affia Anne Florence', '', 2, '2023-10-18 14:24:54', '2023-10-18 14:24:54'),
(23, 'SH1', 'Etude comparative du microbiote intestinal chez des patientes atteintes de cancer du sein versus des contrôles à Abidjan, Côte d’Ivoire', 'GNAHORE DJEDA Franck', 'fichiers/Sessions/session2/Presentation1.pptx', 3, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(24, 'SH2', 'Etude du rôle d’une solution buvable à base de bicarbonate de sodium sur l’acidocétose diabétique', 'Kamagate A', 'fichiers/Sessions/session2/Presentation2.pptx', 3, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(25, 'SH3', 'Effet de l’arrêt précoce du traitement à la ribavirine chez un patient chroniquement infecté par le virus de l’hépatite E', 'Adombi C. M', 'fichiers/Sessions/session2/Presentation3.pptx', 3, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(26, 'SH4', 'Paramètres nutritionnels de deux farines infantiles de fabrication artisanale chez le rat (Rattus norvegicus) de souche wistar en croissance', 'MEITE Alassane', 'fichiers/Sessions/session2/Presentation4.pptx', 3, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(27, 'SH5', 'Effets hypoglycémique et antihyperglycémique de l’extrait aqueux de feuilles de Vitex doniana sweet (lamiaceae)', 'ATTO Virginie', '', 3, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(28, 'SH6', 'Analyse pollinique et évaluation de l’activité antioxydante de miels issus de dix régions de la Côte d’Ivoire', 'YEBOUE K. Apollinaire', '', 3, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(29, 'SH7', 'Occurrence de la zéaralénone dans les grains de maïs et de mil et leurs bouillies dérivées commercialisés à Abidjan (Côte d\'Ivoire)', 'Kpan Kouakou Gains Kpan', '', 3, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(30, 'SS1', 'Effet des pilules contraceptives sur la masse musculaire et la masse osseuse chez les étudiantes des Universités Publique de Côte d’Ivoire', 'AHEBIE Magne Elisabeth', '', 3, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(31, 'SS2', 'Problématique de l’éducation des enfants nés de filles mères dans la commune de Yopougon à Abidjan', 'BAMBA Seydou', '', 3, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(32, 'SS3', 'Perception paysanne des variétés douces de manioc (Manihot esculenta Crantz) en République du Congo', 'Celestine K. Ngounga', '', 3, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(33, 'SV1', 'Étude de la diversité génétique de hibiscus sabdariffa l. Au burkina faso', 'OUANGRAOUA WJocelyne', 'fichiers/Sessions/session3/Presentation1.pptx', 4, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(34, 'SV2', 'Caractérisation des ssrs du génome de karité (vitellaria paradoxa c.f.gaertn.)', 'Konan AJacky', 'fichiers/Sessions/session3/Presentation2.pptx', 4, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(35, 'SV3', 'Caractérisation, valorisation et conservation des ressources phytogénétiques du fonio (Digitaria exilis) en Côte d’Ivoire', 'N’da Hugues Annicet', 'fichiers/Sessions/session3/Presentation3.pptx', 4, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(36, 'SV4', 'Diversité et Abondance des Thrips associés au niébé au Burkina Faso', 'Carine POUEDRAOGO', 'fichiers/Sessions/session3/Presentation4.pptx', 4, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(37, 'SV5', 'Transmissibilité Du Virus De La Jaunisse De l’aubergine Par Bemisia Tabaci Sur La Tomate (Solanum Lycopercicum)', 'Koutoua SEKA', '', 4, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(38, 'SV6', 'Evaluation Des Effets De Akanthomyces Lecanii Sur La Germination Des Urédospores Et La Sévérité d\'isolats De Puccinia Arachidis Au Burkina Faso', 'Tounwendsida Abel NANA', '', 4, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(39, 'SV7', 'Influence Des Phytohormones Sur La Production Des Vitro Plants d’anacardier [Anacardium Occidentale L. (Anacardiaceae)]', 'Camille KOUAKOU', '', 4, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(40, 'SV8', 'Etude phytochimique, activités anti radicalaire et anti cholinestérasique de l’écorce de racine de Citrus aurantifolia (Rutaceae) Swingle', 'ZIALE Djélé Alette Edwige', '', 4, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(41, 'SV9', 'Impact du mode de semis sur les performances physiologiques, agronomiques et biochimiques de quatre variétés de sésame (Sesamum indicum L.) Cultivées au Burkina Faso', 'Badoua BADIEL', '', 4, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(42, 'SV10', 'Variations, corrélations et estimation de l\'héritabilité des paramètres de rendement du voandzou [Vigna subterranea (L.) Verdc.] au Burkina Faso', 'KAMBOU Diane', '', 4, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(43, 'SV11', 'Caractérisation des champignons pathogènes associés à la culture du quinoa (Chenopodium quinoa Willd) dans trois zones agro-écologiques du Burkina Faso', 'NEBIE Louis', '', 4, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(44, 'SV12', 'Accessions subspontanées de Palmier à huile (Eleis guineensis Jacq.) collectées dans la région de Man en Côte d’Ivoire et soumises au test de tolérance à la fusariose vasculaire', 'KABLAN Kan Aurore Bel Martine', '', 4, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(45, 'SV13', ' Croissance comparative de Azolia (Fougère fixatrice d’azote) sous l’influence de fertilisants biologiques en Côte d’Ivoire', 'KOUAME Kouassi Thiègba', '', 4, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(46, 'SV14', 'Production de bio-fongicide à partir des extraits de Erigeron floribundus et de Piliostigma thonningii pour une meilleure conservation des fruits et légumes', 'OUATTARA Katinan Etienne', '', 4, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(47, 'SV15', 'Aperçus Protéomique Des Cals Non Embryogéniques Et Embryogéniques, Des Embryons Somatiques Et Zygotiques : Une Condition Préalable A l’optimisation Durable Des Milieux De Cultures De l’embryogenèse Somatique Du Theobroma Cacao L.', 'N’goran Poh Konan Georges', '', 4, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(48, 'SV16', 'Effets cicatrisants d’un extrait aqueux de feuilles de Petroselinum crispum (apiaceae) sur des plaies induites chez le rat wistar', 'ATTO Virginie', '', 4, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(49, 'SV17', 'Effet De l’extrait Total Aqueux De l’écorce De Tige De Sacoglottis gabonensis Sur La Cicatrisation Des Plaies Induites Par Brûlure Chez Le Rat Wistar', 'NAGALO Ousmane', '', 4, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(50, 'SV18', 'Effet de différentes doses de fumier de poules pondeuses sur le développement végétatif du palmier à huile aux stades pré-pépinières et pépinièresa', 'Adou Bini Yao Christophe', '', 4, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(51, 'SV19', 'Alternatives à la résistance de Aedes aegypti aux pyréthrinoïdes : amélioration de la bio-efficacité d\'huiles essentielles de Cymbopogon nardus et de Ocimum americanum par combinaisons', 'Mahamoudou Balboné', '', 4, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(52, 'SV20', 'Potentialité antihypertensive des graines de Garcinia kola en poudre chez le rat modèle', 'N’Dri KEric Donald', '', 4, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(53, 'SV21', 'Profil phytochimique et activité antioxydant d’extraits sélectifs des feuilles de Dichrostachys cinerea et Morinda lucida', 'ADOU D. Axel', '', 4, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(54, 'SV22', 'Sélection de potentielles souches de probiotiques de bactéries lactiques à partir de fruits et légumes négligés et d’aliments fermentés de Côte d’Ivoire', 'OUATTARA Hadja Djeneba', '', 4, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(55, 'SV23', 'Effet de la fraction oligosaccharidique de Fusarium oxysporum fSpvasinfectum sur l\'activité des enzymes du métabolisme phénoliques chez les feuilles de cotonnier', 'N’GORAN Ahou Régine épouse BLA', '', 4, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(56, 'SV24', 'Genetic Differentiation for Gene Diversity among Pearl Millet (Pennisetum glaucum (L.) RBr.) Landraces As Revealed by SSR Markers', 'BOUGMA Lardia Ali', '', 4, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(57, 'SV25', 'Évaluation d’un core collection de Gombo cultivés au Burkina Faso à l’aide de marqueurs SSRs', 'OUEDRAOGO M. Hamed', '', 4, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(58, 'SV26', 'Classification des oléagineux du bassin du Congo : Caractère oléagineux, composition en Acides gras et en Triacylglycérols', 'Bob Wilfrid Loumouamou', '', 4, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(59, 'SV27', 'Evolution des caractéristiques physicochimiques et microbiologiques au cours de la fermentation de la pâte de manioc inoculé par le jus mucilagineux du cacao et analyse sensorielle de l’attiéké résultant', 'Kadjo Adobi Christian', '', 4, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(60, 'SV28', 'Borassus aethiopum mature fruits’ pulp best drying temperature and the dried products fatty acids profile', 'Tagouèlbè Tiho', '', 4, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(61, 'SV29', 'Modélisation de la cinétique de séchage d’une matrice végétale : cas de la pulpe de safou (Dacryodes edulis) avec et sans endocarpe', 'BINAKI Anicet Frédéric', '', 4, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(62, 'SA1', 'Diversité et évaluation des indices épidémiologiques des parasites infestant des poissons aquacoles pêchés dans la rivière Agnéby-village (Côte d’Ivoire) : de Heterobranchus longifilis Valenciennes, 1840', 'Blahoua Kassi Georgesè', 'fichiers/Sessions/session4/Presentation1.pptx', 5, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(63, 'SA2', 'Infestation du Tilapia du Nil Oreochromis niloticus par les Monogènes parasites branchiaux dans le lac de barrage hydroélectrique d’Ayamé 2 (Côte d’Ivoire)', 'ADOU Yedehi Euphrasie', 'fichiers/Sessions/session4/Presentation2.pptx', 5, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(64, 'SA3', 'Effet de la substitution des antibiotiques par des probiotiques et des prébiotiques sur la santé du poulet de chair', 'COULIBALY Souhalio', 'fichiers/Sessions/session4/Presentation3.pptx', 5, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(65, 'SA4', 'Détermination de la teneur en glyphosate de formulations liquides et sèches par hplc-uv : dérivation pré-colonne avec le 9-fluorenylmethyl chloroformate (fmoc)', 'KPAN KPAN Kouakou Gains', 'fichiers/Sessions/session4/Presentation4.pptx', 5, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(66, 'SA5', 'Résidus d’antibiotiques et contaminants bactériens du lait cru de vache produit dans le district d’Abidjan (Côte d’Ivoire)', 'N\'GUESSAN Florent K.', '', 5, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(67, 'SA6', 'Effets de l’incorporation graduelle de la farine de feuilles de Cajanus cajan dans la ration alimentaire des poules pondeuses de souche Lohman Brown', 'Toure Ambéyin', '', 5, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(68, 'SA7', 'Types de litière utilisées et impact éventuel sur la conduite d\'élevage avicole du district d’abidjan', 'N\'DEPO Kevin Patrick-Roch', '', 5, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(69, 'SA8', 'Analyses hématologiques, biochimiques et histologiques sur des rats wistar traités par un phytoremède traditionnel \"daoutra epigastro\" commercialisé dans la ville de Daloa (Côte d\'Ivoire)', 'CHOHO Meney Frederi', '', 5, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(70, 'SA9', 'Influence du régime et de la teneur en protéines brutes alimentaires sur les performances de reproduction l’escargot Achatina marginata (Swainson, 1821)', 'AMANI N\'Dri Saint-Clair', '', 5, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(71, 'SA10', 'Croissance pondérale et facteurs de variation chez les veaux nelores élevés sur pâturage naturel semi-innondé en République du congo', 'Dimi Ngatse Silvère', '', 5, '2023-10-18 14:29:28', '2023-10-18 14:29:28'),
(72, 'SA11', 'Plantes, Préparations Galactogènes, Valeurs Bromatologique Des Espèces Identifiées Par éleveurs Et Agro-éleveurs Laitiers Au Burkina Faso', 'SAWADOGO Rayinwende Irène', '', 5, '2023-10-18 14:29:28', '2023-10-18 14:29:28');

-- --------------------------------------------------------

--
-- Structure de la table `pictures`
--

CREATE TABLE `pictures` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `picture_url` varchar(150) NOT NULL,
  `session_id` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `pictures`
--

INSERT INTO `pictures` (`id`, `picture_url`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 'files/Photos/session1/lot.png', 2, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(2, 'files/Photos/session1/mol.png', 2, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(3, 'files/Photos/session1/ol.png', 2, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(4, 'files/Photos/session1/om.png', 2, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(5, 'files/Photos/session1/poit.png', 2, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(6, 'files/Photos/session1/pot.png', 2, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(7, 'files/Photos/session1/sit.png', 2, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(8, 'files/Photos/session2/der.png', 3, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(9, 'files/Photos/session2/ir.png', 3, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(10, 'files/Photos/session2/ki.png', 3, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(11, 'files/Photos/session2/lio.png', 3, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(12, 'files/Photos/session2/pil.png', 3, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(13, 'files/Photos/session2/poi.png', 3, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(14, 'files/Photos/session2/ree.png', 3, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(15, 'files/Photos/session2/tir.png', 3, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(16, 'files/Photos/session2/zad.png', 3, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(17, 'files/Photos/session3/azz.png', 4, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(18, 'files/Photos/session3/des.png', 4, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(19, 'files/Photos/session3/fc.png', 4, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(20, 'files/Photos/session3/fer.png', 4, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(21, 'files/Photos/session3/ffe.png', 4, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(22, 'files/Photos/session3/jn.png', 4, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(23, 'files/Photos/session3/mk.png', 4, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(24, 'files/Photos/session3/mt.png', 4, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(25, 'files/Photos/session3/qa.png', 4, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(26, 'files/Photos/session3/rer.png', 4, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(27, 'files/Photos/session3/tre.png', 4, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(28, 'files/Photos/session3/ty.png', 4, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(29, 'files/Photos/session3/uy.png', 4, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(30, 'files/Photos/session3/xc.png', 4, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(31, 'files/Photos/session4/bg.png', 5, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(32, 'files/Photos/session4/ds.png', 5, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(33, 'files/Photos/session4/dxc.png', 5, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(34, 'files/Photos/session4/fg.png', 5, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(35, 'files/Photos/session4/gd.png', 5, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(36, 'files/Photos/session4/gv.png', 5, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(37, 'files/Photos/session4/hg.png', 5, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(38, 'files/Photos/session4/ik.png', 5, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(39, 'files/Photos/session4/ju.png', 5, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(40, 'files/Photos/session4/ml.png', 5, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(41, 'files/Photos/session4/nj.png', 5, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(42, 'files/Photos/session4/qz.png', 5, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(43, 'files/Photos/session4/va.png', 5, '2023-11-16 01:13:39', '2023-11-16 01:13:39'),
(44, 'files/Photos/session4/vb.png', 5, '2023-11-16 01:13:39', '2023-11-16 01:13:39');

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `title` varchar(100) DEFAULT NULL,
  `president_name` varchar(100) DEFAULT NULL,
  `rapporteur1_name` varchar(100) DEFAULT NULL,
  `rapporteur2_name` varchar(100) DEFAULT NULL,
  `rapport_file_url` varchar(150) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `title`, `president_name`, `rapporteur1_name`, `rapporteur2_name`, `rapport_file_url`, `created_at`, `updated_at`) VALUES
(1, '', '', '', '', '', '2023-10-18 12:21:42', '2023-10-18 12:21:42'),
(2, 'Approches Moléculaires et sciences environnementales', 'OUATTARA Alassane', 'DOUAGUI Aristide', 'KOUA Dominique', 'files/rapports/rapport1.pdf', '2023-10-18 12:21:42', '2023-10-18 12:21:42'),
(3, 'Sciences Sociales et Humaines', 'GUESSENND Nathalie', 'GOUALIE Bernadette', 'N\'GUESSAN Delphine', 'files/rapports/rapport2.pdf', '2023-10-18 12:21:42', '2023-10-18 12:21:42'),
(4, 'Sciences Végétales', 'MAMYRBEKOVA-BEKRO Janat Akhanovna', 'N\'GAMAN Kohué Christelle', 'Kabran Mida Guy Roger', 'files/rapports/rapport1.pdf', '2023-10-18 12:21:42', '2023-10-18 12:21:42'),
(5, 'Sciences Animales', 'DOSSO Mireille', 'BLE Yatanan', 'ZOUH Bi Faustin', 'files/rapports/rapport2.pdf', '2023-10-18 12:21:42', '2023-10-18 12:21:42');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Activities_session_id_Sessions_id` (`session_id`);

--
-- Index pour la table `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Pictures_session_id_Sessions_id` (`session_id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT pour la table `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT pour la table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `Activities_session_id_Sessions_id` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`);

--
-- Contraintes pour la table `pictures`
--
ALTER TABLE `pictures`
  ADD CONSTRAINT `Pictures_session_id_Sessions_id` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
