-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 24 jan. 2020 à 11:30
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `marionlekl355`
--

-- --------------------------------------------------------

--
-- Structure de la table `accueil`
--

DROP TABLE IF EXISTS `accueil`;
CREATE TABLE IF NOT EXISTS `accueil` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `lien_logo_fr` varchar(100) NOT NULL,
  `lien_logo_en` varchar(100) NOT NULL,
  `lien_bouton` varchar(100) NOT NULL,
  `langue` enum('fr','en') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `accueil`
--

INSERT INTO `accueil` (`id`, `description`, `lien_logo_fr`, `lien_logo_en`, `lien_bouton`, `langue`) VALUES
(1, 'étudiante en développement web.', 'Images/drapeau_fr.png', 'Images/drapeau_en.png', 'Laissez-moi vous montrer', 'fr'),
(2, 'student in web development.', 'Images/drapeau_fr.png', 'Images/drapeau_en.png', 'Let me show you', 'en');

-- --------------------------------------------------------

--
-- Structure de la table `a_propos`
--

DROP TABLE IF EXISTS `a_propos`;
CREATE TABLE IF NOT EXISTS `a_propos` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `titre` varchar(100) NOT NULL,
  `contenu` longtext NOT NULL,
  `lien_bouton` varchar(100) NOT NULL,
  `contenu_lien_bouton` varchar(100) NOT NULL,
  `langue` enum('fr','en') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `a_propos`
--

INSERT INTO `a_propos` (`id`, `titre`, `contenu`, `lien_bouton`, `contenu_lien_bouton`, `langue`) VALUES
(1, 'A propos.', 'Passionn&eacute;e par la culture digitale et apr&egrave;s un apprentissage autodidacte en d&eacute;veloppement front-end, j\'ai d&eacute;cid&eacute; de me reconvertir et de me former au d&eacute;veloppement web en int&eacute;grant la licence professionnelle informatique multim&eacute;dia appliqu&eacute;e &agrave; Nice. Apr&egrave;s huit mois de formation orient&eacute;e autant front-end que back-end, je recherche pour le mois de mai 2020, un stage de trois &agrave; quatre mois. Mes huit ann&eacute;es d\'exp&eacute;riences professionnelles en tant que conseill&egrave;re de vente, m\'ont apport&eacute; le sens de la relation client et du travail en &eacute;quipe. Ma motivation et ma maturit&eacute;, me permettent d\'acqu&eacute;rir rapidement de nouvelles comp&eacute;tences n&eacute;cessaires au m&eacute;tier de d&eacute;veloppeur web.', 'Ressources/CV.pdf', 'Jetez un oeil sur mon CV', 'fr'),
(2, 'About.', 'Passionate about digital culture and after a self-taught learning in front-end development, I decided to retrain and train myself in web development by integrating the professional multimedia IT license applied in Nice.\r\nAfter eight months of training oriented as much front-end as back-end, I am looking for the month of May 2020, a three to four month internship. \r\nMy eight years of professional experience as a sales consultant gave me a sense of customer relations and teamwork.\r\nMy motivation and my maturity allow me to quickly acquire new skills necessary for the job of web developer.', 'Ressources/CV.pdf', 'Take a look at my CV', 'en');

-- --------------------------------------------------------

--
-- Structure de la table `competences`
--

DROP TABLE IF EXISTS `competences`;
CREATE TABLE IF NOT EXISTS `competences` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `competence` varchar(255) NOT NULL,
  `pourcentage` varchar(20) NOT NULL,
  `langue` enum('fr','en','default') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `competences`
--

INSERT INTO `competences` (`id`, `competence`, `pourcentage`, `langue`) VALUES
(1, 'HTML5', '80%', 'default'),
(2, 'CSS3', '80%', 'default'),
(3, 'JAVASCRIPT', '50%', 'default'),
(4, 'JQUERY', '50%', 'default'),
(5, 'MySQL', '70%', 'default'),
(6, 'PHP', '50%', 'default'),
(7, 'Adaptabilité', '', 'fr'),
(8, 'Persévérance', '', 'fr'),
(9, 'Gestion de projet', '', 'fr'),
(10, 'Veille technologique quotidienne', '', 'fr'),
(11, 'Anglais: niveau B1-B2', '', 'fr'),
(12, 'Adaptability', '', 'en'),
(13, 'Perseverance', '', 'en'),
(14, 'Project management', '', 'en'),
(15, 'Daily technological watch', '', 'en'),
(16, 'English: level B1-B2', '', 'en'),
(17, 'GIT', '60%', 'default'),
(18, 'PHOTOSHOP', '50%', 'default');

-- --------------------------------------------------------

--
-- Structure de la table `experiences`
--

