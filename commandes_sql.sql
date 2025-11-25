DROP DATABASE IF EXISTS garage;
CREATE DATABASE garage;

DROP TABLE IF EXISTS `g_article`;
CREATE TABLE IF NOT EXISTS `g_article` (
  `a_id` int(11) NOT NULL,
  `a_reference` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT "Référence de l'article",
  `a_designation` varchar(60) COLLATE utf8mb4_bin NOT NULL COMMENT 'Référence du code barre',
  `a_marque` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT 'Référence de la marque',
  `a_quantite` int(11) NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


DROP TABLE IF EXISTS `g_voiture`;
CREATE TABLE IF NOT EXISTS `g_voiture` (
  `v_id` int(11) NOT NULL,
  `v_marque` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `v_type` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `v_energie` varchar(15) COLLATE utf8mb4_bin NOT NULL,
  `v_fk_article_id` int(11) NOT NULL,
  PRIMARY KEY (`v_id`),
  KEY `article_fk` (`v_fk_article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

ALTER TABLE `g_voiture`
ADD CONSTRAINT `article_fk` FOREIGN KEY (`v_fk_article_id`) REFERENCES `g_article` (`a_id`);

insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (1, 'NZ5050', 'alternateur', 'mecafilter', 59);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (2, 'AA7962', 'alternateur', 'wix', 64);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (3, 'ET3206', 'alternateur', 'mecafilter', 44);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (4, 'QF4055', 'filtre a huile', 'knetch', 52);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (5, 'WN5860', 'alternateur', 'mecafilter', 4);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (6, 'UA3568', 'filtre a air', 'mecafilter', 38);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (7, 'ET1460', 'filtre a huile', 'knetch', 35);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (8, 'KL6936', 'alternateur', 'knetch', 85);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (9, 'QF3102', 'filtre a huile', 'wix', 86);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (10, 'AF5870', 'filtre a air', 'knetch', 15);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (11, 'AM9111', 'filtre a air', 'knetch', 35);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (12, 'AF2406', 'filtre a air', 'knetch', 30);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (13, 'KE7368', 'alternateur', 'knetch', 26);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (14, 'SK9370', 'alternateur', 'mecafilter', 88);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (15, 'AA1542', 'filtre a air', 'mecafilter', 34);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (16, 'IB1185', 'alternateur', 'mecafilter', 100);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (17, 'AV5545', 'filtre a huile', 'mecafilter', 49);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (18, 'SA7154', 'filtre a air', 'mecafilter', 13);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (19, 'UA4656', 'filtre a huile', 'knetch', 75);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (20, 'IB4351', 'filtre a air', 'mecafilter', 66);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (21, 'AM2848', 'alternateur', 'wix', 83);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (22, 'SK3962', 'filtre a air', 'wix', 26);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (23, 'SQ8844', 'filtre a air', 'wix', 18);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (24, 'EK4632', 'filtre a air', 'mecafilter', 23);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (25, 'IB4174', 'filtre a air', 'mecafilter', 95);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (26, 'AI4783', 'alternateur', 'knetch', 28);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (27, 'LH6336', 'filtre a huile', 'knetch', 90);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (28, 'QR5348', 'filtre a air', 'wix', 51);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (29, 'AV2185', 'filtre a huile', 'knetch', 95);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (30, 'DL4294', 'filtre a air', 'wix', 100);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (31, 'UA8466', 'filtre a huile', 'mecafilter', 87);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (32, 'SA9625', 'filtre a air', 'wix', 53);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (33, 'BA5129', 'filtre a huile', 'wix', 23);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (34, 'AC8457', 'alternateur', 'mecafilter', 79);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (35, 'IB4996', 'filtre a huile', 'mecafilter', 26);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (36, 'AF2692', 'alternateur', 'knetch', 33);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (37, 'QR3146', 'alternateur', 'mecafilter', 49);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (38, 'AV3127', 'filtre a huile', 'mecafilter', 55);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (39, 'ET1712', 'alternateur', 'wix', 97);
insert into g_article (a_id, a_reference, a_designation, a_marque, a_quantite) values (40, 'AZ3752', 'filtre a huile', 'wix', 95);

insert into g_voiture (v_id, v_marque, v_type, v_energie, v_fk_article_id ) values (1, 'Ford', 'Courier', 'essence', 40);
insert into g_voiture (v_id, v_marque, v_type, v_energie, v_fk_article_id ) values (2, 'GMC', '1500', 'gazoil', 33);
insert into g_voiture (v_id, v_marque, v_type, v_energie, v_fk_article_id ) values (3, 'Hyundai', 'XG350', 'gazoil', 40);
insert into g_voiture (v_id, v_marque, v_type, v_energie, v_fk_article_id ) values (4, 'Mitsubishi', 'Truck', 'gazoil', 11);
insert into g_voiture (v_id, v_marque, v_type, v_energie, v_fk_article_id ) values (5, 'Mitsubishi', '3000GT', 'essence', 33);
insert into g_voiture (v_id, v_marque, v_type, v_energie, v_fk_article_id ) values (6, 'Chevrolet', 'S10', 'gazoil', 32);
insert into g_voiture (v_id, v_marque, v_type, v_energie, v_fk_article_id ) values (7, 'Cadillac', 'Eldorado', 'gazoil', 29);
insert into g_voiture (v_id, v_marque, v_type, v_energie, v_fk_article_id ) values (8, 'Ford', 'Escort', 'essence', 8);
insert into g_voiture (v_id, v_marque, v_type, v_energie, v_fk_article_id ) values (9, 'Saab', '9-5', 'éléctrique', 23);
insert into g_voiture (v_id, v_marque, v_type, v_energie, v_fk_article_id ) values (10, 'Mercury', 'Cougar', 'gazoil', 30);

UPDATE `g_article` SET `a_quantite` = 100 WHERE `a_id` = 1;

ALTER TABLE g_voiture  DROP FOREIGN KEY article_fk;
ALTER TABLE `g_voiture` ADD CONSTRAINT `article_fk` FOREIGN KEY (`v_fk_article_id`) REFERENCES `g_article` (`a_id`) ON UPDATE CASCADE ON DELETE CASCADE;