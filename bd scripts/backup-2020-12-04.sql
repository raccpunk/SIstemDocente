--
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumnos`
(
    `id`               bigint(20) unsigned                       NOT NULL AUTO_INCREMENT,
    `nombres`          varchar(191) COLLATE utf8mb4_unicode_ci   NOT NULL,
    `apellido_paterno` varchar(191) COLLATE utf8mb4_unicode_ci   NOT NULL,
    `apellido_materno` varchar(191) COLLATE utf8mb4_unicode_ci        DEFAULT NULL,
    `edad`             int(11)                                        DEFAULT NULL,
    `sexo`             enum ('H','M') COLLATE utf8mb4_unicode_ci NOT NULL,
    `status_id`        bigint(20) unsigned                       NOT NULL,
    `created_at`       timestamp                                 NULL DEFAULT NULL,
    `updated_at`       timestamp                                 NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `alumnos_status_id_foreign` (`status_id`),
    CONSTRAINT `alumnos_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `status_alumno` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 145
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos`
    DISABLE KEYS */;
INSERT INTO `alumnos` (`id`, `nombres`, `apellido_paterno`, `apellido_materno`, `edad`, `sexo`, `status_id`,
                       `created_at`, `updated_at`)
VALUES (5, 'JIMENA ARACELI', 'BOJORQUEZ', 'HERNANDEZ', 12, 'M', 2, '2020-08-09 18:37:28', '2020-09-10 03:17:45'),
       (6, 'SOFIA MARIBEL', 'BOJORQUEZ', 'NOVELO', 12, 'M', 2, '2020-08-19 14:30:21', '2020-09-11 04:51:17'),
       (7, 'DIEGO EMILIANO', 'BOJORQUEZ', 'TZAB', 11, 'H', 2, '2020-08-19 09:48:48', '2020-09-11 04:52:34'),
       (8, 'KAREN  CAMILA', 'CANUL', 'NOVELO', 11, 'M', 2, '2020-08-20 08:27:30', '2020-09-11 04:53:54'),
       (9, 'ZAZITH MONSERRAT', 'CATZIM', 'PECH', 12, 'M', 2, '2020-08-20 08:41:34', '2020-09-11 04:54:50'),
       (10, 'EMILIO EDUARDO', 'CHAVEZ', 'KU', 11, 'H', 2, '2020-08-20 09:04:28', '2020-09-11 04:56:16'),
       (11, 'PEDRO PAUL', 'CHAY', 'BOJORQUEZ', 12, 'H', 2, '2020-08-20 09:16:30', '2020-09-11 04:57:17'),
       (12, 'MARTHA SOFIA', 'CHAY', 'HERNANDEZ', 12, 'M', 2, '2020-08-23 11:28:58', '2020-09-11 04:58:25'),
       (13, 'SERGIO  JOSE', 'CHI', 'EK', 11, 'H', 2, '2020-08-23 12:02:29', '2020-09-11 04:59:29'),
       (14, 'JALIL ALFREDO', 'CHUC', 'ESQUIVEL', 12, 'H', 2, '2020-08-23 12:18:19', '2020-09-11 05:13:28'),
       (15, 'CLAUDED RENELY', 'COCOM', 'GIO', 11, 'M', 2, '2020-08-23 12:33:32', '2020-09-11 05:14:30'),
       (16, 'JESUS ELIAS', 'ESQUIVEL', 'HERRERA', 11, 'H', 2, '2020-08-23 12:50:04', '2020-09-11 05:15:33'),
       (17, 'SAULO EMILIO', 'EUAN', 'PEÑA', 12, 'H', 2, '2020-08-25 09:41:12', '2020-09-11 05:17:07'),
       (18, 'REGINA', 'FRANCO', 'GARCIA', 12, 'M', 2, '2020-08-25 10:09:36', '2020-09-11 05:18:27'),
       (19, 'BRADWIN AZAEL', 'MARTIN', 'POOT', 11, 'H', 2, '2020-08-25 10:24:46', '2020-09-11 05:19:32'),
       (20, 'ADAIR ENRIQUE', 'MEX', 'CHAN', 11, 'H', 2, '2020-08-25 10:47:50', '2020-09-11 05:20:37'),
       (21, 'GUELMY ANAYLI', 'MEX', 'CHUC', 12, 'M', 2, '2020-08-25 11:00:47', '2020-09-11 05:21:40'),
       (22, 'FERNANDA', 'NOVELO', 'EUAN', 11, 'M', 2, '2020-08-25 11:10:54', '2020-09-11 05:22:49'),
       (23, 'RUSSELL  EMANUEL', 'PECH', 'CARDEÑA', 12, 'H', 2, '2020-08-25 11:26:24', '2020-09-11 05:24:11'),
       (24, 'ANDREA DARIANA', 'QUINTAL', 'NOVELO', 11, 'M', 2, '2020-08-25 11:35:59', '2020-09-11 05:25:37'),
       (25, 'DANNA GERALDINE', 'ROMERO', 'EUAN', 11, 'M', 2, '2020-08-25 11:46:42', '2020-09-11 05:27:15'),
       (26, 'CAMILA DE JESUS', 'TZAB', 'CETINA', 11, 'M', 2, '2020-08-26 22:16:08', '2020-09-11 05:28:12'),
       (27, 'YAZMIN SIBEL', 'UC', 'MAY', 11, 'M', 2, '2020-08-26 12:37:58', '2020-09-11 05:29:41'),
       (28, 'YARED NEFTALY', 'UICAB', 'PUERTO', 12, 'M', 2, '2020-08-27 06:30:40', '2020-09-11 05:31:10'),
       (29, 'KEVIN SAUL', 'YAMA', 'PEÑA', 11, 'H', 2, '2020-08-27 06:38:47', '2020-09-11 05:32:12'),
       (30, 'SILVANA HELEU', 'ADRIAN', 'BOJORQUEZ', 12, 'M', 2, '2020-08-27 06:19:49', NULL),
       (31, 'ODETTE GERALDINE', 'BALAM', 'ESQUIVEL', 11, 'M', 2, '2020-08-27 06:35:41', NULL),
       (32, 'MIGUEL ALEXANDER', 'BARCENAS', 'CANUL', 12, 'H', 2, '2020-08-27 06:58:18', NULL),
       (33, 'JOHANN ESAU', 'BOJORQUEZ', 'KOYOC', 12, 'H', 2, '2020-08-28 22:48:17', NULL),
       (34, 'ROMINA ALESANDRA', 'CAN', 'BALAM', 12, 'M', 2, '2020-08-28 23:02:18', NULL),
       (35, 'CIELO IRAISS', 'CANUL', 'EK', 12, 'M', 2, '2020-08-28 23:13:07', NULL),
       (36, 'DAVID ALEXANDER', 'CAUICH', 'CHAVEZ', 11, 'H', 2, '2020-08-28 23:37:28', NULL),
       (37, 'EDDY ALEXANDER', 'CEBALLOS', 'CHUC', 12, 'H', 2, '2020-08-29 05:19:59', '2020-08-29 00:21:44'),
       (38, 'EMIR ABISAI', 'CHI', 'ARGAEZ', 11, 'H', 2, '2020-08-29 00:36:42', NULL),
       (41, 'MELANIE ALTAIR', 'CHI', 'EUAN', 12, 'M', 2, '2020-09-17 06:16:52', NULL),
       (42, 'KAMILA ALEJANDRA', 'COB', 'NOVELO', 12, 'M', 2, '2020-09-22 02:27:51', NULL),
       (43, 'ISABELLA', 'DZUL', 'MENDOZA', 12, 'M', 2, '2020-09-22 23:23:44', NULL),
       (44, 'BRISIAN YANET', 'EK', 'EK', 12, 'M', 2, '2020-09-23 00:07:10', NULL),
       (45, 'VALERIA GAIL', 'GARCIA', 'RODRIGUEZ', 12, 'M', 2, '2020-09-23 05:21:58', '2020-09-23 00:23:21'),
       (46, 'MAYLI SALET', 'MANZO', 'FRANCO', 12, 'M', 2, '2020-09-23 00:58:23', NULL),
       (47, 'HILLARY VALENTINA', 'MARTIN', 'GOMEZ', 12, 'M', 2, '2020-09-23 01:13:13', NULL),
       (48, 'AILYN SARAI', 'MAY', 'NOVELO', 12, 'M', 2, '2020-09-23 01:23:53', NULL),
       (49, 'NEMESIO RAFAEL', 'MENENDEZ', 'ESCALANTE', 11, 'H', 2, '2020-09-23 01:50:51', NULL),
       (50, 'XIMENA NAHARI', 'MEX', 'BOJORQUEZ', 12, 'M', 2, '2020-09-23 02:08:54', NULL),
       (51, 'JESUS CAMILO', 'NOVELO', 'CANUL', 11, 'H', 2, '2020-09-23 02:17:31', NULL),
       (52, 'GAEL ALEJANDRO', 'POOT', 'AVILA', 11, 'H', 2, '2020-09-23 02:26:07', NULL),
       (53, 'ABRAHAM ISAEL', 'SANDOVAL', 'CHAN', 12, 'H', 2, '2020-09-23 02:37:59', NULL),
       (54, 'VALENTINA DANELY', 'VARGUEZ', 'LARA', 13, 'M', 2, '2020-09-23 02:47:05', NULL),
       (55, 'DANIEL ADRIAN', 'ALEJANDRO', 'ROMERO', 13, 'H', 2, '2020-09-24 08:22:55', '2020-09-24 22:01:07'),
       (56, 'SANTIAGO SAEL', 'BALAM', 'NOVELO', 13, 'H', 2, '2020-09-25 02:24:58', NULL),
       (57, 'JOSUE RUBEN', 'CAAMAL', 'CAUICH', 13, 'H', 2, '2020-09-25 02:35:53', NULL),
       (58, 'VICTOR ALEXANDER', 'CEBALLOS', 'CANUL', 12, 'H', 2, '2020-09-25 02:46:15', NULL),
       (59, 'LUIS EDWUARD', 'CHAY', 'ASCORRA', 13, 'H', 2, '2020-09-25 02:54:51', NULL),
       (60, 'MARIA FERNANDA', 'CHUC', 'HERNANDEZ', 12, 'M', 2, '2020-09-26 23:35:57', '2020-09-26 20:04:05'),
       (61, 'RUSSEL DANIEL', 'DIAZ', 'CETINA', 13, 'H', 2, '2020-09-26 23:55:16', '2020-09-26 20:05:36'),
       (62, 'MARIRENE ELIZABETH', 'FLORES', 'GALAZ', 13, 'M', 2, '2020-09-27 00:21:53', '2020-09-26 20:06:40'),
       (63, 'EDUARDO JESUS', 'GIO', 'PEÑA', 12, 'H', 2, '2020-09-27 00:37:17', '2020-09-26 20:07:35'),
       (64, 'MONTSERRAT ARACELLY', 'GOMEZ', 'PERAZA', 12, 'M', 2, '2020-09-27 00:47:59', '2020-09-26 20:08:34'),
       (65, 'MARIA ESPERANZA', 'HEREDIA', 'COB', 13, 'M', 2, '2020-09-26 20:01:20', NULL),
       (66, 'REGINA VIANEY', 'COL', 'CAUICH', 13, 'M', 2, '2020-09-26 20:20:32', NULL),
       (67, 'YAIR EMMANUEL', 'KOH', 'BOJORQUEZ', 13, 'H', 2, '2020-09-27 15:07:27', NULL),
       (68, 'FANNY BELEM', 'KU', 'NOVELO', 13, 'M', 2, '2020-09-27 15:46:16', NULL),
       (69, 'AMERICA NEFTALY', 'LEON', 'CHUC', 13, 'M', 2, '2020-09-27 16:06:47', NULL),
       (70, 'SUEMY EUNICE', 'LEON', 'ROMERO', 13, 'M', 2, '2020-09-27 16:21:45', NULL),
       (71, 'DOMINIC EMMANUEL', 'NOH', 'CANUL', 13, 'H', 2, '2020-09-27 16:56:21', NULL),
       (72, 'ZAZIL-HA  DE LOS ANGELES', 'PANTOJA', 'TRUJEQUE', 13, 'M', 2, '2020-09-27 17:05:51', NULL),
       (73, 'ANADALY DE LOS ANGELES', 'PECH', 'CANUL', 12, 'M', 2, '2020-09-27 19:40:05', NULL),
       (74, 'MARELY GIOMARY', 'PECH', 'NOVELO', 13, 'M', 2, '2020-09-27 19:51:39', NULL),
       (75, 'VALERI NICOLE', 'PEREZ', 'CHUC', 13, 'M', 2, '2020-09-27 20:05:52', NULL),
       (76, 'DIANA SOFIA', 'PEÑA', 'CHUC', 12, 'M', 2, '2020-09-27 20:15:41', NULL),
       (77, 'HASSAN EMANUEL', 'QUIJANO', 'GONZALEZ', 13, 'H', 1, '2020-09-27 20:24:55', NULL),
       (78, 'ANTUAN EMMANUEL', 'SILVEIRA', 'FRANCO', 12, 'H', 2, '2020-09-27 20:44:53', NULL),
       (79, 'MANUEL EDUARDO', 'SOLIS', 'QUINTAL', 13, 'H', 2, '2020-09-28 06:54:13', '2020-09-27 21:46:39'),
       (80, 'JOAQUIN ISMAEL', 'TZAB', 'POOT', 13, 'H', 2, '2020-09-27 21:21:57', NULL),
       (81, 'YOSMAR MANUEL', 'UICAB', 'CHAN', 12, 'H', 2, '2020-09-27 21:34:35', NULL),
       (82, 'MATEO', 'VARGUEZ', 'CHI', 13, 'H', 2, '2020-09-27 21:45:33', NULL),
       (83, 'PEDRO EMMANUEL', 'ALCOCER', 'GOMEZ', 13, 'H', 2, '2020-09-27 22:06:34', NULL),
       (84, 'IRVIN JAVIER', 'CANUL', 'CANUL', 12, 'H', 2, '2020-09-27 22:15:52', NULL),
       (85, 'JOEL DE JESUS', 'CANUL', 'KOYOK', 13, 'H', 2, '2020-09-27 22:28:15', NULL),
       (86, 'MONSERRAT AMAYRANI', 'CANUL', 'NOVELO', 13, 'M', 2, '2020-09-27 22:39:09', NULL),
       (87, 'URIEL ARCANGEL', 'CASTRO', 'UC', 14, 'H', 2, '2020-09-27 22:53:57', NULL),
       (88, 'ANGEL GABRIEL', 'CEBALLOS', 'VENTURA', 12, 'H', 2, '2020-09-27 23:16:01', NULL),
       (89, 'GUILLERMO  ENRIQUE', 'CEBALLOS', 'VENTURA', 13, 'H', 2, '2020-09-27 23:27:58', NULL),
       (90, 'DARIANA BEATRIZ', 'CHAN', 'CETINA', 13, 'M', 2, '2020-09-28 00:18:36', NULL),
       (91, 'YASURI BEATRIZ', 'CHI', 'UICAB', 12, 'M', 2, '2020-09-28 00:29:20', NULL),
       (92, 'EDGARDO DE JESUS', 'CHUC', 'EK', 13, 'H', 2, '2020-09-28 00:41:13', NULL),
       (93, 'ASAEL FRANCISCO', 'CHUC', 'MENDEZ', 13, 'H', 2, '2020-09-28 16:40:14', NULL),
       (94, 'BARBARA NAYBILI', 'EK', 'KU', 12, 'M', 2, '2020-09-28 16:56:04', NULL),
       (95, 'MARIO YUMILAIM', 'GIO', 'KOYOC', 13, 'H', 2, '2020-09-28 17:17:05', NULL),
       (96, 'DANIELA AMAYRANI', 'HERRERA', 'TORRES', 12, 'M', 2, '2020-09-28 17:30:53', NULL),
       (97, 'MARIA FERNANDA', 'HU', 'PUC', 13, 'M', 2, '2020-09-28 17:43:18', NULL),
       (98, 'LAURA MARITERE', 'MALDONADO', 'TZAB', 12, 'M', 2, '2020-09-28 17:55:09', NULL),
       (99, 'ELEAZAR ESAU', 'MEX', 'CHUC', 13, 'H', 2, '2020-09-28 18:03:52', NULL),
       (100, 'BRAULIO JAVIER', 'PAT', 'COOL', 13, 'H', 2, '2020-09-28 18:19:20', NULL),
       (101, 'BERTY GUADALUPE', 'PECH', 'CHUC', 12, 'M', 2, '2020-09-28 23:29:09', '2020-09-28 18:32:37'),
       (102, 'JOSE DE JESUS', 'PEREZ', 'CANUL', 12, 'H', 2, '2020-09-28 18:47:05', NULL),
       (103, 'NATALY GUADALUPE', 'PEÑA', 'EK', 13, 'M', 2, '2020-09-28 23:57:52', '2020-09-28 19:01:39'),
       (104, 'BETSABE', 'PEÑA', 'KOYOC', 12, 'M', 2, '2020-09-28 19:13:46', NULL),
       (105, 'ALEX ESAU', 'POOT', 'ACEVEDO', 13, 'H', 2, '2020-09-28 19:22:30', NULL),
       (106, 'SANTIAGO DANIEL', 'QUINTAL', 'EUAN', 13, 'H', 2, '2020-09-28 21:36:58', NULL),
       (107, 'ANGELA NOEMI', 'VAZQUEZ', 'YAM', 13, 'M', 2, '2020-09-28 21:50:41', NULL),
       (108, 'ANELY ASUNCION', 'BOJORQUEZ', 'PERAZA', 13, 'M', 2, '2020-09-29 01:44:49', NULL),
       (109, 'JOSE  ELIAS', 'CAAMAL', 'COB', 14, 'H', 2, '2020-09-29 01:53:24', NULL),
       (110, 'DIEGO MAXIMILIANO', 'CASTILLA', 'DURAN', 13, 'H', 2, '2020-09-29 02:02:04', NULL),
       (111, 'DAFNE GUADALUPE', 'CAUICH', 'CHAVEZ', 14, 'M', 2, '2020-09-29 02:12:47', NULL),
       (112, 'LEONEL DE JESUS', 'CORDOVA', 'CANUL', 14, 'H', 2, '2020-09-29 02:22:26', NULL),
       (113, 'ALBERTH ISUAEL', 'DZUL', 'DZIB', 14, 'H', 2, '2020-09-29 20:30:13', NULL),
       (114, 'ANGEL JESUS', 'GALAZ', 'CANUL', 14, 'H', 2, '2020-09-30 00:43:21', NULL),
       (115, 'RAFAEL ALBERTO', 'KOYOC', 'POOT', 13, 'H', 2, '2020-09-30 00:56:14', NULL),
       (116, 'KARLA NEFTHALY', 'MENDEZ', 'AVILA', 14, 'M', 2, '2020-09-30 01:05:30', NULL),
       (117, 'EMMANUEL ENRIQUE', 'MENDEZ', 'PEÑA', 13, 'H', 2, '2020-09-30 01:15:39', NULL),
       (118, 'DANIELA ALEJANDRA', 'MONSREAL', 'CHAC', 14, 'M', 2, '2020-09-30 01:42:22', NULL),
       (119, 'WILBERTH DE JESUS', 'PACHECO', 'POOT', 14, 'H', 2, '2020-09-30 01:50:04', NULL),
       (120, 'AMAIRANI ASUNCION', 'PERAZA', 'CANUL', 14, 'M', 2, '2020-09-30 02:01:27', NULL),
       (121, 'JOEL ALEXANDER', 'ROMERO', 'PUERTO', 14, 'H', 2, '2020-09-30 03:19:05', NULL),
       (122, 'WILMER FERNANDO', 'ROMERO', 'SOLIS', 15, 'H', 2, '2020-09-30 03:38:52', NULL),
       (123, 'KRISTY JULIANY', 'SOLIS', 'MARTIN', 14, 'M', 2, '2020-09-30 03:49:10', NULL),
       (124, 'GIANCARLO  SERGEI', 'SOLIS', 'TUM', 14, 'H', 2, '2020-09-30 04:00:33', NULL),
       (125, 'CESAR MANUEL', 'UC', 'PEÑA', 14, 'H', 2, '2020-09-30 04:08:06', NULL),
       (126, 'VALERIA GUADALUPE', 'BOJORQUEZ', 'NOVELO', 14, 'M', 2, '2020-09-30 04:46:38', NULL),
       (127, 'PAOLA GUADALUPE', 'BOJORQUEZ', 'TZAB', 14, 'M', 2, '2020-09-30 04:55:28', NULL),
       (128, 'PABLO DAVID', 'CAAMAL', 'CANUL', 14, 'H', 2, '2020-09-30 05:03:37', NULL),
       (129, 'JUAN PABLO', 'CEN', 'KOYOC', 14, 'H', 2, '2020-09-30 05:19:07', NULL),
       (130, 'JOSHUA AZAEL', 'CHACON', 'CHOCH', 13, 'H', 2, '2020-09-30 05:28:07', NULL),
       (131, 'VIVIAN DEL CARMEN', 'CHIN', 'CHACON', 13, 'M', 2, '2020-09-30 05:36:46', NULL),
       (132, 'MOISES ESAU', 'CHUC', 'MOLINA', 14, 'H', 2, '2020-09-30 05:43:14', NULL),
       (133, 'ALFONSO JAVIER', 'EK', 'TOME', 15, 'H', 2, '2020-09-30 05:49:51', NULL),
       (134, 'NATALIA GUADALUPE', 'EUAN', 'BALAM', 13, 'M', 2, '2020-09-30 05:57:36', NULL),
       (135, 'ADAMARI SARAI', 'FRANCO', 'LOPEZ', 13, 'M', 2, '2020-09-30 06:07:00', NULL),
       (136, 'IKER GUILLERMO', 'MOO', 'MEX', 14, 'H', 2, '2020-09-30 06:14:24', NULL),
       (137, 'MONSERRAT ALEJANDRA', 'NOH', 'BALAM', 14, 'M', 2, '2020-09-30 06:23:14', NULL),
       (138, 'MARIA ALEJANDRA', 'NOVELO', 'HERNANDEZ', 15, 'M', 2, '2020-09-30 06:37:21', NULL),
       (139, 'JARED ALEJANDRO', 'NOVELO', 'PACHECO', 16, 'H', 2, '2020-09-30 06:45:50', NULL),
       (140, 'JOSE ALBERTO', 'PECH', 'CHIN', 14, 'H', 2, '2020-09-30 06:53:25', NULL),
       (141, 'LIZARDO DANAEL', 'QUINTAL', 'PUC', 16, 'H', 2, '2020-09-30 07:01:40', NULL),
       (142, 'JOSAEL MODESTO', 'UICAB', 'CASANOVA', 14, 'H', 2, '2020-09-30 07:21:08', NULL),
       (143, 'ESAU  YOEL', 'VENTURA', 'NOVELO', 15, 'H', 2, '2020-09-30 07:48:35', NULL);

DROP TABLE IF EXISTS `asignaturas`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asignaturas`
(
    `id`         bigint(20) unsigned                     NOT NULL AUTO_INCREMENT,
    `nombre`     varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `creditos`   int(11)                                 NOT NULL,
    `created_at` timestamp                               NULL DEFAULT NULL,
    `updated_at` timestamp                               NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `asignaturas_nombre_unique` (`nombre`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 14
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignaturas`
--

LOCK TABLES `asignaturas` WRITE;
/*!40000 ALTER TABLE `asignaturas`
    DISABLE KEYS */;
INSERT INTO `asignaturas`
VALUES (1, 'ESPAÑOL', 100, '2020-07-04 06:49:51', NULL),
       (2, 'MATEMATICAS', 100, '2020-08-03 23:41:59', NULL),
       (3, 'INGLES', 100, '2020-08-03 23:42:39', NULL),
       (4, 'CIENCIAS', 100, '2020-08-03 23:43:16', NULL),
       (5, 'GEOGRAFIA', 100, '2020-08-03 23:44:07', NULL),
       (6, 'HISTORIA', 100, '2020-08-03 23:44:51', NULL),
       (7, 'FORM.CIV.ÉTI.', 100, '2020-08-03 23:45:48', NULL),
       (8, 'TECNOLOGIA', 100, '2020-08-03 23:46:29', NULL),
       (9, 'EDUC.FISICA', 100, '2020-08-03 23:46:51', NULL),
       (10, 'ARTISTICA', 100, '2020-08-03 23:47:45', '2020-10-30 15:43:50'),
       (11, 'TUTORIA', 100, '2020-08-03 23:48:01', NULL),
       (12, 'VALORES', 100, '2020-08-03 23:50:54', NULL),
       (13, 'VIDA SALUDABLE', 100, '2020-09-23 04:37:15', '2020-09-23 04:48:20');
/*!40000 ALTER TABLE `asignaturas`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciclo_escolar`
--

DROP TABLE IF EXISTS `ciclo_escolar`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciclo_escolar`
(
    `id`           bigint(20) unsigned                     NOT NULL AUTO_INCREMENT,
    `nombre`       varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `fecha_inicio` date                                    NOT NULL,
    `fecha_fin`    date                                    NOT NULL,
    `estado_id`    bigint(20) unsigned                     NOT NULL,
    `created_at`   timestamp                               NULL DEFAULT NULL,
    `updated_at`   timestamp                               NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `ciclo_escolar_estado_id_foreign` (`estado_id`),
    CONSTRAINT `ciclo_escolar_estado_id_foreign` FOREIGN KEY (`estado_id`) REFERENCES `estado_ciclo_escolar` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 2
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciclo_escolar`
--

LOCK TABLES `ciclo_escolar` WRITE;
/*!40000 ALTER TABLE `ciclo_escolar`
    DISABLE KEYS */;
INSERT INTO `ciclo_escolar`
VALUES (1, 'Curso escolar 2020-2021', '2020-08-24', '2021-07-06', 1, '2020-06-28 00:09:49', '2020-08-08 07:21:07');
/*!40000 ALTER TABLE `ciclo_escolar`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clases`
--

DROP TABLE IF EXISTS `clases`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clases`
(
    `id`               bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `maestro_id`       bigint(20) unsigned NOT NULL,
    `grado_id`         bigint(20) unsigned NOT NULL,
    `grupo_id`         bigint(20) unsigned NOT NULL,
    `asignatura_id`    bigint(20) unsigned NOT NULL,
    `ciclo_escolar_id` bigint(20) unsigned NOT NULL,
    `created_at`       timestamp           NULL DEFAULT NULL,
    `updated_at`       timestamp           NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `clases_maestro_id_foreign` (`maestro_id`),
    KEY `clases_grado_id_foreign` (`grado_id`),
    KEY `clases_grupo_id_foreign` (`grupo_id`),
    KEY `clases_asignatura_id_foreign` (`asignatura_id`),
    KEY `clases_ciclo_escolar_id_foreign` (`ciclo_escolar_id`),
    CONSTRAINT `clases_asignatura_id_foreign` FOREIGN KEY (`asignatura_id`) REFERENCES `asignaturas` (`id`),
    CONSTRAINT `clases_ciclo_escolar_id_foreign` FOREIGN KEY (`ciclo_escolar_id`) REFERENCES `ciclo_escolar` (`id`),
    CONSTRAINT `clases_grado_id_foreign` FOREIGN KEY (`grado_id`) REFERENCES `grados` (`id`),
    CONSTRAINT `clases_grupo_id_foreign` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`id`),
    CONSTRAINT `clases_maestro_id_foreign` FOREIGN KEY (`maestro_id`) REFERENCES `personal` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 84
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clases`
--

LOCK TABLES `clases` WRITE;
/*!40000 ALTER TABLE `clases`
    DISABLE KEYS */;
INSERT INTO `clases`
VALUES (2, 2, 1, 3, 1, 1, '2020-09-23 08:12:07', '2020-09-23 08:12:07'),
       (4, 1, 1, 3, 12, 1, '2020-09-23 03:26:47', '2020-09-23 03:26:47'),
       (8, 1, 1, 5, 12, 1, '2020-09-23 03:52:04', '2020-09-23 03:52:04'),
       (9, 1, 2, 3, 12, 1, '2020-09-23 03:53:03', '2020-09-23 03:53:03'),
       (11, 1, 2, 5, 12, 1, '2020-09-23 03:54:27', '2020-09-23 03:54:27'),
       (12, 1, 3, 3, 12, 1, '2020-09-23 03:54:55', '2020-09-23 03:54:55'),
       (13, 1, 3, 5, 12, 1, '2020-09-23 03:55:28', '2020-09-23 03:55:28'),
       (14, 2, 1, 5, 1, 1, '2020-09-23 04:18:47', '2020-09-23 04:18:47'),
       (15, 2, 2, 3, 1, 1, '2020-09-23 04:19:10', '2020-09-23 04:19:10'),
       (16, 2, 2, 5, 1, 1, '2020-09-23 04:21:16', '2020-09-23 04:21:16'),
       (17, 2, 3, 3, 1, 1, '2020-09-23 04:21:56', '2020-09-23 04:21:56'),
       (18, 2, 3, 5, 1, 1, '2020-09-23 04:22:18', '2020-09-23 04:22:18'),
       (19, 3, 1, 5, 2, 1, '2020-09-23 04:23:59', '2020-09-23 04:23:59'),
       (20, 3, 3, 3, 2, 1, '2020-09-23 04:24:33', '2020-09-23 04:24:33'),
       (21, 3, 3, 5, 2, 1, '2020-09-23 04:25:03', '2020-09-23 04:25:03'),
       (22, 4, 1, 3, 2, 1, '2020-09-23 04:25:53', '2020-09-23 04:25:53'),
       (23, 4, 2, 3, 2, 1, '2020-09-23 04:26:28', '2020-09-23 04:26:28'),
       (24, 4, 2, 5, 2, 1, '2020-09-23 04:26:54', '2020-09-23 04:26:54'),
       (25, 5, 1, 3, 3, 1, '2020-09-23 04:28:13', '2020-09-23 04:28:13'),
       (26, 5, 1, 5, 3, 1, '2020-09-23 04:28:37', '2020-09-23 04:28:37'),
       (27, 5, 2, 3, 3, 1, '2020-09-23 04:29:37', '2020-09-23 04:29:37'),
       (28, 5, 2, 5, 3, 1, '2020-09-23 04:30:15', '2020-09-23 04:30:15'),
       (29, 6, 3, 3, 3, 1, '2020-09-23 04:31:10', '2020-09-23 04:31:10'),
       (30, 6, 3, 5, 3, 1, '2020-09-23 04:31:36', '2020-09-23 04:31:36'),
       (31, 7, 1, 3, 4, 1, '2020-09-23 04:32:57', '2020-09-23 04:32:57'),
       (32, 7, 1, 5, 4, 1, '2020-09-23 04:33:23', '2020-09-23 04:33:23'),
       (33, 7, 3, 3, 4, 1, '2020-09-23 04:33:51', '2020-09-23 04:33:51'),
       (34, 7, 3, 5, 4, 1, '2020-09-23 04:34:18', '2020-09-23 04:34:18'),
       (35, 8, 2, 3, 4, 1, '2020-09-23 04:35:36', '2020-09-23 04:35:36'),
       (36, 8, 2, 5, 4, 1, '2020-09-23 04:36:07', '2020-09-23 04:36:07'),
       (37, 9, 1, 3, 5, 1, '2020-09-23 04:39:25', '2020-09-23 04:39:25'),
       (38, 9, 1, 5, 5, 1, '2020-09-23 04:39:49', '2020-09-23 04:39:49'),
       (39, 9, 1, 3, 6, 1, '2020-09-23 04:43:04', '2020-09-23 04:43:04'),
       (40, 9, 1, 5, 6, 1, '2020-09-23 04:43:29', '2020-09-23 04:43:29'),
       (41, 9, 2, 3, 6, 1, '2020-09-23 04:44:20', '2020-09-23 04:44:20'),
       (42, 9, 2, 5, 6, 1, '2020-09-23 04:44:54', '2020-09-23 04:44:54'),
       (43, 9, 3, 3, 7, 1, '2020-09-23 04:45:25', '2020-09-23 04:45:25'),
       (44, 9, 3, 5, 7, 1, '2020-09-23 04:46:16', '2020-09-23 04:46:16'),
       (45, 10, 3, 3, 6, 1, '2020-09-23 04:57:45', '2020-09-23 04:57:45'),
       (46, 10, 3, 5, 6, 1, '2020-09-23 04:58:17', '2020-09-23 04:58:17'),
       (47, 11, 1, 3, 7, 1, '2020-09-23 04:59:28', '2020-09-23 04:59:28'),
       (48, 11, 1, 5, 7, 1, '2020-09-23 04:59:56', '2020-09-23 04:59:56'),
       (49, 11, 2, 3, 7, 1, '2020-09-23 05:00:56', '2020-09-23 05:00:56'),
       (50, 11, 2, 5, 7, 1, '2020-09-23 05:01:27', '2020-09-23 05:01:27'),
       (51, 12, 1, 3, 8, 1, '2020-09-23 05:03:30', '2020-09-23 05:03:30'),
       (52, 12, 1, 5, 8, 1, '2020-09-23 05:03:53', '2020-09-23 05:03:53'),
       (53, 12, 2, 3, 8, 1, '2020-09-23 05:04:24', '2020-09-23 05:04:24'),
       (54, 12, 2, 5, 8, 1, '2020-09-23 05:04:54', '2020-09-23 05:04:54'),
       (55, 13, 3, 3, 8, 1, '2020-09-23 05:05:55', '2020-09-23 05:05:55'),
       (56, 13, 3, 5, 8, 1, '2020-09-23 05:06:25', '2020-09-23 05:06:25'),
       (57, 14, 1, 3, 9, 1, '2020-09-23 05:08:58', '2020-09-23 05:08:58'),
       (58, 14, 1, 5, 9, 1, '2020-09-23 05:09:23', '2020-09-23 05:09:23'),
       (59, 14, 2, 3, 9, 1, '2020-09-23 05:09:48', '2020-09-23 05:09:48'),
       (60, 14, 2, 5, 9, 1, '2020-09-23 05:10:20', '2020-09-23 05:10:20'),
       (61, 14, 3, 3, 9, 1, '2020-09-23 05:10:47', '2020-09-23 05:10:47'),
       (62, 14, 3, 5, 9, 1, '2020-09-23 05:11:14', '2020-09-23 05:11:14'),
       (63, 16, 1, 5, 11, 1, '2020-09-23 10:19:17', '2020-09-23 10:19:17'),
       (64, 16, 2, 3, 11, 1, '2020-09-23 10:19:56', '2020-09-23 10:19:56'),
       (65, 16, 3, 5, 11, 1, '2020-09-23 10:20:34', '2020-09-23 10:20:34'),
       (66, 15, 1, 3, 11, 1, '2020-09-23 20:21:28', '2020-09-23 20:21:28'),
       (67, 15, 2, 5, 11, 1, '2020-09-23 10:22:03', '2020-09-23 10:22:03'),
       (68, 15, 3, 3, 11, 1, '2020-09-23 10:22:41', '2020-09-23 10:22:41'),
       (69, 23, 1, 3, 10, 1, '2020-09-24 01:45:55', '2020-09-24 01:45:55'),
       (70, 23, 1, 5, 10, 1, '2020-09-24 01:47:48', '2020-09-24 01:47:48'),
       (71, 23, 2, 3, 10, 1, '2020-09-24 01:54:25', '2020-09-24 01:54:25'),
       (72, 23, 2, 5, 10, 1, '2020-09-24 01:55:05', '2020-09-24 01:55:05'),
       (73, 24, 3, 3, 10, 1, '2020-09-24 01:56:30', '2020-09-24 01:56:30'),
       (74, 24, 3, 5, 10, 1, '2020-09-24 01:57:40', '2020-09-24 01:57:40'),
       (75, 9, 3, 3, 13, 1, '2020-09-24 02:16:50', '2020-09-24 02:16:50'),
       (76, 9, 3, 5, 13, 1, '2020-09-24 02:17:17', '2020-09-24 02:17:17'),
       (77, 11, 1, 3, 13, 1, '2020-09-24 02:20:30', '2020-09-24 02:20:30'),
       (78, 11, 1, 5, 13, 1, '2020-09-24 02:21:01', '2020-09-24 02:21:01'),
       (79, 11, 2, 3, 13, 1, '2020-09-24 02:21:31', '2020-09-24 02:21:31'),
       (80, 11, 2, 5, 13, 1, '2020-09-24 02:22:11', '2020-09-24 02:22:11');
/*!40000 ALTER TABLE `clases`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_ciclo_escolar`
--

DROP TABLE IF EXISTS `estado_ciclo_escolar`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_ciclo_escolar`
(
    `id`         bigint(20) unsigned                     NOT NULL AUTO_INCREMENT,
    `estado`     varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` timestamp                               NULL DEFAULT NULL,
    `updated_at` timestamp                               NULL DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 3
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_ciclo_escolar`
--

LOCK TABLES `estado_ciclo_escolar` WRITE;
/*!40000 ALTER TABLE `estado_ciclo_escolar`
    DISABLE KEYS */;
INSERT INTO `estado_ciclo_escolar`
VALUES (1, 'En curso', '2020-07-01 19:51:14', '2020-07-01 19:51:14'),
       (2, 'Concluido', '2020-07-01 19:51:14', '2020-07-01 19:51:14');
/*!40000 ALTER TABLE `estado_ciclo_escolar`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_personal`
--

DROP TABLE IF EXISTS `estado_personal`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_personal`
(
    `id`         bigint(20) unsigned                     NOT NULL AUTO_INCREMENT,
    `status`     varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` timestamp                               NULL DEFAULT NULL,
    `updated_at` timestamp                               NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `estado_personal_status_unique` (`status`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 4
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_personal`
--

LOCK TABLES `estado_personal` WRITE;
/*!40000 ALTER TABLE `estado_personal`
    DISABLE KEYS */;
INSERT INTO `estado_personal`
VALUES (1, 'Activo', '2020-07-01 19:51:14', '2020-07-01 19:51:14'),
       (2, 'Inactivo', '2020-07-01 19:51:14', '2020-07-01 19:51:14'),
       (3, 'Suspendido', '2020-07-01 19:51:14', '2020-07-01 19:51:14');
/*!40000 ALTER TABLE `estado_personal`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs`
(
    `id`         bigint(20) unsigned                 NOT NULL AUTO_INCREMENT,
    `connection` text COLLATE utf8mb4_unicode_ci     NOT NULL,
    `queue`      text COLLATE utf8mb4_unicode_ci     NOT NULL,
    `payload`    longtext COLLATE utf8mb4_unicode_ci NOT NULL,
    `exception`  longtext COLLATE utf8mb4_unicode_ci NOT NULL,
    `failed_at`  timestamp                           NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs`
    ENABLE KEYS */;
UNLOCK TABLES;



--
-- Table structure for table `grados`
--

DROP TABLE IF EXISTS `grados`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grados`
(
    `id`           bigint(20) unsigned                     NOT NULL AUTO_INCREMENT,
    `nombre_corto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `nombre_largo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at`   timestamp                               NULL DEFAULT NULL,
    `updated_at`   timestamp                               NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `grados_nombre_corto_unique` (`nombre_corto`),
    UNIQUE KEY `grados_nombre_largo_unique` (`nombre_largo`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 4
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grados`
--

LOCK TABLES `grados` WRITE;
/*!40000 ALTER TABLE `grados`
    DISABLE KEYS */;
INSERT INTO `grados`
VALUES (1, '1°', 'PRIMER GRADO', '2020-07-04 05:10:21', NULL),
       (2, '2º', 'SEGUNDO GRADO', '2020-07-23 19:42:41', NULL),
       (3, '3º', 'TERCER GRADO', '2020-07-23 19:42:52', NULL);
/*!40000 ALTER TABLE `grados`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo_alumnos`
--

DROP TABLE IF EXISTS `grupo_alumnos`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupo_alumnos`
(
    `id`               bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `ciclo_escolar_id` bigint(20) unsigned NOT NULL,
    `alumno_id`        bigint(20) unsigned NOT NULL,
    `grupo_id`         bigint(20) unsigned NOT NULL,
    `grado_id`         bigint(20) unsigned NOT NULL,
    `created_at`       timestamp           NULL DEFAULT NULL,
    `updated_at`       timestamp           NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `grupo_alumnos_alumno_id_foreign` (`alumno_id`),
    KEY `grupo_alumnos_ciclo_escolar_id_foreign` (`ciclo_escolar_id`),
    KEY `grupo_alumnos_grupo_id_foreign` (`grupo_id`),
    KEY `grupo_alumnos_grado_id_foreign` (`grado_id`),
    CONSTRAINT `grupo_alumnos_alumno_id_foreign` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`id`),
    CONSTRAINT `grupo_alumnos_ciclo_escolar_id_foreign` FOREIGN KEY (`ciclo_escolar_id`) REFERENCES `ciclo_escolar` (`id`),
    CONSTRAINT `grupo_alumnos_grado_id_foreign` FOREIGN KEY (`grado_id`) REFERENCES `grados` (`id`),
    CONSTRAINT `grupo_alumnos_grupo_id_foreign` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 181
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo_alumnos`
--

LOCK TABLES `grupo_alumnos` WRITE;
/*!40000 ALTER TABLE `grupo_alumnos`
    DISABLE KEYS */;
INSERT INTO `grupo_alumnos`
VALUES (1, 1, 5, 3, 1, '2020-08-20 04:20:13', NULL),
       (2, 1, 6, 3, 1, '2020-08-20 04:20:19', NULL),
       (4, 1, 7, 3, 1, '2020-08-20 04:20:39', NULL),
       (8, 1, 8, 3, 1, '2020-08-20 04:22:45', NULL),
       (9, 1, 9, 3, 1, '2020-08-20 04:22:53', NULL),
       (10, 1, 10, 3, 1, '2020-08-20 04:23:24', NULL),
       (12, 1, 11, 3, 1, '2020-08-20 04:23:48', NULL),
       (13, 1, 15, 3, 1, '2020-08-27 06:42:18', NULL),
       (14, 1, 13, 3, 1, '2020-08-27 06:42:18', NULL),
       (15, 1, 14, 3, 1, '2020-08-27 06:42:18', NULL),
       (16, 1, 12, 3, 1, '2020-08-27 06:42:18', NULL),
       (17, 1, 17, 3, 1, '2020-08-27 06:42:18', NULL),
       (18, 1, 16, 3, 1, '2020-08-27 06:42:18', NULL),
       (19, 1, 21, 3, 1, '2020-08-27 06:42:18', NULL),
       (20, 1, 20, 3, 1, '2020-08-27 06:42:18', NULL),
       (21, 1, 18, 3, 1, '2020-08-27 06:42:19', NULL),
       (22, 1, 23, 3, 1, '2020-08-27 06:42:19', NULL),
       (23, 1, 22, 3, 1, '2020-08-27 06:42:19', NULL),
       (24, 1, 19, 3, 1, '2020-08-27 06:42:19', NULL),
       (25, 1, 24, 3, 1, '2020-08-27 06:42:19', NULL),
       (26, 1, 25, 3, 1, '2020-08-27 06:42:19', NULL),
       (27, 1, 26, 3, 1, '2020-08-27 06:42:19', NULL),
       (28, 1, 28, 3, 1, '2020-08-27 06:42:19', NULL),
       (29, 1, 29, 3, 1, '2020-08-27 06:42:19', NULL),
       (30, 1, 27, 3, 1, '2020-08-27 06:42:19', NULL),
       (31, 1, 31, 5, 1, '2020-09-23 02:56:35', NULL),
       (32, 1, 33, 5, 1, '2020-09-23 02:56:35', NULL),
       (33, 1, 32, 5, 1, '2020-09-23 02:56:35', NULL),
       (34, 1, 34, 5, 1, '2020-09-23 02:56:35', NULL),
       (35, 1, 35, 5, 1, '2020-09-23 02:56:35', NULL),
       (36, 1, 30, 5, 1, '2020-09-23 02:56:35', NULL),
       (37, 1, 36, 5, 1, '2020-09-23 02:56:36', NULL),
       (38, 1, 38, 5, 1, '2020-09-23 02:56:36', NULL),
       (39, 1, 37, 5, 1, '2020-09-23 02:56:36', NULL),
       (40, 1, 41, 5, 1, '2020-09-23 02:56:36', NULL),
       (41, 1, 42, 5, 1, '2020-09-23 02:56:36', NULL),
       (42, 1, 44, 5, 1, '2020-09-23 02:56:36', NULL),
       (43, 1, 43, 5, 1, '2020-09-23 02:56:36', NULL),
       (44, 1, 45, 5, 1, '2020-09-23 02:56:37', NULL),
       (45, 1, 46, 5, 1, '2020-09-23 02:56:37', NULL),
       (46, 1, 47, 5, 1, '2020-09-23 02:56:37', NULL),
       (47, 1, 48, 5, 1, '2020-09-23 02:56:37', NULL),
       (48, 1, 49, 5, 1, '2020-09-23 02:56:37', NULL),
       (49, 1, 52, 5, 1, '2020-09-23 02:56:37', NULL),
       (50, 1, 51, 5, 1, '2020-09-23 02:56:37', NULL),
       (51, 1, 50, 5, 1, '2020-09-23 02:56:37', NULL),
       (52, 1, 53, 5, 1, '2020-09-23 02:56:38', NULL),
       (53, 1, 54, 5, 1, '2020-09-23 02:56:38', NULL),
       (54, 1, 56, 3, 2, '2020-09-28 21:54:12', NULL),
       (55, 1, 55, 3, 2, '2020-09-28 21:54:12', NULL),
       (57, 1, 57, 3, 2, '2020-09-28 21:54:12', NULL),
       (58, 1, 58, 3, 2, '2020-09-28 21:56:20', NULL),
       (59, 1, 59, 3, 2, '2020-09-28 21:57:29', NULL),
       (60, 1, 60, 3, 2, '2020-09-28 21:57:29', NULL),
       (62, 1, 66, 3, 2, '2020-09-28 21:57:53', NULL),
       (63, 1, 63, 3, 2, '2020-09-28 21:59:24', NULL),
       (64, 1, 61, 3, 2, '2020-09-28 21:59:24', NULL),
       (65, 1, 64, 3, 2, '2020-09-28 21:59:24', NULL),
       (66, 1, 62, 3, 2, '2020-09-28 21:59:24', NULL),
       (67, 1, 67, 3, 2, '2020-09-28 22:01:41', NULL),
       (68, 1, 68, 3, 2, '2020-09-28 22:01:41', NULL),
       (70, 1, 65, 3, 2, '2020-09-28 22:03:29', NULL),
       (72, 1, 69, 3, 2, '2020-09-28 22:04:50', NULL),
       (76, 1, 70, 3, 2, '2020-09-28 22:13:36', NULL),
       (77, 1, 71, 3, 2, '2020-09-28 22:13:36', NULL),
       (78, 1, 72, 3, 2, '2020-09-28 22:13:36', NULL),
       (83, 1, 73, 3, 2, '2020-09-28 22:22:03', NULL),
       (84, 1, 74, 3, 2, '2020-09-28 22:22:03', NULL),
       (87, 1, 75, 3, 2, '2020-09-28 22:25:13', NULL),
       (90, 1, 76, 3, 2, '2020-09-28 22:29:36', NULL),
       (91, 1, 77, 3, 2, '2020-09-28 22:29:36', NULL),
       (92, 1, 78, 3, 2, '2020-09-28 22:29:36', NULL),
       (93, 1, 80, 3, 2, '2020-09-28 22:30:48', NULL),
       (94, 1, 79, 3, 2, '2020-09-28 22:30:49', NULL),
       (95, 1, 81, 3, 2, '2020-09-28 22:30:49', NULL),
       (96, 1, 82, 3, 2, '2020-09-28 22:32:10', NULL),
       (99, 1, 83, 5, 2, '2020-09-28 22:34:20', NULL),
       (100, 1, 84, 5, 2, '2020-09-28 22:34:20', NULL),
       (103, 1, 85, 5, 2, '2020-09-28 22:36:06', NULL),
       (105, 1, 86, 5, 2, '2020-09-28 22:36:46', NULL),
       (106, 1, 87, 5, 2, '2020-09-28 22:37:23', NULL),
       (107, 1, 88, 5, 2, '2020-09-28 22:37:59', NULL),
       (110, 1, 90, 5, 2, '2020-09-28 22:38:49', NULL),
       (111, 1, 92, 5, 2, '2020-09-28 22:38:49', NULL),
       (112, 1, 91, 5, 2, '2020-09-28 22:38:49', NULL),
       (113, 1, 94, 5, 2, '2020-09-28 22:40:45', NULL),
       (114, 1, 96, 5, 2, '2020-09-28 22:40:45', NULL),
       (116, 1, 95, 5, 2, '2020-09-28 22:40:45', NULL),
       (117, 1, 89, 5, 2, '2020-09-28 22:40:45', NULL),
       (118, 1, 93, 5, 2, '2020-09-28 22:51:11', NULL),
       (119, 1, 97, 5, 2, '2020-09-28 22:51:57', NULL),
       (121, 1, 98, 5, 2, '2020-09-28 22:52:59', NULL),
       (122, 1, 99, 5, 2, '2020-09-28 22:53:46', NULL),
       (123, 1, 100, 5, 2, '2020-09-28 22:55:06', NULL),
       (124, 1, 101, 5, 2, '2020-09-28 22:55:22', NULL),
       (125, 1, 102, 5, 2, '2020-09-28 22:56:16', NULL),
       (127, 1, 106, 5, 2, '2020-09-28 22:59:59', NULL),
       (128, 1, 104, 5, 2, '2020-09-28 22:59:59', NULL),
       (129, 1, 105, 5, 2, '2020-09-28 22:59:59', NULL),
       (130, 1, 103, 5, 2, '2020-09-28 22:59:59', NULL),
       (131, 1, 107, 5, 2, '2020-09-28 22:59:59', NULL),
       (132, 1, 109, 3, 3, '2020-09-30 04:16:13', NULL),
       (133, 1, 108, 3, 3, '2020-09-30 04:16:13', NULL),
       (134, 1, 110, 3, 3, '2020-09-30 04:16:44', NULL),
       (135, 1, 111, 3, 3, '2020-09-30 04:16:53', NULL),
       (136, 1, 114, 3, 3, '2020-09-30 04:17:48', NULL),
       (137, 1, 112, 3, 3, '2020-09-30 04:17:48', NULL),
       (138, 1, 113, 3, 3, '2020-09-30 04:17:48', NULL),
       (139, 1, 115, 3, 3, '2020-09-30 04:18:07', NULL),
       (140, 1, 116, 3, 3, '2020-09-30 04:18:07', NULL),
       (141, 1, 117, 3, 3, '2020-09-30 04:18:07', NULL),
       (142, 1, 118, 3, 3, '2020-09-30 04:19:21', NULL),
       (143, 1, 120, 3, 3, '2020-09-30 04:19:21', NULL),
       (144, 1, 119, 3, 3, '2020-09-30 04:19:21', NULL),
       (156, 1, 121, 3, 3, '2020-09-30 04:32:55', NULL),
       (157, 1, 122, 3, 3, '2020-09-30 04:34:45', NULL),
       (159, 1, 125, 3, 3, '2020-09-30 04:35:29', NULL),
       (160, 1, 124, 3, 3, '2020-09-30 04:36:02', NULL),
       (161, 1, 123, 3, 3, '2020-09-30 04:37:03', NULL),
       (162, 1, 126, 5, 3, '2020-09-30 07:32:39', NULL),
       (163, 1, 127, 5, 3, '2020-09-30 07:32:39', NULL),
       (164, 1, 128, 5, 3, '2020-09-30 07:33:17', NULL),
       (165, 1, 131, 5, 3, '2020-09-30 07:33:17', NULL),
       (166, 1, 132, 5, 3, '2020-09-30 07:33:17', NULL),
       (167, 1, 130, 5, 3, '2020-09-30 07:33:17', NULL),
       (168, 1, 133, 5, 3, '2020-09-30 07:33:17', NULL),
       (169, 1, 129, 5, 3, '2020-09-30 07:33:17', NULL),
       (170, 1, 135, 5, 3, '2020-09-30 07:34:21', NULL),
       (171, 1, 134, 5, 3, '2020-09-30 07:34:21', NULL),
       (172, 1, 137, 5, 3, '2020-09-30 07:34:21', NULL),
       (173, 1, 138, 5, 3, '2020-09-30 07:34:21', NULL),
       (174, 1, 136, 5, 3, '2020-09-30 07:34:21', NULL),
       (175, 1, 139, 5, 3, '2020-09-30 07:34:21', NULL),
       (176, 1, 140, 5, 3, '2020-09-30 07:35:03', NULL),
       (177, 1, 141, 5, 3, '2020-09-30 07:35:03', NULL),
       (178, 1, 143, 5, 3, '2020-09-30 07:35:03', NULL),
       (179, 1, 142, 5, 3, '2020-09-30 07:35:03', NULL),
       (180, 1, 144, 5, 3, '2020-09-30 07:49:16', NULL);
/*!40000 ALTER TABLE `grupo_alumnos`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupos`
--

DROP TABLE IF EXISTS `grupos`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupos`
(
    `id`         bigint(20) unsigned                     NOT NULL AUTO_INCREMENT,
    `nombre`     varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` timestamp                               NULL DEFAULT NULL,
    `updated_at` timestamp                               NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `grupos_nombre_unique` (`nombre`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 6
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupos`
--

LOCK TABLES `grupos` WRITE;
/*!40000 ALTER TABLE `grupos`
    DISABLE KEYS */;
INSERT INTO `grupos`
VALUES (3, 'A', '2020-08-08 07:25:02', '2020-08-08 19:35:00'),
       (5, 'B', '2020-08-08 07:26:24', '2020-08-08 19:35:07');
/*!40000 ALTER TABLE `grupos`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instituciones`
--

DROP TABLE IF EXISTS `instituciones`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instituciones`
(
    `id`         bigint(20) unsigned                     NOT NULL AUTO_INCREMENT,
    `nombre`     varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `direccion`  varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `clave`      varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `email`      varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` timestamp                               NULL DEFAULT NULL,
    `updated_at` timestamp                               NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `instituciones_clave_unique` (`clave`),
    UNIQUE KEY `instituciones_email_unique` (`email`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 2
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instituciones`
--

LOCK TABLES `instituciones` WRITE;
/*!40000 ALTER TABLE `instituciones`
    DISABLE KEYS */;
INSERT INTO `instituciones`
VALUES (1, 'FRAY DIEGO DE LANDA', 'C. 23 No. 206-D x 30 y 32 HUNUCMÁ, YUCATÁN', '31PES0079A',
        'fray_diego64@hotmail.com', '2020-07-01 19:51:13', '2020-07-01 19:51:13');
/*!40000 ALTER TABLE `instituciones`
    ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `periodos`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `periodos`
(
    `id`               bigint(20) unsigned                     NOT NULL AUTO_INCREMENT,
    `nombre`           varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `fecha_inicio`     date                                    NOT NULL,
    `fecha_fin`        date                                    NOT NULL,
    `ciclo_escolar_id` bigint(20) unsigned                     NOT NULL,
    `created_at`       timestamp                               NULL DEFAULT NULL,
    `updated_at`       timestamp                               NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `periodos_ciclo_escolar_id_foreign` (`ciclo_escolar_id`),
    CONSTRAINT `periodos_ciclo_escolar_id_foreign` FOREIGN KEY (`ciclo_escolar_id`) REFERENCES `ciclo_escolar` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 5
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periodos`
--

LOCK TABLES `periodos` WRITE;
/*!40000 ALTER TABLE `periodos`
    DISABLE KEYS */;
INSERT INTO `periodos`
VALUES (2, 'MOMENTO 1. 1er. TRIMESTRE', '2020-10-05', '2020-10-13', 1, '2020-09-30 22:57:57', NULL),
       (3, '2do. TRIMESTRE', '2021-02-02', '2021-02-09', 1, '2020-10-29 00:14:27', NULL),
       (4, '3er. TRIMESTRE', '2021-04-13', '2021-06-24', 1, '2020-10-29 00:22:32', NULL);
/*!40000 ALTER TABLE `periodos`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions`
(
    `id`         bigint(20) unsigned                     NOT NULL AUTO_INCREMENT,
    `name`       varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` timestamp                               NULL DEFAULT NULL,
    `updated_at` timestamp                               NULL DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 21
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


CREATE TABLE `personal`
(
    `id`             bigint(20) unsigned                     NOT NULL AUTO_INCREMENT,
    `nombres`        varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `apellidos`      varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `telefono`       varchar(191) COLLATE utf8mb4_unicode_ci      DEFAULT NULL,
    `foto`           varchar(191) COLLATE utf8mb4_unicode_ci      DEFAULT NULL,
    `puesto_id`      bigint(20) unsigned                     NOT NULL,
    `usuario_id`     bigint(20) unsigned                     NOT NULL,
    `institucion_id` bigint(20) unsigned                     NOT NULL,
    `status_id`      bigint(20) unsigned                     NOT NULL,
    `created_at`     timestamp                               NULL DEFAULT NULL,
    `updated_at`     timestamp                               NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `personal_puesto_id_foreign` (`puesto_id`),
    KEY `personal_usuario_id_foreign` (`usuario_id`),
    KEY `personal_institucion_id_foreign` (`institucion_id`),
    KEY `personal_status_id_foreign` (`status_id`),
    CONSTRAINT `personal_institucion_id_foreign` FOREIGN KEY (`institucion_id`) REFERENCES `instituciones` (`id`),
    CONSTRAINT `personal_puesto_id_foreign` FOREIGN KEY (`puesto_id`) REFERENCES `puestos` (`id`),
    CONSTRAINT `personal_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `estado_personal` (`id`),
    CONSTRAINT `personal_usuario_id_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 26
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101

INSERT
INTO `personal`
VALUES (1, 'JUAN JOSE', 'MARTINEZ LEYVA', '9995539099', NULL, 1, 2, 1, 1, '2020-07-04 10:55:59', '2020-10-28 01:01:01'),
       (2, 'LOREMI BEATRIZ', 'MENDEZ EK', '9994952729', NULL, 3, 3, 1, 1, '2020-07-04 11:23:41', '2020-10-29 01:39:58'),
       (3, 'MONICA ARACELLY', 'PERAZA CANUL', '9889678444', NULL, 3, 4, 1, 1, '2020-07-04 11:47:14',
        '2020-08-01 06:34:15'),
       (4, 'ANGELES MARGARITA', 'BALAM KOYOC', '9991592453', NULL, 3, 5, 1, 1, '2020-07-23 19:50:08',
        '2020-10-27 17:31:06'),
       (5, 'DIANEY CONCEPCION', 'HUH HUH', '9994188986', NULL, 3, 6, 1, 1, '2020-07-24 05:57:17',
        '2020-11-24 18:09:52'),
       (6, 'SERGIO ALFONSO', 'TZAB COB', '9994966743', NULL, 3, 7, 1, 1, '2020-08-01 05:28:01', '2020-10-27 23:04:14'),
       (7, 'CANDELARIA DEL ROSARIO', 'CHAN DIAZ', '9999920629', NULL, 3, 8, 1, 1, '2020-08-01 05:44:10',
        '2020-08-01 05:44:10'),
       (8, 'SALETT ARACELY', 'PAT MARTIN', '9992451000', NULL, 3, 9, 1, 1, '2020-08-01 06:02:00',
        '2020-08-01 06:02:00'),
       (9, 'MANUEL JESUS', 'LEON CHAN', '9992095132', NULL, 3, 10, 1, 1, '2020-08-01 06:51:46', '2020-10-28 20:30:26'),
       (10, 'JUAN ANTONIO', 'RODRIGUEZ MENDEZ', '9889664577', NULL, 3, 11, 1, 1, '2020-08-01 07:22:10',
        '2020-10-28 20:48:54'),
       (11, 'YANISLE YOSELIN', 'PE�A PUERTO', '9996461016', NULL, 3, 12, 1, 1, '2020-08-01 07:35:55',
        '2020-08-01 07:35:55'),
       (12, 'AMADO EUTIQUIO', 'NOH UC', '9991942356', NULL, 3, 13, 1, 1, '2020-08-01 07:57:06', '2020-10-30 00:03:53'),
       (13, 'GLORIA MAGDALENA', 'CHABLE VENTURA', '9994642036', NULL, 3, 14, 1, 1, '2020-08-01 08:20:18',
        '2020-11-04 20:32:01'),
       (14, 'FELIPE ABRAHAM', 'LOPEZ SOBERANIS', '9991483383', NULL, 3, 15, 1, 1, '2020-08-04 00:23:10',
        '2020-08-04 00:23:10'),
       (15, 'GILDA MARLENE', 'EK HERNANDEZ', '9994483601', NULL, 3, 16, 1, 1, '2020-08-07 22:53:28',
        '2020-10-27 21:43:16'),
       (16, 'REINA IVETH', 'PUERTO CHUC', '9992564576', NULL, 3, 17, 1, 1, '2020-08-07 23:06:43',
        '2020-11-09 17:49:44'),
       (17, 'ANA GILBERTA', 'CEBALLOS MENDEZ', '9999558419', NULL, 2, 18, 1, 1, '2020-08-07 23:40:27',
        '2020-08-07 23:40:27'),
       (18, 'LAURA GABRIELA', 'MENDEZ EK', '9993323534', NULL, 2, 19, 1, 1, '2020-08-08 05:53:27',
        '2020-08-27 00:57:15'),
       (19, 'ASUNCION MARINA DE JESUS', 'MARTIN CHUC', '9993026986', NULL, 6, 20, 1, 1, '2020-08-08 06:11:19',
        '2020-08-08 06:30:15'),
       (20, 'ROSA ELENA CELESTINA', 'EK SANDOVAL', '9994412164', NULL, 6, 21, 1, 1, '2020-08-08 06:26:28',
        '2020-08-08 06:26:28'),
       (21, 'JESUS ENRIQUE', 'CEBALLOS MENDEZ', '9991200876', NULL, 7, 24, 1, 1, '2020-08-08 06:55:25',
        '2020-08-08 07:02:48'),
       (22, 'PEDRO', 'CHUC CUA', '9999049383', NULL, 9, 25, 1, 1, '2020-08-08 07:09:26', '2020-08-08 07:09:26'),
       (23, 'HUMBERTO ALONSO', 'DZUL CHAN', '9995458734', NULL, 3, 26, 1, 1, '2020-09-24 01:06:46',
        '2020-10-28 01:01:27'),
       (24, 'MARIA DE LOS ANGELES', 'PE�A GIO', '9991548779', NULL, 3, 27, 1, 1, '2020-09-24 01:42:32',
        '2020-09-24 05:05:56');
/*!40000 ALTER TABLE `personal`
    ENABLE KEYS */;
UNLOCK TABLES;
--
-- TABLE structure for TABLE `puestos`
--

DROP TABLE IF EXISTS `puestos`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `puestos`
(
    `id`          bigint(20) unsigned                     NOT NULL AUTO_INCREMENT,
    `funcion`     varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `descripcion` varchar(191) COLLATE utf8mb4_unicode_ci      DEFAULT NULL,
    `created_at`  timestamp                               NULL DEFAULT NULL,
    `updated_at`  timestamp                               NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `puestos_funcion_unique` (`funcion`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 10
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puestos`
--

LOCK TABLES `puestos` WRITE;
/*!40000 ALTER TABLE `puestos`
    DISABLE KEYS */;
INSERT INTO `puestos`
VALUES (1, 'Director', 'Coordinador de la institucion', '2020-07-02 00:51:13', '2020-07-02 00:51:13'),
       (2, 'PREFECTA/O', 'ENCARGADA/O  DE LA DISCIPLINA Y EL ORDEN', '2020-07-02 00:51:13', '2020-08-01 08:36:44'),
       (3, 'Docente', 'Profesor de aula', '2020-07-02 00:51:13', '2020-07-02 00:51:13'),
       (4, 'Director Pedagogico Administrativo', '', '2020-07-02 00:51:14', '2020-07-02 00:51:14'),
       (6, 'Secretario/a', '', '2020-07-02 00:51:14', '2020-07-02 00:51:14'),
       (7, 'Intendente', '', '2020-07-02 00:51:14', '2020-07-02 00:51:14'),
       (9, 'VELADOR', NULL, '2020-08-01 08:33:40', '2020-08-08 23:46:36');
/*!40000 ALTER TABLE `puestos`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_alumno`
--

DROP TABLE IF EXISTS `status_alumno`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_alumno`
(
    `id`          bigint(20) unsigned                     NOT NULL AUTO_INCREMENT,
    `descripcion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at`  timestamp                               NULL DEFAULT NULL,
    `updated_at`  timestamp                               NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `status_alumno_descripcion_unique` (`descripcion`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 5
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_alumno`
--

LOCK TABLES `status_alumno` WRITE;
/*!40000 ALTER TABLE `status_alumno`
    DISABLE KEYS */;
INSERT INTO `status_alumno`
VALUES (1, 'Pre-inscrito', '2020-07-02 00:51:14', '2020-07-02 00:51:14'),
       (2, 'Inscrito', '2020-07-02 00:51:14', '2020-07-02 00:51:14'),
       (3, 'Baja', '2020-07-02 00:51:14', '2020-07-02 00:51:14'),
       (4, 'Graduado', '2020-07-21 22:16:14', '2020-07-21 22:16:14');
/*!40000 ALTER TABLE `status_alumno`
    ENABLE KEYS */;
UNLOCK TABLES;


INSERT INTO `users`
VALUES (1, 'admin', 'admin@admin.com', NULL, '$2y$10$XyCK6IARIgD8Cx3dI02hr.AL/hA5tqskO8zqc11krDivxPmFR2Mqy',
        '8T930OblnerJSfnTKSLroEgIxHQXshfdpEv94ihthsh1SN87dmzYZ6c2gtI0', '2020-07-01 19:51:13', '2020-07-01 19:51:13'),
       (2, 'JMARTINEZ1', 'juanjmarley@gmail.com', NULL, '$2y$10$wWTctNqI8nZ6YYuPIAG2q.8TkmRq0Qp72OuMrgro0.9XpGFrv0.aq',
        'kcjSBY3y1w7hwr04yCZS3veWXKrZMGqAotOQlmERrbJmsyNmmPVNJcX1fEkD', '2020-07-04 10:55:59', '2020-10-28 01:01:01'),
       (3, 'LMENDEZ2', 'loreney_15@autlook.es', NULL, '$2y$10$.qhw1eo0P4ioWQWTZPZOJuPm7NZdRxALbumncLrakyy/v93BaxIhW',
        'ufyXbewVETWvKTnMNSMvnC2d3F9revCFXQl3N8Qn0C1pQL0OuWRYEXyTOblV', '2020-07-04 21:23:41', '2020-10-29 13:39:58'),
       (4, 'MPERAZA3', 'mony081@hotmail.com', NULL, '$2y$10$6VPwkkw3mtAAEPikGkRAs.DnxZMbQTHfskWYBUPJQPeNuax/rOsOm',
        NULL, '2020-07-04 21:47:14', '2020-08-01 21:34:15'),
       (5, 'ABALAM4', 'angelito_nice93@hotmail.com', NULL,
        '$2y$10$DcwYBrZKpini9BLbT.T1lOkaubhojVi0Y36AWHvS5.NZC4X7.0KrS', NULL, '2020-07-23 19:50:08',
        '2020-10-27 17:31:06'),
       (6, 'DHUH5', 'dchh_189@hotmail.com', NULL, '$2y$10$SfK.qpWLWMFzY1tDp8irdeohVjLCasppNX.RDqgVJF7La/vt5zGWy', NULL,
        '2020-07-24 10:57:17', '2020-11-24 18:09:52'),
       (7, 'STZAB6', 'cob.alfonso@gmail.com', NULL, '$2y$10$nefFQcXe1g637oIg5AkK.u3/ku6pFdy.dMqqZgdg6lgKIE8GVU9Kq',
        'AjxBZfaCCM6NAPf7l4jCppOBv0iBZCwisSFoFcG8PbIPjtA28v1HeUyA4CZ9', '2020-08-01 05:28:01', '2020-10-27 23:04:14'),
       (8, 'CCHAN7', 'crchandiaz@gmail.com', NULL, '$2y$10$xN28J2fvaa8RtDzUixeZwuohY8wSHqRoMEUmnbotBWmTouTfNU7Xa', NULL,
        '2020-08-01 05:44:10', '2020-08-01 05:44:10'),
       (9, 'SPAT8', 'saletitamatematica@hotmail.com', NULL,
        '$2y$10$3/RkwiFU8M9sKYqzclrL1uhf8irKWwYVz9hZ9XugNnD49.CuE4.Qm',
        'jikH0E9MgmNzhSpPMjWAEmlaXbAMxWgpn9WPYMGCd5j42jziZ0H2C1OvDREM', '2020-08-01 11:02:00', '2020-08-01 11:02:00'),
       (10, 'MLEON9', 'leon_chan26@outlook-com', NULL, '$2y$10$TJoFnL.T.3bbYfNHY0ZPbe952Ltvd/YO0U0ob8sYKnxMa2XmGSdf6',
        '7TRthZ2vEeXPqLJP81DIBF8IXoeQHpjCrSCvwwFJzzwEEJFH9oT2alT0YRWV', '2020-08-01 06:51:46', '2020-10-28 20:30:26'),
       (11, 'JRODRIGUEZ10', 'antonio_hunucma@hotmail.com', NULL,
        '$2y$10$xUj6cLIBTnpr4nqXES6KDuo56DiG2AQgKr8mejiRlCunY.UMiW/UW',
        'HvSQef1CJyjCvDg1aX4mSHlVYTUMLp9bE5X3XLvumVQiIuKcxEgoUrtY7RYi', '2020-08-01 07:22:10', '2020-10-28 20:48:54'),
       (12, 'YPEÑA11', 'yoselinpenapuerto@gmail.com', NULL,
        '$2y$10$IaxuhBklWVeEN0kV2D7jweprMqXSjGZBISMvs4fiubtEPtJtoPewC', NULL, '2020-08-01 07:35:55',
        '2020-08-01 07:35:55'),
       (13, 'ANOH12', 'denc6907@gmail.com', NULL, '$2y$10$BUoyyoYMLGH145Y4hgGcfuLwo8h/oGn5a6d6ywome2E0NGr.w6bTm', NULL,
        '2020-08-01 07:57:06', '2020-10-30 00:03:53'),
       (14, 'GCHABLE13', 'nena.loria23@gmail.com', NULL, '$2y$10$BxKGBiozMmrgwNuM36KT3eeX6PhONvmEARX81O1BbIcrSTaJ1W8Mq',
        NULL, '2020-08-01 08:20:19', '2020-11-04 20:32:01'),
       (15, 'FLOPEZ14', 'abrahamsoberanis24@gmail.com', NULL,
        '$2y$10$ypZA01V13FcWvW/nIQpqReqwtcHFl9IjnM.7gxzQFKl8MOAlBzLzy',
        'RM103YBBo7jcBRSWdfDiaf9JrVErGYUzdYss6VLk2b6gRZr3tm6RM8nSVZ4L', '2020-08-04 05:23:10', '2020-08-04 05:23:10'),
       (16, 'GEK15', 'gildamarlene_ek@hotmail.com', NULL,
        '$2y$10$7oRM.VHPH.KOFoN8bVc3.uUO6UIFM/qQXAZmd5SbouqSOyqFwLLFq',
        'Nne9ztCyXmnb8ageazFlmVwgcD7aVUFMo7AfL4kC3GJPK3HDPM38PKQHeOHL', '2020-08-07 22:53:28', '2020-10-27 21:43:16'),
       (17, 'RPUERTO16', 'peque_18virgo@hotmail.com', NULL,
        '$2y$10$CHPi7hkuUH7V5795LTZTsudmzzL8mEg7vDb72YT8qS3Zvhw6SttJS', NULL, '2020-08-08 04:06:43',
        '2020-11-09 17:49:44'),
       (18, 'ACEBALLOS17', 'berty_ceballos@hotmail.com', NULL,
        '$2y$10$lJVtsYdS7CsnnYEXmJ9rKOFDzC1s/YP422EZGnTitIzPx0tZzra5C', NULL, '2020-08-07 23:40:27',
        '2020-08-07 23:40:27'),
       (19, 'LMENDEZ18', 'gabriela_20@hotmail.com', NULL,
        '$2y$10$JT2jkdKnmXyWkppGZm/5XO1MCgs4Eyugx36HGtv/eV6JrbntzSnoW', NULL, '2020-08-08 05:53:27',
        '2020-08-27 00:57:15'),
       (20, 'AMARTIN19', 'mariam_did@hotmail.com', NULL, '$2y$10$FTLlII.Yw4fREoyiXp0h2uZHechwZoe2y43KOanU/9ummnm5qGLX2',
        NULL, '2020-08-08 06:11:19', '2020-08-08 06:30:15'),
       (21, 'REK20', 'nena_san@outlook.com', NULL, '$2y$10$7uEWaNmFKlb1KsCJJ.NbyuPUJ/Z20usmSAwZe3qsguy53PPJ56RqC', NULL,
        '2020-08-08 06:26:28', '2020-08-08 06:26:28'),
       (24, 'PCHUC21', 'chucho_cm74@hotmail.com', NULL, '$2y$10$gocKAcokos/vMwlPXWo9ru8wKVKuWj1MOdX31t8nxejAwwUj0aUry',
        NULL, '2020-08-08 06:55:25', '2020-08-08 07:02:48'),
       (25, 'PCHUC22', 'pedro_66@hotmail.com', NULL, '$2y$10$wK9HEedZR/U6nhcMCT/RcOfx2FZaCWbQW6RdxsSBPX2aNuyEKttdG',
        NULL, '2020-08-08 07:09:26', '2020-08-08 07:09:26'),
       (26, 'HDZUL23', 'Humberto_Dzul_1603@hotmail.com', NULL,
        '$2y$10$MR2y7A8gBZ.HFjAsgt9SM.kESsH8Lkc4tX492.rD6LaY2FDCS2mze',
        '1wr8evtIhTmq5p39FaqGnHyM1303RbN1ixp7hKhmzHyV8TPU0rnw1I8IP2RY', '2020-09-24 06:06:46', '2020-10-28 07:01:27'),
       (27, 'MPEÑA24', 'angels_pg@hotmail.com', NULL, '$2y$10$nHMIc.dBk8we0CdPMjWTdO9okVH5TfTg3axAvRsUpqV02MIHC/Mp6',
        NULL, '2020-09-24 06:42:32', '2020-09-24 10:05:56');
/*!40000 ALTER TABLE `users`
    ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE = @OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE = @OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES = @OLD_SQL_NOTES */;

-- Dump completed on 2020-12-04 13:00:05

--
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumnos`
(
    `id`               bigint(20) unsigned                       NOT NULL AUTO_INCREMENT,
    `nombres`          varchar(191) COLLATE utf8mb4_unicode_ci   NOT NULL,
    `apellido_paterno` varchar(191) COLLATE utf8mb4_unicode_ci   NOT NULL,
    `apellido_materno` varchar(191) COLLATE utf8mb4_unicode_ci        DEFAULT NULL,
    `edad`             int(11)                                        DEFAULT NULL,
    `sexo`             enum ('H','M') COLLATE utf8mb4_unicode_ci NOT NULL,
    `status_id`        bigint(20) unsigned                       NOT NULL,
    `created_at`       timestamp                                 NULL DEFAULT NULL,
    `updated_at`       timestamp                                 NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `alumnos_status_id_foreign` (`status_id`),
    CONSTRAINT `alumnos_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `status_alumno` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 145
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos`
    DISABLE KEYS */;
INSERT INTO `alumnos` (`id`, `nombres`, `apellido_paterno`, `apellido_materno`, `edad`, `sexo`, `status_id`,
                       `created_at`, `updated_at`)
VALUES (5, 'JIMENA ARACELI', 'BOJORQUEZ', 'HERNANDEZ', 12, 'M', 2, '2020-08-09 18:37:28', '2020-09-10 03:17:45'),
       (6, 'SOFIA MARIBEL', 'BOJORQUEZ', 'NOVELO', 12, 'M', 2, '2020-08-19 14:30:21', '2020-09-11 04:51:17'),
       (7, 'DIEGO EMILIANO', 'BOJORQUEZ', 'TZAB', 11, 'H', 2, '2020-08-19 09:48:48', '2020-09-11 04:52:34'),
       (8, 'KAREN  CAMILA', 'CANUL', 'NOVELO', 11, 'M', 2, '2020-08-20 08:27:30', '2020-09-11 04:53:54'),
       (9, 'ZAZITH MONSERRAT', 'CATZIM', 'PECH', 12, 'M', 2, '2020-08-20 08:41:34', '2020-09-11 04:54:50'),
       (10, 'EMILIO EDUARDO', 'CHAVEZ', 'KU', 11, 'H', 2, '2020-08-20 09:04:28', '2020-09-11 04:56:16'),
       (11, 'PEDRO PAUL', 'CHAY', 'BOJORQUEZ', 12, 'H', 2, '2020-08-20 09:16:30', '2020-09-11 04:57:17'),
       (12, 'MARTHA SOFIA', 'CHAY', 'HERNANDEZ', 12, 'M', 2, '2020-08-23 11:28:58', '2020-09-11 04:58:25'),
       (13, 'SERGIO  JOSE', 'CHI', 'EK', 11, 'H', 2, '2020-08-23 12:02:29', '2020-09-11 04:59:29'),
       (14, 'JALIL ALFREDO', 'CHUC', 'ESQUIVEL', 12, 'H', 2, '2020-08-23 12:18:19', '2020-09-11 05:13:28'),
       (15, 'CLAUDED RENELY', 'COCOM', 'GIO', 11, 'M', 2, '2020-08-23 12:33:32', '2020-09-11 05:14:30'),
       (16, 'JESUS ELIAS', 'ESQUIVEL', 'HERRERA', 11, 'H', 2, '2020-08-23 12:50:04', '2020-09-11 05:15:33'),
       (17, 'SAULO EMILIO', 'EUAN', 'PEÑA', 12, 'H', 2, '2020-08-25 09:41:12', '2020-09-11 05:17:07'),
       (18, 'REGINA', 'FRANCO', 'GARCIA', 12, 'M', 2, '2020-08-25 10:09:36', '2020-09-11 05:18:27'),
       (19, 'BRADWIN AZAEL', 'MARTIN', 'POOT', 11, 'H', 2, '2020-08-25 10:24:46', '2020-09-11 05:19:32'),
       (20, 'ADAIR ENRIQUE', 'MEX', 'CHAN', 11, 'H', 2, '2020-08-25 10:47:50', '2020-09-11 05:20:37'),
       (21, 'GUELMY ANAYLI', 'MEX', 'CHUC', 12, 'M', 2, '2020-08-25 11:00:47', '2020-09-11 05:21:40'),
       (22, 'FERNANDA', 'NOVELO', 'EUAN', 11, 'M', 2, '2020-08-25 11:10:54', '2020-09-11 05:22:49'),
       (23, 'RUSSELL  EMANUEL', 'PECH', 'CARDEÑA', 12, 'H', 2, '2020-08-25 11:26:24', '2020-09-11 05:24:11'),
       (24, 'ANDREA DARIANA', 'QUINTAL', 'NOVELO', 11, 'M', 2, '2020-08-25 11:35:59', '2020-09-11 05:25:37'),
       (25, 'DANNA GERALDINE', 'ROMERO', 'EUAN', 11, 'M', 2, '2020-08-25 11:46:42', '2020-09-11 05:27:15'),
       (26, 'CAMILA DE JESUS', 'TZAB', 'CETINA', 11, 'M', 2, '2020-08-26 22:16:08', '2020-09-11 05:28:12'),
       (27, 'YAZMIN SIBEL', 'UC', 'MAY', 11, 'M', 2, '2020-08-26 12:37:58', '2020-09-11 05:29:41'),
       (28, 'YARED NEFTALY', 'UICAB', 'PUERTO', 12, 'M', 2, '2020-08-27 06:30:40', '2020-09-11 05:31:10'),
       (29, 'KEVIN SAUL', 'YAMA', 'PEÑA', 11, 'H', 2, '2020-08-27 06:38:47', '2020-09-11 05:32:12'),
       (30, 'SILVANA HELEU', 'ADRIAN', 'BOJORQUEZ', 12, 'M', 2, '2020-08-27 06:19:49', NULL),
       (31, 'ODETTE GERALDINE', 'BALAM', 'ESQUIVEL', 11, 'M', 2, '2020-08-27 06:35:41', NULL),
       (32, 'MIGUEL ALEXANDER', 'BARCENAS', 'CANUL', 12, 'H', 2, '2020-08-27 06:58:18', NULL),
       (33, 'JOHANN ESAU', 'BOJORQUEZ', 'KOYOC', 12, 'H', 2, '2020-08-28 22:48:17', NULL),
       (34, 'ROMINA ALESANDRA', 'CAN', 'BALAM', 12, 'M', 2, '2020-08-28 23:02:18', NULL),
       (35, 'CIELO IRAISS', 'CANUL', 'EK', 12, 'M', 2, '2020-08-28 23:13:07', NULL),
       (36, 'DAVID ALEXANDER', 'CAUICH', 'CHAVEZ', 11, 'H', 2, '2020-08-28 23:37:28', NULL),
       (37, 'EDDY ALEXANDER', 'CEBALLOS', 'CHUC', 12, 'H', 2, '2020-08-29 05:19:59', '2020-08-29 00:21:44'),
       (38, 'EMIR ABISAI', 'CHI', 'ARGAEZ', 11, 'H', 2, '2020-08-29 00:36:42', NULL),
       (41, 'MELANIE ALTAIR', 'CHI', 'EUAN', 12, 'M', 2, '2020-09-17 06:16:52', NULL),
       (42, 'KAMILA ALEJANDRA', 'COB', 'NOVELO', 12, 'M', 2, '2020-09-22 02:27:51', NULL),
       (43, 'ISABELLA', 'DZUL', 'MENDOZA', 12, 'M', 2, '2020-09-22 23:23:44', NULL),
       (44, 'BRISIAN YANET', 'EK', 'EK', 12, 'M', 2, '2020-09-23 00:07:10', NULL),
       (45, 'VALERIA GAIL', 'GARCIA', 'RODRIGUEZ', 12, 'M', 2, '2020-09-23 05:21:58', '2020-09-23 00:23:21'),
       (46, 'MAYLI SALET', 'MANZO', 'FRANCO', 12, 'M', 2, '2020-09-23 00:58:23', NULL),
       (47, 'HILLARY VALENTINA', 'MARTIN', 'GOMEZ', 12, 'M', 2, '2020-09-23 01:13:13', NULL),
       (48, 'AILYN SARAI', 'MAY', 'NOVELO', 12, 'M', 2, '2020-09-23 01:23:53', NULL),
       (49, 'NEMESIO RAFAEL', 'MENENDEZ', 'ESCALANTE', 11, 'H', 2, '2020-09-23 01:50:51', NULL),
       (50, 'XIMENA NAHARI', 'MEX', 'BOJORQUEZ', 12, 'M', 2, '2020-09-23 02:08:54', NULL),
       (51, 'JESUS CAMILO', 'NOVELO', 'CANUL', 11, 'H', 2, '2020-09-23 02:17:31', NULL),
       (52, 'GAEL ALEJANDRO', 'POOT', 'AVILA', 11, 'H', 2, '2020-09-23 02:26:07', NULL),
       (53, 'ABRAHAM ISAEL', 'SANDOVAL', 'CHAN', 12, 'H', 2, '2020-09-23 02:37:59', NULL),
       (54, 'VALENTINA DANELY', 'VARGUEZ', 'LARA', 13, 'M', 2, '2020-09-23 02:47:05', NULL),
       (55, 'DANIEL ADRIAN', 'ALEJANDRO', 'ROMERO', 13, 'H', 2, '2020-09-24 08:22:55', '2020-09-24 22:01:07'),
       (56, 'SANTIAGO SAEL', 'BALAM', 'NOVELO', 13, 'H', 2, '2020-09-25 02:24:58', NULL),
       (57, 'JOSUE RUBEN', 'CAAMAL', 'CAUICH', 13, 'H', 2, '2020-09-25 02:35:53', NULL),
       (58, 'VICTOR ALEXANDER', 'CEBALLOS', 'CANUL', 12, 'H', 2, '2020-09-25 02:46:15', NULL),
       (59, 'LUIS EDWUARD', 'CHAY', 'ASCORRA', 13, 'H', 2, '2020-09-25 02:54:51', NULL),
       (60, 'MARIA FERNANDA', 'CHUC', 'HERNANDEZ', 12, 'M', 2, '2020-09-26 23:35:57', '2020-09-26 20:04:05'),
       (61, 'RUSSEL DANIEL', 'DIAZ', 'CETINA', 13, 'H', 2, '2020-09-26 23:55:16', '2020-09-26 20:05:36'),
       (62, 'MARIRENE ELIZABETH', 'FLORES', 'GALAZ', 13, 'M', 2, '2020-09-27 00:21:53', '2020-09-26 20:06:40'),
       (63, 'EDUARDO JESUS', 'GIO', 'PEÑA', 12, 'H', 2, '2020-09-27 00:37:17', '2020-09-26 20:07:35'),
       (64, 'MONTSERRAT ARACELLY', 'GOMEZ', 'PERAZA', 12, 'M', 2, '2020-09-27 00:47:59', '2020-09-26 20:08:34'),
       (65, 'MARIA ESPERANZA', 'HEREDIA', 'COB', 13, 'M', 2, '2020-09-26 20:01:20', NULL),
       (66, 'REGINA VIANEY', 'COL', 'CAUICH', 13, 'M', 2, '2020-09-26 20:20:32', NULL),
       (67, 'YAIR EMMANUEL', 'KOH', 'BOJORQUEZ', 13, 'H', 2, '2020-09-27 15:07:27', NULL),
       (68, 'FANNY BELEM', 'KU', 'NOVELO', 13, 'M', 2, '2020-09-27 15:46:16', NULL),
       (69, 'AMERICA NEFTALY', 'LEON', 'CHUC', 13, 'M', 2, '2020-09-27 16:06:47', NULL),
       (70, 'SUEMY EUNICE', 'LEON', 'ROMERO', 13, 'M', 2, '2020-09-27 16:21:45', NULL),
       (71, 'DOMINIC EMMANUEL', 'NOH', 'CANUL', 13, 'H', 2, '2020-09-27 16:56:21', NULL),
       (72, 'ZAZIL-HA  DE LOS ANGELES', 'PANTOJA', 'TRUJEQUE', 13, 'M', 2, '2020-09-27 17:05:51', NULL),
       (73, 'ANADALY DE LOS ANGELES', 'PECH', 'CANUL', 12, 'M', 2, '2020-09-27 19:40:05', NULL),
       (74, 'MARELY GIOMARY', 'PECH', 'NOVELO', 13, 'M', 2, '2020-09-27 19:51:39', NULL),
       (75, 'VALERI NICOLE', 'PEREZ', 'CHUC', 13, 'M', 2, '2020-09-27 20:05:52', NULL),
       (76, 'DIANA SOFIA', 'PEÑA', 'CHUC', 12, 'M', 2, '2020-09-27 20:15:41', NULL),
       (77, 'HASSAN EMANUEL', 'QUIJANO', 'GONZALEZ', 13, 'H', 1, '2020-09-27 20:24:55', NULL),
       (78, 'ANTUAN EMMANUEL', 'SILVEIRA', 'FRANCO', 12, 'H', 2, '2020-09-27 20:44:53', NULL),
       (79, 'MANUEL EDUARDO', 'SOLIS', 'QUINTAL', 13, 'H', 2, '2020-09-28 06:54:13', '2020-09-27 21:46:39'),
       (80, 'JOAQUIN ISMAEL', 'TZAB', 'POOT', 13, 'H', 2, '2020-09-27 21:21:57', NULL),
       (81, 'YOSMAR MANUEL', 'UICAB', 'CHAN', 12, 'H', 2, '2020-09-27 21:34:35', NULL),
       (82, 'MATEO', 'VARGUEZ', 'CHI', 13, 'H', 2, '2020-09-27 21:45:33', NULL),
       (83, 'PEDRO EMMANUEL', 'ALCOCER', 'GOMEZ', 13, 'H', 2, '2020-09-27 22:06:34', NULL),
       (84, 'IRVIN JAVIER', 'CANUL', 'CANUL', 12, 'H', 2, '2020-09-27 22:15:52', NULL),
       (85, 'JOEL DE JESUS', 'CANUL', 'KOYOK', 13, 'H', 2, '2020-09-27 22:28:15', NULL),
       (86, 'MONSERRAT AMAYRANI', 'CANUL', 'NOVELO', 13, 'M', 2, '2020-09-27 22:39:09', NULL),
       (87, 'URIEL ARCANGEL', 'CASTRO', 'UC', 14, 'H', 2, '2020-09-27 22:53:57', NULL),
       (88, 'ANGEL GABRIEL', 'CEBALLOS', 'VENTURA', 12, 'H', 2, '2020-09-27 23:16:01', NULL),
       (89, 'GUILLERMO  ENRIQUE', 'CEBALLOS', 'VENTURA', 13, 'H', 2, '2020-09-27 23:27:58', NULL),
       (90, 'DARIANA BEATRIZ', 'CHAN', 'CETINA', 13, 'M', 2, '2020-09-28 00:18:36', NULL),
       (91, 'YASURI BEATRIZ', 'CHI', 'UICAB', 12, 'M', 2, '2020-09-28 00:29:20', NULL),
       (92, 'EDGARDO DE JESUS', 'CHUC', 'EK', 13, 'H', 2, '2020-09-28 00:41:13', NULL),
       (93, 'ASAEL FRANCISCO', 'CHUC', 'MENDEZ', 13, 'H', 2, '2020-09-28 16:40:14', NULL),
       (94, 'BARBARA NAYBILI', 'EK', 'KU', 12, 'M', 2, '2020-09-28 16:56:04', NULL),
       (95, 'MARIO YUMILAIM', 'GIO', 'KOYOC', 13, 'H', 2, '2020-09-28 17:17:05', NULL),
       (96, 'DANIELA AMAYRANI', 'HERRERA', 'TORRES', 12, 'M', 2, '2020-09-28 17:30:53', NULL),
       (97, 'MARIA FERNANDA', 'HU', 'PUC', 13, 'M', 2, '2020-09-28 17:43:18', NULL),
       (98, 'LAURA MARITERE', 'MALDONADO', 'TZAB', 12, 'M', 2, '2020-09-28 17:55:09', NULL),
       (99, 'ELEAZAR ESAU', 'MEX', 'CHUC', 13, 'H', 2, '2020-09-28 18:03:52', NULL),
       (100, 'BRAULIO JAVIER', 'PAT', 'COOL', 13, 'H', 2, '2020-09-28 18:19:20', NULL),
       (101, 'BERTY GUADALUPE', 'PECH', 'CHUC', 12, 'M', 2, '2020-09-28 23:29:09', '2020-09-28 18:32:37'),
       (102, 'JOSE DE JESUS', 'PEREZ', 'CANUL', 12, 'H', 2, '2020-09-28 18:47:05', NULL),
       (103, 'NATALY GUADALUPE', 'PEÑA', 'EK', 13, 'M', 2, '2020-09-28 23:57:52', '2020-09-28 19:01:39'),
       (104, 'BETSABE', 'PEÑA', 'KOYOC', 12, 'M', 2, '2020-09-28 19:13:46', NULL),
       (105, 'ALEX ESAU', 'POOT', 'ACEVEDO', 13, 'H', 2, '2020-09-28 19:22:30', NULL),
       (106, 'SANTIAGO DANIEL', 'QUINTAL', 'EUAN', 13, 'H', 2, '2020-09-28 21:36:58', NULL),
       (107, 'ANGELA NOEMI', 'VAZQUEZ', 'YAM', 13, 'M', 2, '2020-09-28 21:50:41', NULL),
       (108, 'ANELY ASUNCION', 'BOJORQUEZ', 'PERAZA', 13, 'M', 2, '2020-09-29 01:44:49', NULL),
       (109, 'JOSE  ELIAS', 'CAAMAL', 'COB', 14, 'H', 2, '2020-09-29 01:53:24', NULL),
       (110, 'DIEGO MAXIMILIANO', 'CASTILLA', 'DURAN', 13, 'H', 2, '2020-09-29 02:02:04', NULL),
       (111, 'DAFNE GUADALUPE', 'CAUICH', 'CHAVEZ', 14, 'M', 2, '2020-09-29 02:12:47', NULL),
       (112, 'LEONEL DE JESUS', 'CORDOVA', 'CANUL', 14, 'H', 2, '2020-09-29 02:22:26', NULL),
       (113, 'ALBERTH ISUAEL', 'DZUL', 'DZIB', 14, 'H', 2, '2020-09-29 20:30:13', NULL),
       (114, 'ANGEL JESUS', 'GALAZ', 'CANUL', 14, 'H', 2, '2020-09-30 00:43:21', NULL),
       (115, 'RAFAEL ALBERTO', 'KOYOC', 'POOT', 13, 'H', 2, '2020-09-30 00:56:14', NULL),
       (116, 'KARLA NEFTHALY', 'MENDEZ', 'AVILA', 14, 'M', 2, '2020-09-30 01:05:30', NULL),
       (117, 'EMMANUEL ENRIQUE', 'MENDEZ', 'PEÑA', 13, 'H', 2, '2020-09-30 01:15:39', NULL),
       (118, 'DANIELA ALEJANDRA', 'MONSREAL', 'CHAC', 14, 'M', 2, '2020-09-30 01:42:22', NULL),
       (119, 'WILBERTH DE JESUS', 'PACHECO', 'POOT', 14, 'H', 2, '2020-09-30 01:50:04', NULL),
       (120, 'AMAIRANI ASUNCION', 'PERAZA', 'CANUL', 14, 'M', 2, '2020-09-30 02:01:27', NULL),
       (121, 'JOEL ALEXANDER', 'ROMERO', 'PUERTO', 14, 'H', 2, '2020-09-30 03:19:05', NULL),
       (122, 'WILMER FERNANDO', 'ROMERO', 'SOLIS', 15, 'H', 2, '2020-09-30 03:38:52', NULL),
       (123, 'KRISTY JULIANY', 'SOLIS', 'MARTIN', 14, 'M', 2, '2020-09-30 03:49:10', NULL),
       (124, 'GIANCARLO  SERGEI', 'SOLIS', 'TUM', 14, 'H', 2, '2020-09-30 04:00:33', NULL),
       (125, 'CESAR MANUEL', 'UC', 'PEÑA', 14, 'H', 2, '2020-09-30 04:08:06', NULL),
       (126, 'VALERIA GUADALUPE', 'BOJORQUEZ', 'NOVELO', 14, 'M', 2, '2020-09-30 04:46:38', NULL),
       (127, 'PAOLA GUADALUPE', 'BOJORQUEZ', 'TZAB', 14, 'M', 2, '2020-09-30 04:55:28', NULL),
       (128, 'PABLO DAVID', 'CAAMAL', 'CANUL', 14, 'H', 2, '2020-09-30 05:03:37', NULL),
       (129, 'JUAN PABLO', 'CEN', 'KOYOC', 14, 'H', 2, '2020-09-30 05:19:07', NULL),
       (130, 'JOSHUA AZAEL', 'CHACON', 'CHOCH', 13, 'H', 2, '2020-09-30 05:28:07', NULL),
       (131, 'VIVIAN DEL CARMEN', 'CHIN', 'CHACON', 13, 'M', 2, '2020-09-30 05:36:46', NULL),
       (132, 'MOISES ESAU', 'CHUC', 'MOLINA', 14, 'H', 2, '2020-09-30 05:43:14', NULL),
       (133, 'ALFONSO JAVIER', 'EK', 'TOME', 15, 'H', 2, '2020-09-30 05:49:51', NULL),
       (134, 'NATALIA GUADALUPE', 'EUAN', 'BALAM', 13, 'M', 2, '2020-09-30 05:57:36', NULL),
       (135, 'ADAMARI SARAI', 'FRANCO', 'LOPEZ', 13, 'M', 2, '2020-09-30 06:07:00', NULL),
       (136, 'IKER GUILLERMO', 'MOO', 'MEX', 14, 'H', 2, '2020-09-30 06:14:24', NULL),
       (137, 'MONSERRAT ALEJANDRA', 'NOH', 'BALAM', 14, 'M', 2, '2020-09-30 06:23:14', NULL),
       (138, 'MARIA ALEJANDRA', 'NOVELO', 'HERNANDEZ', 15, 'M', 2, '2020-09-30 06:37:21', NULL),
       (139, 'JARED ALEJANDRO', 'NOVELO', 'PACHECO', 16, 'H', 2, '2020-09-30 06:45:50', NULL),
       (140, 'JOSE ALBERTO', 'PECH', 'CHIN', 14, 'H', 2, '2020-09-30 06:53:25', NULL),
       (141, 'LIZARDO DANAEL', 'QUINTAL', 'PUC', 16, 'H', 2, '2020-09-30 07:01:40', NULL),
       (142, 'JOSAEL MODESTO', 'UICAB', 'CASANOVA', 14, 'H', 2, '2020-09-30 07:21:08', NULL),
       (143, 'ESAU  YOEL', 'VENTURA', 'NOVELO', 15, 'H', 2, '2020-09-30 07:48:35', NULL);

DROP TABLE IF EXISTS `asignaturas`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asignaturas`
(
    `id`         bigint(20) unsigned                     NOT NULL AUTO_INCREMENT,
    `nombre`     varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `creditos`   int(11)                                 NOT NULL,
    `created_at` timestamp                               NULL DEFAULT NULL,
    `updated_at` timestamp                               NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `asignaturas_nombre_unique` (`nombre`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 14
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignaturas`
--

LOCK TABLES `asignaturas` WRITE;
/*!40000 ALTER TABLE `asignaturas`
    DISABLE KEYS */;
INSERT INTO `asignaturas`
VALUES (1, 'ESPAÑOL', 100, '2020-07-04 06:49:51', NULL),
       (2, 'MATEMATICAS', 100, '2020-08-03 23:41:59', NULL),
       (3, 'INGLES', 100, '2020-08-03 23:42:39', NULL),
       (4, 'CIENCIAS', 100, '2020-08-03 23:43:16', NULL),
       (5, 'GEOGRAFIA', 100, '2020-08-03 23:44:07', NULL),
       (6, 'HISTORIA', 100, '2020-08-03 23:44:51', NULL),
       (7, 'FORM.CIV.ÉTI.', 100, '2020-08-03 23:45:48', NULL),
       (8, 'TECNOLOGIA', 100, '2020-08-03 23:46:29', NULL),
       (9, 'EDUC.FISICA', 100, '2020-08-03 23:46:51', NULL),
       (10, 'ARTISTICA', 100, '2020-08-03 23:47:45', '2020-10-30 15:43:50'),
       (11, 'TUTORIA', 100, '2020-08-03 23:48:01', NULL),
       (12, 'VALORES', 100, '2020-08-03 23:50:54', NULL),
       (13, 'VIDA SALUDABLE', 100, '2020-09-23 04:37:15', '2020-09-23 04:48:20');
/*!40000 ALTER TABLE `asignaturas`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciclo_escolar`
--

DROP TABLE IF EXISTS `ciclo_escolar`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciclo_escolar`
(
    `id`           bigint(20) unsigned                     NOT NULL AUTO_INCREMENT,
    `nombre`       varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `fecha_inicio` date                                    NOT NULL,
    `fecha_fin`    date                                    NOT NULL,
    `estado_id`    bigint(20) unsigned                     NOT NULL,
    `created_at`   timestamp                               NULL DEFAULT NULL,
    `updated_at`   timestamp                               NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `ciclo_escolar_estado_id_foreign` (`estado_id`),
    CONSTRAINT `ciclo_escolar_estado_id_foreign` FOREIGN KEY (`estado_id`) REFERENCES `estado_ciclo_escolar` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 2
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciclo_escolar`
--

LOCK TABLES `ciclo_escolar` WRITE;
/*!40000 ALTER TABLE `ciclo_escolar`
    DISABLE KEYS */;
INSERT INTO `ciclo_escolar`
VALUES (1, 'Curso escolar 2020-2021', '2020-08-24', '2021-07-06', 1, '2020-06-28 00:09:49', '2020-08-08 07:21:07');
/*!40000 ALTER TABLE `ciclo_escolar`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clases`
--

DROP TABLE IF EXISTS `clases`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clases`
(
    `id`               bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `maestro_id`       bigint(20) unsigned NOT NULL,
    `grado_id`         bigint(20) unsigned NOT NULL,
    `grupo_id`         bigint(20) unsigned NOT NULL,
    `asignatura_id`    bigint(20) unsigned NOT NULL,
    `ciclo_escolar_id` bigint(20) unsigned NOT NULL,
    `created_at`       timestamp           NULL DEFAULT NULL,
    `updated_at`       timestamp           NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `clases_maestro_id_foreign` (`maestro_id`),
    KEY `clases_grado_id_foreign` (`grado_id`),
    KEY `clases_grupo_id_foreign` (`grupo_id`),
    KEY `clases_asignatura_id_foreign` (`asignatura_id`),
    KEY `clases_ciclo_escolar_id_foreign` (`ciclo_escolar_id`),
    CONSTRAINT `clases_asignatura_id_foreign` FOREIGN KEY (`asignatura_id`) REFERENCES `asignaturas` (`id`),
    CONSTRAINT `clases_ciclo_escolar_id_foreign` FOREIGN KEY (`ciclo_escolar_id`) REFERENCES `ciclo_escolar` (`id`),
    CONSTRAINT `clases_grado_id_foreign` FOREIGN KEY (`grado_id`) REFERENCES `grados` (`id`),
    CONSTRAINT `clases_grupo_id_foreign` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`id`),
    CONSTRAINT `clases_maestro_id_foreign` FOREIGN KEY (`maestro_id`) REFERENCES `personal` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 84
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clases`
--

LOCK TABLES `clases` WRITE;
/*!40000 ALTER TABLE `clases`
    DISABLE KEYS */;
INSERT INTO `clases`
VALUES (2, 2, 1, 3, 1, 1, '2020-09-23 08:12:07', '2020-09-23 08:12:07'),
       (4, 1, 1, 3, 12, 1, '2020-09-23 03:26:47', '2020-09-23 03:26:47'),
       (8, 1, 1, 5, 12, 1, '2020-09-23 03:52:04', '2020-09-23 03:52:04'),
       (9, 1, 2, 3, 12, 1, '2020-09-23 03:53:03', '2020-09-23 03:53:03'),
       (11, 1, 2, 5, 12, 1, '2020-09-23 03:54:27', '2020-09-23 03:54:27'),
       (12, 1, 3, 3, 12, 1, '2020-09-23 03:54:55', '2020-09-23 03:54:55'),
       (13, 1, 3, 5, 12, 1, '2020-09-23 03:55:28', '2020-09-23 03:55:28'),
       (14, 2, 1, 5, 1, 1, '2020-09-23 04:18:47', '2020-09-23 04:18:47'),
       (15, 2, 2, 3, 1, 1, '2020-09-23 04:19:10', '2020-09-23 04:19:10'),
       (16, 2, 2, 5, 1, 1, '2020-09-23 04:21:16', '2020-09-23 04:21:16'),
       (17, 2, 3, 3, 1, 1, '2020-09-23 04:21:56', '2020-09-23 04:21:56'),
       (18, 2, 3, 5, 1, 1, '2020-09-23 04:22:18', '2020-09-23 04:22:18'),
       (19, 3, 1, 5, 2, 1, '2020-09-23 04:23:59', '2020-09-23 04:23:59'),
       (20, 3, 3, 3, 2, 1, '2020-09-23 04:24:33', '2020-09-23 04:24:33'),
       (21, 3, 3, 5, 2, 1, '2020-09-23 04:25:03', '2020-09-23 04:25:03'),
       (22, 4, 1, 3, 2, 1, '2020-09-23 04:25:53', '2020-09-23 04:25:53'),
       (23, 4, 2, 3, 2, 1, '2020-09-23 04:26:28', '2020-09-23 04:26:28'),
       (24, 4, 2, 5, 2, 1, '2020-09-23 04:26:54', '2020-09-23 04:26:54'),
       (25, 5, 1, 3, 3, 1, '2020-09-23 04:28:13', '2020-09-23 04:28:13'),
       (26, 5, 1, 5, 3, 1, '2020-09-23 04:28:37', '2020-09-23 04:28:37'),
       (27, 5, 2, 3, 3, 1, '2020-09-23 04:29:37', '2020-09-23 04:29:37'),
       (28, 5, 2, 5, 3, 1, '2020-09-23 04:30:15', '2020-09-23 04:30:15'),
       (29, 6, 3, 3, 3, 1, '2020-09-23 04:31:10', '2020-09-23 04:31:10'),
       (30, 6, 3, 5, 3, 1, '2020-09-23 04:31:36', '2020-09-23 04:31:36'),
       (31, 7, 1, 3, 4, 1, '2020-09-23 04:32:57', '2020-09-23 04:32:57'),
       (32, 7, 1, 5, 4, 1, '2020-09-23 04:33:23', '2020-09-23 04:33:23'),
       (33, 7, 3, 3, 4, 1, '2020-09-23 04:33:51', '2020-09-23 04:33:51'),
       (34, 7, 3, 5, 4, 1, '2020-09-23 04:34:18', '2020-09-23 04:34:18'),
       (35, 8, 2, 3, 4, 1, '2020-09-23 04:35:36', '2020-09-23 04:35:36'),
       (36, 8, 2, 5, 4, 1, '2020-09-23 04:36:07', '2020-09-23 04:36:07'),
       (37, 9, 1, 3, 5, 1, '2020-09-23 04:39:25', '2020-09-23 04:39:25'),
       (38, 9, 1, 5, 5, 1, '2020-09-23 04:39:49', '2020-09-23 04:39:49'),
       (39, 9, 1, 3, 6, 1, '2020-09-23 04:43:04', '2020-09-23 04:43:04'),
       (40, 9, 1, 5, 6, 1, '2020-09-23 04:43:29', '2020-09-23 04:43:29'),
       (41, 9, 2, 3, 6, 1, '2020-09-23 04:44:20', '2020-09-23 04:44:20'),
       (42, 9, 2, 5, 6, 1, '2020-09-23 04:44:54', '2020-09-23 04:44:54'),
       (43, 9, 3, 3, 7, 1, '2020-09-23 04:45:25', '2020-09-23 04:45:25'),
       (44, 9, 3, 5, 7, 1, '2020-09-23 04:46:16', '2020-09-23 04:46:16'),
       (45, 10, 3, 3, 6, 1, '2020-09-23 04:57:45', '2020-09-23 04:57:45'),
       (46, 10, 3, 5, 6, 1, '2020-09-23 04:58:17', '2020-09-23 04:58:17'),
       (47, 11, 1, 3, 7, 1, '2020-09-23 04:59:28', '2020-09-23 04:59:28'),
       (48, 11, 1, 5, 7, 1, '2020-09-23 04:59:56', '2020-09-23 04:59:56'),
       (49, 11, 2, 3, 7, 1, '2020-09-23 05:00:56', '2020-09-23 05:00:56'),
       (50, 11, 2, 5, 7, 1, '2020-09-23 05:01:27', '2020-09-23 05:01:27'),
       (51, 12, 1, 3, 8, 1, '2020-09-23 05:03:30', '2020-09-23 05:03:30'),
       (52, 12, 1, 5, 8, 1, '2020-09-23 05:03:53', '2020-09-23 05:03:53'),
       (53, 12, 2, 3, 8, 1, '2020-09-23 05:04:24', '2020-09-23 05:04:24'),
       (54, 12, 2, 5, 8, 1, '2020-09-23 05:04:54', '2020-09-23 05:04:54'),
       (55, 13, 3, 3, 8, 1, '2020-09-23 05:05:55', '2020-09-23 05:05:55'),
       (56, 13, 3, 5, 8, 1, '2020-09-23 05:06:25', '2020-09-23 05:06:25'),
       (57, 14, 1, 3, 9, 1, '2020-09-23 05:08:58', '2020-09-23 05:08:58'),
       (58, 14, 1, 5, 9, 1, '2020-09-23 05:09:23', '2020-09-23 05:09:23'),
       (59, 14, 2, 3, 9, 1, '2020-09-23 05:09:48', '2020-09-23 05:09:48'),
       (60, 14, 2, 5, 9, 1, '2020-09-23 05:10:20', '2020-09-23 05:10:20'),
       (61, 14, 3, 3, 9, 1, '2020-09-23 05:10:47', '2020-09-23 05:10:47'),
       (62, 14, 3, 5, 9, 1, '2020-09-23 05:11:14', '2020-09-23 05:11:14'),
       (63, 16, 1, 5, 11, 1, '2020-09-23 10:19:17', '2020-09-23 10:19:17'),
       (64, 16, 2, 3, 11, 1, '2020-09-23 10:19:56', '2020-09-23 10:19:56'),
       (65, 16, 3, 5, 11, 1, '2020-09-23 10:20:34', '2020-09-23 10:20:34'),
       (66, 15, 1, 3, 11, 1, '2020-09-23 20:21:28', '2020-09-23 20:21:28'),
       (67, 15, 2, 5, 11, 1, '2020-09-23 10:22:03', '2020-09-23 10:22:03'),
       (68, 15, 3, 3, 11, 1, '2020-09-23 10:22:41', '2020-09-23 10:22:41'),
       (69, 23, 1, 3, 10, 1, '2020-09-24 01:45:55', '2020-09-24 01:45:55'),
       (70, 23, 1, 5, 10, 1, '2020-09-24 01:47:48', '2020-09-24 01:47:48'),
       (71, 23, 2, 3, 10, 1, '2020-09-24 01:54:25', '2020-09-24 01:54:25'),
       (72, 23, 2, 5, 10, 1, '2020-09-24 01:55:05', '2020-09-24 01:55:05'),
       (73, 24, 3, 3, 10, 1, '2020-09-24 01:56:30', '2020-09-24 01:56:30'),
       (74, 24, 3, 5, 10, 1, '2020-09-24 01:57:40', '2020-09-24 01:57:40'),
       (75, 9, 3, 3, 13, 1, '2020-09-24 02:16:50', '2020-09-24 02:16:50'),
       (76, 9, 3, 5, 13, 1, '2020-09-24 02:17:17', '2020-09-24 02:17:17'),
       (77, 11, 1, 3, 13, 1, '2020-09-24 02:20:30', '2020-09-24 02:20:30'),
       (78, 11, 1, 5, 13, 1, '2020-09-24 02:21:01', '2020-09-24 02:21:01'),
       (79, 11, 2, 3, 13, 1, '2020-09-24 02:21:31', '2020-09-24 02:21:31'),
       (80, 11, 2, 5, 13, 1, '2020-09-24 02:22:11', '2020-09-24 02:22:11');
/*!40000 ALTER TABLE `clases`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_ciclo_escolar`
--

DROP TABLE IF EXISTS `estado_ciclo_escolar`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_ciclo_escolar`
(
    `id`         bigint(20) unsigned                     NOT NULL AUTO_INCREMENT,
    `estado`     varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` timestamp                               NULL DEFAULT NULL,
    `updated_at` timestamp                               NULL DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 3
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_ciclo_escolar`
--

LOCK TABLES `estado_ciclo_escolar` WRITE;
/*!40000 ALTER TABLE `estado_ciclo_escolar`
    DISABLE KEYS */;
INSERT INTO `estado_ciclo_escolar`
VALUES (1, 'En curso', '2020-07-01 19:51:14', '2020-07-01 19:51:14'),
       (2, 'Concluido', '2020-07-01 19:51:14', '2020-07-01 19:51:14');
/*!40000 ALTER TABLE `estado_ciclo_escolar`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_personal`
--

DROP TABLE IF EXISTS `estado_personal`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_personal`
(
    `id`         bigint(20) unsigned                     NOT NULL AUTO_INCREMENT,
    `status`     varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` timestamp                               NULL DEFAULT NULL,
    `updated_at` timestamp                               NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `estado_personal_status_unique` (`status`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 4
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_personal`
--

LOCK TABLES `estado_personal` WRITE;
/*!40000 ALTER TABLE `estado_personal`
    DISABLE KEYS */;
INSERT INTO `estado_personal`
VALUES (1, 'Activo', '2020-07-01 19:51:14', '2020-07-01 19:51:14'),
       (2, 'Inactivo', '2020-07-01 19:51:14', '2020-07-01 19:51:14'),
       (3, 'Suspendido', '2020-07-01 19:51:14', '2020-07-01 19:51:14');
/*!40000 ALTER TABLE `estado_personal`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs`
(
    `id`         bigint(20) unsigned                 NOT NULL AUTO_INCREMENT,
    `connection` text COLLATE utf8mb4_unicode_ci     NOT NULL,
    `queue`      text COLLATE utf8mb4_unicode_ci     NOT NULL,
    `payload`    longtext COLLATE utf8mb4_unicode_ci NOT NULL,
    `exception`  longtext COLLATE utf8mb4_unicode_ci NOT NULL,
    `failed_at`  timestamp                           NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs`
    ENABLE KEYS */;
UNLOCK TABLES;



--
-- Table structure for table `grados`
--

DROP TABLE IF EXISTS `grados`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grados`
(
    `id`           bigint(20) unsigned                     NOT NULL AUTO_INCREMENT,
    `nombre_corto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `nombre_largo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at`   timestamp                               NULL DEFAULT NULL,
    `updated_at`   timestamp                               NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `grados_nombre_corto_unique` (`nombre_corto`),
    UNIQUE KEY `grados_nombre_largo_unique` (`nombre_largo`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 4
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grados`
--

LOCK TABLES `grados` WRITE;
/*!40000 ALTER TABLE `grados`
    DISABLE KEYS */;
INSERT INTO `grados`
VALUES (1, '1°', 'PRIMER GRADO', '2020-07-04 05:10:21', NULL),
       (2, '2º', 'SEGUNDO GRADO', '2020-07-23 19:42:41', NULL),
       (3, '3º', 'TERCER GRADO', '2020-07-23 19:42:52', NULL);
/*!40000 ALTER TABLE `grados`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo_alumnos`
--

DROP TABLE IF EXISTS `grupo_alumnos`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupo_alumnos`
(
    `id`               bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `ciclo_escolar_id` bigint(20) unsigned NOT NULL,
    `alumno_id`        bigint(20) unsigned NOT NULL,
    `grupo_id`         bigint(20) unsigned NOT NULL,
    `grado_id`         bigint(20) unsigned NOT NULL,
    `created_at`       timestamp           NULL DEFAULT NULL,
    `updated_at`       timestamp           NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `grupo_alumnos_alumno_id_foreign` (`alumno_id`),
    KEY `grupo_alumnos_ciclo_escolar_id_foreign` (`ciclo_escolar_id`),
    KEY `grupo_alumnos_grupo_id_foreign` (`grupo_id`),
    KEY `grupo_alumnos_grado_id_foreign` (`grado_id`),
    CONSTRAINT `grupo_alumnos_alumno_id_foreign` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`id`),
    CONSTRAINT `grupo_alumnos_ciclo_escolar_id_foreign` FOREIGN KEY (`ciclo_escolar_id`) REFERENCES `ciclo_escolar` (`id`),
    CONSTRAINT `grupo_alumnos_grado_id_foreign` FOREIGN KEY (`grado_id`) REFERENCES `grados` (`id`),
    CONSTRAINT `grupo_alumnos_grupo_id_foreign` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 181
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo_alumnos`
--

LOCK TABLES `grupo_alumnos` WRITE;
/*!40000 ALTER TABLE `grupo_alumnos`
    DISABLE KEYS */;
INSERT INTO `grupo_alumnos`
VALUES (1, 1, 5, 3, 1, '2020-08-20 04:20:13', NULL),
       (2, 1, 6, 3, 1, '2020-08-20 04:20:19', NULL),
       (4, 1, 7, 3, 1, '2020-08-20 04:20:39', NULL),
       (8, 1, 8, 3, 1, '2020-08-20 04:22:45', NULL),
       (9, 1, 9, 3, 1, '2020-08-20 04:22:53', NULL),
       (10, 1, 10, 3, 1, '2020-08-20 04:23:24', NULL),
       (12, 1, 11, 3, 1, '2020-08-20 04:23:48', NULL),
       (13, 1, 15, 3, 1, '2020-08-27 06:42:18', NULL),
       (14, 1, 13, 3, 1, '2020-08-27 06:42:18', NULL),
       (15, 1, 14, 3, 1, '2020-08-27 06:42:18', NULL),
       (16, 1, 12, 3, 1, '2020-08-27 06:42:18', NULL),
       (17, 1, 17, 3, 1, '2020-08-27 06:42:18', NULL),
       (18, 1, 16, 3, 1, '2020-08-27 06:42:18', NULL),
       (19, 1, 21, 3, 1, '2020-08-27 06:42:18', NULL),
       (20, 1, 20, 3, 1, '2020-08-27 06:42:18', NULL),
       (21, 1, 18, 3, 1, '2020-08-27 06:42:19', NULL),
       (22, 1, 23, 3, 1, '2020-08-27 06:42:19', NULL),
       (23, 1, 22, 3, 1, '2020-08-27 06:42:19', NULL),
       (24, 1, 19, 3, 1, '2020-08-27 06:42:19', NULL),
       (25, 1, 24, 3, 1, '2020-08-27 06:42:19', NULL),
       (26, 1, 25, 3, 1, '2020-08-27 06:42:19', NULL),
       (27, 1, 26, 3, 1, '2020-08-27 06:42:19', NULL),
       (28, 1, 28, 3, 1, '2020-08-27 06:42:19', NULL),
       (29, 1, 29, 3, 1, '2020-08-27 06:42:19', NULL),
       (30, 1, 27, 3, 1, '2020-08-27 06:42:19', NULL),
       (31, 1, 31, 5, 1, '2020-09-23 02:56:35', NULL),
       (32, 1, 33, 5, 1, '2020-09-23 02:56:35', NULL),
       (33, 1, 32, 5, 1, '2020-09-23 02:56:35', NULL),
       (34, 1, 34, 5, 1, '2020-09-23 02:56:35', NULL),
       (35, 1, 35, 5, 1, '2020-09-23 02:56:35', NULL),
       (36, 1, 30, 5, 1, '2020-09-23 02:56:35', NULL),
       (37, 1, 36, 5, 1, '2020-09-23 02:56:36', NULL),
       (38, 1, 38, 5, 1, '2020-09-23 02:56:36', NULL),
       (39, 1, 37, 5, 1, '2020-09-23 02:56:36', NULL),
       (40, 1, 41, 5, 1, '2020-09-23 02:56:36', NULL),
       (41, 1, 42, 5, 1, '2020-09-23 02:56:36', NULL),
       (42, 1, 44, 5, 1, '2020-09-23 02:56:36', NULL),
       (43, 1, 43, 5, 1, '2020-09-23 02:56:36', NULL),
       (44, 1, 45, 5, 1, '2020-09-23 02:56:37', NULL),
       (45, 1, 46, 5, 1, '2020-09-23 02:56:37', NULL),
       (46, 1, 47, 5, 1, '2020-09-23 02:56:37', NULL),
       (47, 1, 48, 5, 1, '2020-09-23 02:56:37', NULL),
       (48, 1, 49, 5, 1, '2020-09-23 02:56:37', NULL),
       (49, 1, 52, 5, 1, '2020-09-23 02:56:37', NULL),
       (50, 1, 51, 5, 1, '2020-09-23 02:56:37', NULL),
       (51, 1, 50, 5, 1, '2020-09-23 02:56:37', NULL),
       (52, 1, 53, 5, 1, '2020-09-23 02:56:38', NULL),
       (53, 1, 54, 5, 1, '2020-09-23 02:56:38', NULL),
       (54, 1, 56, 3, 2, '2020-09-28 21:54:12', NULL),
       (55, 1, 55, 3, 2, '2020-09-28 21:54:12', NULL),
       (57, 1, 57, 3, 2, '2020-09-28 21:54:12', NULL),
       (58, 1, 58, 3, 2, '2020-09-28 21:56:20', NULL),
       (59, 1, 59, 3, 2, '2020-09-28 21:57:29', NULL),
       (60, 1, 60, 3, 2, '2020-09-28 21:57:29', NULL),
       (62, 1, 66, 3, 2, '2020-09-28 21:57:53', NULL),
       (63, 1, 63, 3, 2, '2020-09-28 21:59:24', NULL),
       (64, 1, 61, 3, 2, '2020-09-28 21:59:24', NULL),
       (65, 1, 64, 3, 2, '2020-09-28 21:59:24', NULL),
       (66, 1, 62, 3, 2, '2020-09-28 21:59:24', NULL),
       (67, 1, 67, 3, 2, '2020-09-28 22:01:41', NULL),
       (68, 1, 68, 3, 2, '2020-09-28 22:01:41', NULL),
       (70, 1, 65, 3, 2, '2020-09-28 22:03:29', NULL),
       (72, 1, 69, 3, 2, '2020-09-28 22:04:50', NULL),
       (76, 1, 70, 3, 2, '2020-09-28 22:13:36', NULL),
       (77, 1, 71, 3, 2, '2020-09-28 22:13:36', NULL),
       (78, 1, 72, 3, 2, '2020-09-28 22:13:36', NULL),
       (83, 1, 73, 3, 2, '2020-09-28 22:22:03', NULL),
       (84, 1, 74, 3, 2, '2020-09-28 22:22:03', NULL),
       (87, 1, 75, 3, 2, '2020-09-28 22:25:13', NULL),
       (90, 1, 76, 3, 2, '2020-09-28 22:29:36', NULL),
       (91, 1, 77, 3, 2, '2020-09-28 22:29:36', NULL),
       (92, 1, 78, 3, 2, '2020-09-28 22:29:36', NULL),
       (93, 1, 80, 3, 2, '2020-09-28 22:30:48', NULL),
       (94, 1, 79, 3, 2, '2020-09-28 22:30:49', NULL),
       (95, 1, 81, 3, 2, '2020-09-28 22:30:49', NULL),
       (96, 1, 82, 3, 2, '2020-09-28 22:32:10', NULL),
       (99, 1, 83, 5, 2, '2020-09-28 22:34:20', NULL),
       (100, 1, 84, 5, 2, '2020-09-28 22:34:20', NULL),
       (103, 1, 85, 5, 2, '2020-09-28 22:36:06', NULL),
       (105, 1, 86, 5, 2, '2020-09-28 22:36:46', NULL),
       (106, 1, 87, 5, 2, '2020-09-28 22:37:23', NULL),
       (107, 1, 88, 5, 2, '2020-09-28 22:37:59', NULL),
       (110, 1, 90, 5, 2, '2020-09-28 22:38:49', NULL),
       (111, 1, 92, 5, 2, '2020-09-28 22:38:49', NULL),
       (112, 1, 91, 5, 2, '2020-09-28 22:38:49', NULL),
       (113, 1, 94, 5, 2, '2020-09-28 22:40:45', NULL),
       (114, 1, 96, 5, 2, '2020-09-28 22:40:45', NULL),
       (116, 1, 95, 5, 2, '2020-09-28 22:40:45', NULL),
       (117, 1, 89, 5, 2, '2020-09-28 22:40:45', NULL),
       (118, 1, 93, 5, 2, '2020-09-28 22:51:11', NULL),
       (119, 1, 97, 5, 2, '2020-09-28 22:51:57', NULL),
       (121, 1, 98, 5, 2, '2020-09-28 22:52:59', NULL),
       (122, 1, 99, 5, 2, '2020-09-28 22:53:46', NULL),
       (123, 1, 100, 5, 2, '2020-09-28 22:55:06', NULL),
       (124, 1, 101, 5, 2, '2020-09-28 22:55:22', NULL),
       (125, 1, 102, 5, 2, '2020-09-28 22:56:16', NULL),
       (127, 1, 106, 5, 2, '2020-09-28 22:59:59', NULL),
       (128, 1, 104, 5, 2, '2020-09-28 22:59:59', NULL),
       (129, 1, 105, 5, 2, '2020-09-28 22:59:59', NULL),
       (130, 1, 103, 5, 2, '2020-09-28 22:59:59', NULL),
       (131, 1, 107, 5, 2, '2020-09-28 22:59:59', NULL),
       (132, 1, 109, 3, 3, '2020-09-30 04:16:13', NULL),
       (133, 1, 108, 3, 3, '2020-09-30 04:16:13', NULL),
       (134, 1, 110, 3, 3, '2020-09-30 04:16:44', NULL),
       (135, 1, 111, 3, 3, '2020-09-30 04:16:53', NULL),
       (136, 1, 114, 3, 3, '2020-09-30 04:17:48', NULL),
       (137, 1, 112, 3, 3, '2020-09-30 04:17:48', NULL),
       (138, 1, 113, 3, 3, '2020-09-30 04:17:48', NULL),
       (139, 1, 115, 3, 3, '2020-09-30 04:18:07', NULL),
       (140, 1, 116, 3, 3, '2020-09-30 04:18:07', NULL),
       (141, 1, 117, 3, 3, '2020-09-30 04:18:07', NULL),
       (142, 1, 118, 3, 3, '2020-09-30 04:19:21', NULL),
       (143, 1, 120, 3, 3, '2020-09-30 04:19:21', NULL),
       (144, 1, 119, 3, 3, '2020-09-30 04:19:21', NULL),
       (156, 1, 121, 3, 3, '2020-09-30 04:32:55', NULL),
       (157, 1, 122, 3, 3, '2020-09-30 04:34:45', NULL),
       (159, 1, 125, 3, 3, '2020-09-30 04:35:29', NULL),
       (160, 1, 124, 3, 3, '2020-09-30 04:36:02', NULL),
       (161, 1, 123, 3, 3, '2020-09-30 04:37:03', NULL),
       (162, 1, 126, 5, 3, '2020-09-30 07:32:39', NULL),
       (163, 1, 127, 5, 3, '2020-09-30 07:32:39', NULL),
       (164, 1, 128, 5, 3, '2020-09-30 07:33:17', NULL),
       (165, 1, 131, 5, 3, '2020-09-30 07:33:17', NULL),
       (166, 1, 132, 5, 3, '2020-09-30 07:33:17', NULL),
       (167, 1, 130, 5, 3, '2020-09-30 07:33:17', NULL),
       (168, 1, 133, 5, 3, '2020-09-30 07:33:17', NULL),
       (169, 1, 129, 5, 3, '2020-09-30 07:33:17', NULL),
       (170, 1, 135, 5, 3, '2020-09-30 07:34:21', NULL),
       (171, 1, 134, 5, 3, '2020-09-30 07:34:21', NULL),
       (172, 1, 137, 5, 3, '2020-09-30 07:34:21', NULL),
       (173, 1, 138, 5, 3, '2020-09-30 07:34:21', NULL),
       (174, 1, 136, 5, 3, '2020-09-30 07:34:21', NULL),
       (175, 1, 139, 5, 3, '2020-09-30 07:34:21', NULL),
       (176, 1, 140, 5, 3, '2020-09-30 07:35:03', NULL),
       (177, 1, 141, 5, 3, '2020-09-30 07:35:03', NULL),
       (178, 1, 143, 5, 3, '2020-09-30 07:35:03', NULL),
       (179, 1, 142, 5, 3, '2020-09-30 07:35:03', NULL),
       (180, 1, 144, 5, 3, '2020-09-30 07:49:16', NULL);
/*!40000 ALTER TABLE `grupo_alumnos`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupos`
--

DROP TABLE IF EXISTS `grupos`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupos`
(
    `id`         bigint(20) unsigned                     NOT NULL AUTO_INCREMENT,
    `nombre`     varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` timestamp                               NULL DEFAULT NULL,
    `updated_at` timestamp                               NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `grupos_nombre_unique` (`nombre`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 6
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupos`
--

LOCK TABLES `grupos` WRITE;
/*!40000 ALTER TABLE `grupos`
    DISABLE KEYS */;
INSERT INTO `grupos`
VALUES (3, 'A', '2020-08-08 07:25:02', '2020-08-08 19:35:00'),
       (5, 'B', '2020-08-08 07:26:24', '2020-08-08 19:35:07');
/*!40000 ALTER TABLE `grupos`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instituciones`
--

DROP TABLE IF EXISTS `instituciones`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instituciones`
(
    `id`         bigint(20) unsigned                     NOT NULL AUTO_INCREMENT,
    `nombre`     varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `direccion`  varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `clave`      varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `email`      varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` timestamp                               NULL DEFAULT NULL,
    `updated_at` timestamp                               NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `instituciones_clave_unique` (`clave`),
    UNIQUE KEY `instituciones_email_unique` (`email`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 2
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instituciones`
--

LOCK TABLES `instituciones` WRITE;
/*!40000 ALTER TABLE `instituciones`
    DISABLE KEYS */;
INSERT INTO `instituciones`
VALUES (1, 'FRAY DIEGO DE LANDA', 'C. 23 No. 206-D x 30 y 32 HUNUCMÁ, YUCATÁN', '31PES0079A',
        'fray_diego64@hotmail.com', '2020-07-01 19:51:13', '2020-07-01 19:51:13');
/*!40000 ALTER TABLE `instituciones`
    ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `periodos`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `periodos`
(
    `id`               bigint(20) unsigned                     NOT NULL AUTO_INCREMENT,
    `nombre`           varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `fecha_inicio`     date                                    NOT NULL,
    `fecha_fin`        date                                    NOT NULL,
    `ciclo_escolar_id` bigint(20) unsigned                     NOT NULL,
    `created_at`       timestamp                               NULL DEFAULT NULL,
    `updated_at`       timestamp                               NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `periodos_ciclo_escolar_id_foreign` (`ciclo_escolar_id`),
    CONSTRAINT `periodos_ciclo_escolar_id_foreign` FOREIGN KEY (`ciclo_escolar_id`) REFERENCES `ciclo_escolar` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 5
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periodos`
--

LOCK TABLES `periodos` WRITE;
/*!40000 ALTER TABLE `periodos`
    DISABLE KEYS */;
INSERT INTO `periodos`
VALUES (2, 'MOMENTO 1. 1er. TRIMESTRE', '2020-10-05', '2020-10-13', 1, '2020-09-30 22:57:57', NULL),
       (3, '2do. TRIMESTRE', '2021-02-02', '2021-02-09', 1, '2020-10-29 00:14:27', NULL),
       (4, '3er. TRIMESTRE', '2021-04-13', '2021-06-24', 1, '2020-10-29 00:22:32', NULL);
/*!40000 ALTER TABLE `periodos`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions`
(
    `id`         bigint(20) unsigned                     NOT NULL AUTO_INCREMENT,
    `name`       varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` timestamp                               NULL DEFAULT NULL,
    `updated_at` timestamp                               NULL DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 21
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


CREATE TABLE `personal`
(
    `id`             bigint(20) unsigned                     NOT NULL AUTO_INCREMENT,
    `nombres`        varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `apellidos`      varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `telefono`       varchar(191) COLLATE utf8mb4_unicode_ci      DEFAULT NULL,
    `foto`           varchar(191) COLLATE utf8mb4_unicode_ci      DEFAULT NULL,
    `puesto_id`      bigint(20) unsigned                     NOT NULL,
    `usuario_id`     bigint(20) unsigned                     NOT NULL,
    `institucion_id` bigint(20) unsigned                     NOT NULL,
    `status_id`      bigint(20) unsigned                     NOT NULL,
    `created_at`     timestamp                               NULL DEFAULT NULL,
    `updated_at`     timestamp                               NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `personal_puesto_id_foreign` (`puesto_id`),
    KEY `personal_usuario_id_foreign` (`usuario_id`),
    KEY `personal_institucion_id_foreign` (`institucion_id`),
    KEY `personal_status_id_foreign` (`status_id`),
    CONSTRAINT `personal_institucion_id_foreign` FOREIGN KEY (`institucion_id`) REFERENCES `instituciones` (`id`),
    CONSTRAINT `personal_puesto_id_foreign` FOREIGN KEY (`puesto_id`) REFERENCES `puestos` (`id`),
    CONSTRAINT `personal_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `estado_personal` (`id`),
    CONSTRAINT `personal_usuario_id_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 26
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101

INSERT
INTO `personal`
VALUES (1, 'JUAN JOSE', 'MARTINEZ LEYVA', '9995539099', NULL, 1, 2, 1, 1, '2020-07-04 10:55:59', '2020-10-28 01:01:01'),
       (2, 'LOREMI BEATRIZ', 'MENDEZ EK', '9994952729', NULL, 3, 3, 1, 1, '2020-07-04 11:23:41', '2020-10-29 01:39:58'),
       (3, 'MONICA ARACELLY', 'PERAZA CANUL', '9889678444', NULL, 3, 4, 1, 1, '2020-07-04 11:47:14',
        '2020-08-01 06:34:15'),
       (4, 'ANGELES MARGARITA', 'BALAM KOYOC', '9991592453', NULL, 3, 5, 1, 1, '2020-07-23 19:50:08',
        '2020-10-27 17:31:06'),
       (5, 'DIANEY CONCEPCION', 'HUH HUH', '9994188986', NULL, 3, 6, 1, 1, '2020-07-24 05:57:17',
        '2020-11-24 18:09:52'),
       (6, 'SERGIO ALFONSO', 'TZAB COB', '9994966743', NULL, 3, 7, 1, 1, '2020-08-01 05:28:01', '2020-10-27 23:04:14'),
       (7, 'CANDELARIA DEL ROSARIO', 'CHAN DIAZ', '9999920629', NULL, 3, 8, 1, 1, '2020-08-01 05:44:10',
        '2020-08-01 05:44:10'),
       (8, 'SALETT ARACELY', 'PAT MARTIN', '9992451000', NULL, 3, 9, 1, 1, '2020-08-01 06:02:00',
        '2020-08-01 06:02:00'),
       (9, 'MANUEL JESUS', 'LEON CHAN', '9992095132', NULL, 3, 10, 1, 1, '2020-08-01 06:51:46', '2020-10-28 20:30:26'),
       (10, 'JUAN ANTONIO', 'RODRIGUEZ MENDEZ', '9889664577', NULL, 3, 11, 1, 1, '2020-08-01 07:22:10',
        '2020-10-28 20:48:54'),
       (11, 'YANISLE YOSELIN', 'PE�A PUERTO', '9996461016', NULL, 3, 12, 1, 1, '2020-08-01 07:35:55',
        '2020-08-01 07:35:55'),
       (12, 'AMADO EUTIQUIO', 'NOH UC', '9991942356', NULL, 3, 13, 1, 1, '2020-08-01 07:57:06', '2020-10-30 00:03:53'),
       (13, 'GLORIA MAGDALENA', 'CHABLE VENTURA', '9994642036', NULL, 3, 14, 1, 1, '2020-08-01 08:20:18',
        '2020-11-04 20:32:01'),
       (14, 'FELIPE ABRAHAM', 'LOPEZ SOBERANIS', '9991483383', NULL, 3, 15, 1, 1, '2020-08-04 00:23:10',
        '2020-08-04 00:23:10'),
       (15, 'GILDA MARLENE', 'EK HERNANDEZ', '9994483601', NULL, 3, 16, 1, 1, '2020-08-07 22:53:28',
        '2020-10-27 21:43:16'),
       (16, 'REINA IVETH', 'PUERTO CHUC', '9992564576', NULL, 3, 17, 1, 1, '2020-08-07 23:06:43',
        '2020-11-09 17:49:44'),
       (17, 'ANA GILBERTA', 'CEBALLOS MENDEZ', '9999558419', NULL, 2, 18, 1, 1, '2020-08-07 23:40:27',
        '2020-08-07 23:40:27'),
       (18, 'LAURA GABRIELA', 'MENDEZ EK', '9993323534', NULL, 2, 19, 1, 1, '2020-08-08 05:53:27',
        '2020-08-27 00:57:15'),
       (19, 'ASUNCION MARINA DE JESUS', 'MARTIN CHUC', '9993026986', NULL, 6, 20, 1, 1, '2020-08-08 06:11:19',
        '2020-08-08 06:30:15'),
       (20, 'ROSA ELENA CELESTINA', 'EK SANDOVAL', '9994412164', NULL, 6, 21, 1, 1, '2020-08-08 06:26:28',
        '2020-08-08 06:26:28'),
       (21, 'JESUS ENRIQUE', 'CEBALLOS MENDEZ', '9991200876', NULL, 7, 24, 1, 1, '2020-08-08 06:55:25',
        '2020-08-08 07:02:48'),
       (22, 'PEDRO', 'CHUC CUA', '9999049383', NULL, 9, 25, 1, 1, '2020-08-08 07:09:26', '2020-08-08 07:09:26'),
       (23, 'HUMBERTO ALONSO', 'DZUL CHAN', '9995458734', NULL, 3, 26, 1, 1, '2020-09-24 01:06:46',
        '2020-10-28 01:01:27'),
       (24, 'MARIA DE LOS ANGELES', 'PE�A GIO', '9991548779', NULL, 3, 27, 1, 1, '2020-09-24 01:42:32',
        '2020-09-24 05:05:56');
/*!40000 ALTER TABLE `personal`
    ENABLE KEYS */;
UNLOCK TABLES;
--
-- TABLE structure for TABLE `puestos`
--

DROP TABLE IF EXISTS `puestos`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `puestos`
(
    `id`          bigint(20) unsigned                     NOT NULL AUTO_INCREMENT,
    `funcion`     varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `descripcion` varchar(191) COLLATE utf8mb4_unicode_ci      DEFAULT NULL,
    `created_at`  timestamp                               NULL DEFAULT NULL,
    `updated_at`  timestamp                               NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `puestos_funcion_unique` (`funcion`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 10
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puestos`
--

LOCK TABLES `puestos` WRITE;
/*!40000 ALTER TABLE `puestos`
    DISABLE KEYS */;
INSERT INTO `puestos`
VALUES (1, 'Director', 'Coordinador de la institucion', '2020-07-02 00:51:13', '2020-07-02 00:51:13'),
       (2, 'PREFECTA/O', 'ENCARGADA/O  DE LA DISCIPLINA Y EL ORDEN', '2020-07-02 00:51:13', '2020-08-01 08:36:44'),
       (3, 'Docente', 'Profesor de aula', '2020-07-02 00:51:13', '2020-07-02 00:51:13'),
       (4, 'Director Pedagogico Administrativo', '', '2020-07-02 00:51:14', '2020-07-02 00:51:14'),
       (6, 'Secretario/a', '', '2020-07-02 00:51:14', '2020-07-02 00:51:14'),
       (7, 'Intendente', '', '2020-07-02 00:51:14', '2020-07-02 00:51:14'),
       (9, 'VELADOR', NULL, '2020-08-01 08:33:40', '2020-08-08 23:46:36');
/*!40000 ALTER TABLE `puestos`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_alumno`
--

DROP TABLE IF EXISTS `status_alumno`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_alumno`
(
    `id`          bigint(20) unsigned                     NOT NULL AUTO_INCREMENT,
    `descripcion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at`  timestamp                               NULL DEFAULT NULL,
    `updated_at`  timestamp                               NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `status_alumno_descripcion_unique` (`descripcion`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 5
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_alumno`
--

LOCK TABLES `status_alumno` WRITE;
/*!40000 ALTER TABLE `status_alumno`
    DISABLE KEYS */;
INSERT INTO `status_alumno`
VALUES (1, 'Pre-inscrito', '2020-07-02 00:51:14', '2020-07-02 00:51:14'),
       (2, 'Inscrito', '2020-07-02 00:51:14', '2020-07-02 00:51:14'),
       (3, 'Baja', '2020-07-02 00:51:14', '2020-07-02 00:51:14'),
       (4, 'Graduado', '2020-07-21 22:16:14', '2020-07-21 22:16:14');
/*!40000 ALTER TABLE `status_alumno`
    ENABLE KEYS */;
UNLOCK TABLES;


INSERT INTO `users`
VALUES (1, 'admin', 'admin@admin.com', NULL, '$2y$10$XyCK6IARIgD8Cx3dI02hr.AL/hA5tqskO8zqc11krDivxPmFR2Mqy',
        '8T930OblnerJSfnTKSLroEgIxHQXshfdpEv94ihthsh1SN87dmzYZ6c2gtI0', '2020-07-01 19:51:13', '2020-07-01 19:51:13'),
       (2, 'JMARTINEZ1', 'juanjmarley@gmail.com', NULL, '$2y$10$wWTctNqI8nZ6YYuPIAG2q.8TkmRq0Qp72OuMrgro0.9XpGFrv0.aq',
        'kcjSBY3y1w7hwr04yCZS3veWXKrZMGqAotOQlmERrbJmsyNmmPVNJcX1fEkD', '2020-07-04 10:55:59', '2020-10-28 01:01:01'),
       (3, 'LMENDEZ2', 'loreney_15@autlook.es', NULL, '$2y$10$.qhw1eo0P4ioWQWTZPZOJuPm7NZdRxALbumncLrakyy/v93BaxIhW',
        'ufyXbewVETWvKTnMNSMvnC2d3F9revCFXQl3N8Qn0C1pQL0OuWRYEXyTOblV', '2020-07-04 21:23:41', '2020-10-29 13:39:58'),
       (4, 'MPERAZA3', 'mony081@hotmail.com', NULL, '$2y$10$6VPwkkw3mtAAEPikGkRAs.DnxZMbQTHfskWYBUPJQPeNuax/rOsOm',
        NULL, '2020-07-04 21:47:14', '2020-08-01 21:34:15'),
       (5, 'ABALAM4', 'angelito_nice93@hotmail.com', NULL,
        '$2y$10$DcwYBrZKpini9BLbT.T1lOkaubhojVi0Y36AWHvS5.NZC4X7.0KrS', NULL, '2020-07-23 19:50:08',
        '2020-10-27 17:31:06'),
       (6, 'DHUH5', 'dchh_189@hotmail.com', NULL, '$2y$10$SfK.qpWLWMFzY1tDp8irdeohVjLCasppNX.RDqgVJF7La/vt5zGWy', NULL,
        '2020-07-24 10:57:17', '2020-11-24 18:09:52'),
       (7, 'STZAB6', 'cob.alfonso@gmail.com', NULL, '$2y$10$nefFQcXe1g637oIg5AkK.u3/ku6pFdy.dMqqZgdg6lgKIE8GVU9Kq',
        'AjxBZfaCCM6NAPf7l4jCppOBv0iBZCwisSFoFcG8PbIPjtA28v1HeUyA4CZ9', '2020-08-01 05:28:01', '2020-10-27 23:04:14'),
       (8, 'CCHAN7', 'crchandiaz@gmail.com', NULL, '$2y$10$xN28J2fvaa8RtDzUixeZwuohY8wSHqRoMEUmnbotBWmTouTfNU7Xa', NULL,
        '2020-08-01 05:44:10', '2020-08-01 05:44:10'),
       (9, 'SPAT8', 'saletitamatematica@hotmail.com', NULL,
        '$2y$10$3/RkwiFU8M9sKYqzclrL1uhf8irKWwYVz9hZ9XugNnD49.CuE4.Qm',
        'jikH0E9MgmNzhSpPMjWAEmlaXbAMxWgpn9WPYMGCd5j42jziZ0H2C1OvDREM', '2020-08-01 11:02:00', '2020-08-01 11:02:00'),
       (10, 'MLEON9', 'leon_chan26@outlook-com', NULL, '$2y$10$TJoFnL.T.3bbYfNHY0ZPbe952Ltvd/YO0U0ob8sYKnxMa2XmGSdf6',
        '7TRthZ2vEeXPqLJP81DIBF8IXoeQHpjCrSCvwwFJzzwEEJFH9oT2alT0YRWV', '2020-08-01 06:51:46', '2020-10-28 20:30:26'),
       (11, 'JRODRIGUEZ10', 'antonio_hunucma@hotmail.com', NULL,
        '$2y$10$xUj6cLIBTnpr4nqXES6KDuo56DiG2AQgKr8mejiRlCunY.UMiW/UW',
        'HvSQef1CJyjCvDg1aX4mSHlVYTUMLp9bE5X3XLvumVQiIuKcxEgoUrtY7RYi', '2020-08-01 07:22:10', '2020-10-28 20:48:54'),
       (12, 'YPEÑA11', 'yoselinpenapuerto@gmail.com', NULL,
        '$2y$10$IaxuhBklWVeEN0kV2D7jweprMqXSjGZBISMvs4fiubtEPtJtoPewC', NULL, '2020-08-01 07:35:55',
        '2020-08-01 07:35:55'),
       (13, 'ANOH12', 'denc6907@gmail.com', NULL, '$2y$10$BUoyyoYMLGH145Y4hgGcfuLwo8h/oGn5a6d6ywome2E0NGr.w6bTm', NULL,
        '2020-08-01 07:57:06', '2020-10-30 00:03:53'),
       (14, 'GCHABLE13', 'nena.loria23@gmail.com', NULL, '$2y$10$BxKGBiozMmrgwNuM36KT3eeX6PhONvmEARX81O1BbIcrSTaJ1W8Mq',
        NULL, '2020-08-01 08:20:19', '2020-11-04 20:32:01'),
       (15, 'FLOPEZ14', 'abrahamsoberanis24@gmail.com', NULL,
        '$2y$10$ypZA01V13FcWvW/nIQpqReqwtcHFl9IjnM.7gxzQFKl8MOAlBzLzy',
        'RM103YBBo7jcBRSWdfDiaf9JrVErGYUzdYss6VLk2b6gRZr3tm6RM8nSVZ4L', '2020-08-04 05:23:10', '2020-08-04 05:23:10'),
       (16, 'GEK15', 'gildamarlene_ek@hotmail.com', NULL,
        '$2y$10$7oRM.VHPH.KOFoN8bVc3.uUO6UIFM/qQXAZmd5SbouqSOyqFwLLFq',
        'Nne9ztCyXmnb8ageazFlmVwgcD7aVUFMo7AfL4kC3GJPK3HDPM38PKQHeOHL', '2020-08-07 22:53:28', '2020-10-27 21:43:16'),
       (17, 'RPUERTO16', 'peque_18virgo@hotmail.com', NULL,
        '$2y$10$CHPi7hkuUH7V5795LTZTsudmzzL8mEg7vDb72YT8qS3Zvhw6SttJS', NULL, '2020-08-08 04:06:43',
        '2020-11-09 17:49:44'),
       (18, 'ACEBALLOS17', 'berty_ceballos@hotmail.com', NULL,
        '$2y$10$lJVtsYdS7CsnnYEXmJ9rKOFDzC1s/YP422EZGnTitIzPx0tZzra5C', NULL, '2020-08-07 23:40:27',
        '2020-08-07 23:40:27'),
       (19, 'LMENDEZ18', 'gabriela_20@hotmail.com', NULL,
        '$2y$10$JT2jkdKnmXyWkppGZm/5XO1MCgs4Eyugx36HGtv/eV6JrbntzSnoW', NULL, '2020-08-08 05:53:27',
        '2020-08-27 00:57:15'),
       (20, 'AMARTIN19', 'mariam_did@hotmail.com', NULL, '$2y$10$FTLlII.Yw4fREoyiXp0h2uZHechwZoe2y43KOanU/9ummnm5qGLX2',
        NULL, '2020-08-08 06:11:19', '2020-08-08 06:30:15'),
       (21, 'REK20', 'nena_san@outlook.com', NULL, '$2y$10$7uEWaNmFKlb1KsCJJ.NbyuPUJ/Z20usmSAwZe3qsguy53PPJ56RqC', NULL,
        '2020-08-08 06:26:28', '2020-08-08 06:26:28'),
       (24, 'PCHUC21', 'chucho_cm74@hotmail.com', NULL, '$2y$10$gocKAcokos/vMwlPXWo9ru8wKVKuWj1MOdX31t8nxejAwwUj0aUry',
        NULL, '2020-08-08 06:55:25', '2020-08-08 07:02:48'),
       (25, 'PCHUC22', 'pedro_66@hotmail.com', NULL, '$2y$10$wK9HEedZR/U6nhcMCT/RcOfx2FZaCWbQW6RdxsSBPX2aNuyEKttdG',
        NULL, '2020-08-08 07:09:26', '2020-08-08 07:09:26'),
       (26, 'HDZUL23', 'Humberto_Dzul_1603@hotmail.com', NULL,
        '$2y$10$MR2y7A8gBZ.HFjAsgt9SM.kESsH8Lkc4tX492.rD6LaY2FDCS2mze',
        '1wr8evtIhTmq5p39FaqGnHyM1303RbN1ixp7hKhmzHyV8TPU0rnw1I8IP2RY', '2020-09-24 06:06:46', '2020-10-28 07:01:27'),
       (27, 'MPEÑA24', 'angels_pg@hotmail.com', NULL, '$2y$10$nHMIc.dBk8we0CdPMjWTdO9okVH5TfTg3axAvRsUpqV02MIHC/Mp6',
        NULL, '2020-09-24 06:42:32', '2020-09-24 10:05:56');
/*!40000 ALTER TABLE `users`
    ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE = @OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE = @OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES = @OLD_SQL_NOTES */;

-- Dump completed on 2020-12-04 13:00:05