DROP TABLE IF EXISTS `experiences`;
CREATE TABLE IF NOT EXISTS `experiences` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) NOT NULL,
  `poste` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `langue` enum('fr','en') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `experiences`
--

INSERT INTO `experiences` (`id`, `date`, `poste`, `description`, `langue`) VALUES
(1, '2011-2018', 'Conseillère vente cosmétique - esthétique', 'Entreprise familiale – auto-entrepreneur - Nice', 'fr'),
(2, 'mai-novembre 2010', 'Employée de pharmacie', 'Pharmacie des Arts - Nice ', 'fr'),
(3, '2009-2010', 'Missions intérimaires - Vendeuse', 'Fnac, Galeries Lafayettes, Jules - Nice ', 'fr'),
(4, 'juillet-août 2008', 'Stagiaire, analyses des eaux de piscine', 'Laboratoire de l’environnement Nice côte d’azur, secteur Chimie', 'fr'),
(6, '2011-2018', 'Cosmetics sales consultant - aesthetics', 'Self employed - Nice', 'en'),
(7, 'May to November 2010', 'Pharmacy employee\r\n', 'Pharmacie des Arts - Nice ', 'en'),
(8, '2009-2010', 'Interim missions - Saleswoman\r\n', 'Fnac, Galeries Lafayettes, Jules - Nice ', 'en'),
(9, 'July, August 2008', 'Intern, pool water analysis', 'Nice Côte d\'Azur environmental laboratory, chemistry sector', 'en');

-- --------------------------------------------------------

--
-- Structure de la table `formations`
--

DROP TABLE IF EXISTS `formations`;
CREATE TABLE IF NOT EXISTS `formations` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `lieu` varchar(255) NOT NULL,
  `diplome` varchar(255) NOT NULL,
  `date` varchar(100) NOT NULL,
  `langue` enum('fr','en') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `formations`
--

INSERT INTO `formations` (`id`, `lieu`, `diplome`, `date`, `langue`) VALUES
(1, 'Université Nice Sophia-Antipolis', 'Licence Professionnelle informatique multimédia appliquée', '2019-2020', 'fr'),
(2, 'Université Nice Sophia-Antipolis', 'Licence de chimie', '2006-2009', 'fr'),
(3, 'Lycée Estienne d’orves - Nice', 'Baccalauréat scientifique, mention assez bien', '2005', 'fr'),
(4, 'Nice Sophia-Antipolis University', 'Bachelor of web development', '2019-2020', 'en'),
(5, 'Nice Sophia-Antipolis university', 'Three-year university degree in chemistry', '2006-2009', 'en'),
(6, 'Estienne d’orves high school - Nice', 'High School diploma, scientific option, with honors', '2005', 'en');

-- --------------------------------------------------------

--
-- Structure de la table `formulaire`
--

DROP TABLE IF EXISTS `formulaire`;
CREATE TABLE IF NOT EXISTS `formulaire` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contenu` longtext NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `formulaire`
--

INSERT INTO `formulaire` (`id`, `nom`, `email`, `contenu`, `date`) VALUES
(31, 'f', 'hete06@gmail.com', 'z', '2020-01-18 21:34:40'),
(30, 'f', 'hete06@gmail.com', 'z', '2020-01-18 21:25:30'),
(29, 'f', 'hete06@gmail.com', 'z', '2020-01-18 21:19:21'),
(28, 'f', 'hete06@gmail.com', 'z', '2020-01-18 21:18:27'),
(27, 'f', 'hete06@gmail.com', 'z', '2020-01-18 21:17:59'),
(26, 'f', 'hete06@gmail.com', 'z', '2020-01-18 21:12:45'),
(25, 'sss', 'hete06@gmail.com', 'sss', '2020-01-18 21:10:53');

-- --------------------------------------------------------

--
-- Structure de la table `identite`
--

DROP TABLE IF EXISTS `identite`;
CREATE TABLE IF NOT EXISTS `identite` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tel` varchar(50) NOT NULL,
  `lien_linkedin` varchar(200) NOT NULL,
  `lien_github` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `identite`
--

INSERT INTO `identite` (`id`, `nom`, `email`, `tel`, `lien_linkedin`, `lien_github`) VALUES
(1, ' Marion Leclercq ', 'hete06@gmail.com', '06.79.87.42.79', 'https://linkedin.com/in/marion-leclercq/', 'https://github.com/marionLeclercq');

-- --------------------------------------------------------

--
-- Structure de la table `navigation`
--

DROP TABLE IF EXISTS `navigation`;
CREATE TABLE IF NOT EXISTS `navigation` (
  `accueil` varchar(100) NOT NULL,
  `a_propos` varchar(100) NOT NULL,
  `cv` varchar(100) NOT NULL,
  `competences` varchar(100) NOT NULL,
  `portfolio` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `langue` enum('fr','en') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `navigation`
--

INSERT INTO `navigation` (`accueil`, `a_propos`, `cv`, `competences`, `portfolio`, `contact`, `id`, `langue`) VALUES
('Accueil', 'A propos', 'C.V.', 'Compétences', 'Portfolio', 'Contact', 1, 'fr'),
('Home', 'About', 'C.V.', 'Skills', 'Portfolio', 'Contact', 2, 'en');

-- --------------------------------------------------------

--
-- Structure de la table `realisations`
--

DROP TABLE IF EXISTS `realisations`;
CREATE TABLE IF NOT EXISTS `realisations` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `src` varchar(255) NOT NULL,
  `alt` varchar(100) NOT NULL,
  `titre_photo` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `lien` varchar(255) NOT NULL,
  `langue` enum('fr','en') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `realisations`
--

INSERT INTO `realisations` (`id`, `src`, `alt`, `titre_photo`, `description`, `lien`, `langue`) VALUES
(1, 'Images/siteACphotoCouverture.png', 'le projet photographe', 'AC.photographie06', 'Design, Développement, Projet personnel', 'https://ac-photographies06.netlify.com/', 'fr'),
(2, 'Images/agence.png', 'agence_voyage', 'Travel Agency', 'Design, Développement, Projet personnel', 'https://travelagency000.netlify.com', 'fr'),
(3, 'Images/photoshop1.jpg', 'Montage surréliste', 'Montage surréaliste', 'Photoshop, Projet Licence', 'Ressources/surrealisme.pdf', 'fr'),
(4, 'Images/photoshop2.jpg', 'Montage fusion', 'Montage fusion', 'Photoshop, Projet Licence', 'Ressources/fusion.pdf', 'fr'),
(5, 'Images/barque2.png', 'Retouche', 'Retouche vieille photo', 'Photoshop, Projet Licence', 'Ressources/retouche.pdf', 'fr'),
(6, 'Images/jquery.png', 'jquery', 'Top 5 des meilleures actrices', 'Projet personnel en Jquery', 'https://top5actricesjquery.netlify.com', 'fr'),
(7, 'Images/siteACphotoCouverture.png', 'le projet photographe', 'AC.photographie06', 'Design, Development, Personal project', 'https://ac-photographies06.netlify.com/', 'en'),
(8, 'Images/agence.png', 'agence_voyage', 'Travel Agency', 'Design, Development, Personal project', 'https://travelagency000.netlify.com', 'en'),
(9, 'Images/photoshop1.jpg', 'Surrealist montage', 'Surrealist montage', 'Photoshop, License Project', 'Ressources/surrealisme.pdf', 'en'),
(10, 'Images/photoshop2.jpg', 'Fusion editing', 'Fusion editing', 'Photoshop, License Project', 'Ressources/fusion.pdf', 'en'),
(11, 'Images/barque2.png', 'Retouch', 'Retouching an old photo', 'Photoshop, License Project', 'Ressources/retouche.pdf', 'en'),
(12, 'Images/jquery.png', 'jquery', 'Top 5 of the best actresses', 'Personal project in jquery', 'https://top5actricesjquery.netlify.com', 'en');

-- --------------------------------------------------------

--
-- Structure de la table `sous_titres`
--

DROP TABLE IF EXISTS `sous_titres`;
CREATE TABLE IF NOT EXISTS `sous_titres` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `formation` varchar(255) NOT NULL,
  `experiences` varchar(255) NOT NULL,
  `prog` varchar(255) NOT NULL,
  `perso` varchar(255) NOT NULL,
  `realisations` varchar(255) NOT NULL,
  `voir` varchar(50) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `retrouver` varchar(255) NOT NULL,
  `footer` varchar(255) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL,
  `envoyer` varchar(255) NOT NULL,
  `langue` enum('fr','en') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `sous_titres`
--

INSERT INTO `sous_titres` (`id`, `formation`, `experiences`, `prog`, `perso`, `realisations`, `voir`, `contact`, `retrouver`, `footer`, `nom`, `email`, `message`, `envoyer`, `langue`) VALUES
(1, 'Formations', 'Expériences professionnelles', 'Langages de programmation et outils maîtrisés:', 'Compétences personnelles:', 'Voici mes réalisations...', 'voir', 'N\'hésitez pas <br> à me contacter', 'Retrouvez-moi sur:', '2019 ', 'Nom', 'Email', 'Votre message', 'ENVOYER', 'fr'),
(2, 'Trainings', 'Professional experiences', 'Programming languages ​​and tools mastered:', 'Personal skills:', 'Here are my achievements ...', 'see', 'Do not hesitate <br> to contact me', 'Find me on:', '2019', 'Lastname', 'Email', 'Your message', 'SEND', 'en');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `passwd` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `passwd`) VALUES
(1, 'Marionhete', 'Marionhete06!');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
