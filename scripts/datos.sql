-- -----------------------------------------------------
-- Data for table `RUPI`.`Vacunas`
-- -----------------------------------------------------
START TRANSACTION;
USE `RUPI`;
INSERT INTO `RUPI`.`Vacunas` (`id_vacuna`, `nombreV`) VALUES (1, 'Rabia');
INSERT INTO `RUPI`.`Vacunas` (`id_vacuna`, `nombreV`) VALUES (2, 'Moquillo');
INSERT INTO `RUPI`.`Vacunas` (`id_vacuna`, `nombreV`) VALUES (3, 'Parvovirosis');
INSERT INTO `RUPI`.`Vacunas` (`id_vacuna`, `nombreV`) VALUES (4, 'Hepatitis');
INSERT INTO `RUPI`.`Vacunas` (`id_vacuna`, `nombreV`) VALUES (5, 'Leptospirosis');
INSERT INTO `RUPI`.`Vacunas` (`id_vacuna`, `nombreV`) VALUES (6, 'Coronavirus');
INSERT INTO `RUPI`.`Vacunas` (`id_vacuna`, `nombreV`) VALUES (7, 'Multivalente');
INSERT INTO `RUPI`.`Vacunas` (`id_vacuna`, `nombreV`) VALUES (8, 'Parainfluenza');
INSERT INTO `RUPI`.`Vacunas` (`id_vacuna`, `nombreV`) VALUES (9, 'Bordetellosis');
INSERT INTO `RUPI`.`Vacunas` (`id_vacuna`, `nombreV`) VALUES (10, 'Distemper');

COMMIT;


-- -----------------------------------------------------
-- Data for table `RUPI`.`Tratamiento`
-- -----------------------------------------------------
START TRANSACTION;
USE `RUPI`;
INSERT INTO `RUPI`.`Tratamiento` (`id_tratamiento`, `nombreT`) VALUES (1, 'Moquillo');
INSERT INTO `RUPI`.`Tratamiento` (`id_tratamiento`, `nombreT`) VALUES (2, 'Parvovirus');
INSERT INTO `RUPI`.`Tratamiento` (`id_tratamiento`, `nombreT`) VALUES (3, 'Sarna demodésica');
INSERT INTO `RUPI`.`Tratamiento` (`id_tratamiento`, `nombreT`) VALUES (4, 'Sarna sarcóptica');
INSERT INTO `RUPI`.`Tratamiento` (`id_tratamiento`, `nombreT`) VALUES (5, 'Cataratas');
INSERT INTO `RUPI`.`Tratamiento` (`id_tratamiento`, `nombreT`) VALUES (6, 'Dermatitis');
INSERT INTO `RUPI`.`Tratamiento` (`id_tratamiento`, `nombreT`) VALUES (7, 'Otitis canina');
INSERT INTO `RUPI`.`Tratamiento` (`id_tratamiento`, `nombreT`) VALUES (8, 'Alergia');
INSERT INTO `RUPI`.`Tratamiento` (`id_tratamiento`, `nombreT`) VALUES (9, 'Cistitis');
INSERT INTO `RUPI`.`Tratamiento` (`id_tratamiento`, `nombreT`) VALUES (10, 'Leishmaniosis canina');
INSERT INTO `RUPI`.`Tratamiento` (`id_tratamiento`, `nombreT`) VALUES (11, 'FIV');
INSERT INTO `RUPI`.`Tratamiento` (`id_tratamiento`, `nombreT`) VALUES (12, 'Hipoglucemia');
INSERT INTO `RUPI`.`Tratamiento` (`id_tratamiento`, `nombreT`) VALUES (13, 'Coronavirus');
INSERT INTO `RUPI`.`Tratamiento` (`id_tratamiento`, `nombreT`) VALUES (14, 'Peritonitis');

COMMIT;


-- -----------------------------------------------------
-- Data for table `RUPI`.`Medicamento`
-- -----------------------------------------------------
START TRANSACTION;
USE `RUPI`;
INSERT INTO `RUPI`.`Medicamento` (`id_medicamento`, `nombreM`) VALUES (1, 'Amoxicilina');
INSERT INTO `RUPI`.`Medicamento` (`id_medicamento`, `nombreM`) VALUES (2, 'Sulfametoxazol');
INSERT INTO `RUPI`.`Medicamento` (`id_medicamento`, `nombreM`) VALUES (3, 'Gentamicina');
INSERT INTO `RUPI`.`Medicamento` (`id_medicamento`, `nombreM`) VALUES (4, 'Mupirocina');
INSERT INTO `RUPI`.`Medicamento` (`id_medicamento`, `nombreM`) VALUES (5, 'Blastoestimulina');
INSERT INTO `RUPI`.`Medicamento` (`id_medicamento`, `nombreM`) VALUES (6, 'Ácido fusídico');
INSERT INTO `RUPI`.`Medicamento` (`id_medicamento`, `nombreM`) VALUES (7, 'Dexamentasona');
INSERT INTO `RUPI`.`Medicamento` (`id_medicamento`, `nombreM`) VALUES (8, 'Tobramicina');

COMMIT;


-- -----------------------------------------------------
-- Data for table `RUPI`.`Especie`
-- -----------------------------------------------------
START TRANSACTION;
USE `RUPI`;
INSERT INTO `RUPI`.`Especie` (`id_especie`, `nombreE`, `origen`) VALUES (1, 'Canis lupus', 'Canis');
INSERT INTO `RUPI`.`Especie` (`id_especie`, `nombreE`, `origen`) VALUES (2, 'Felis silvestris', 'Felis');

COMMIT;


-- -----------------------------------------------------
-- Data for table `RUPI`.`Adoptante`
-- -----------------------------------------------------
START TRANSACTION;
USE `RUPI`;
INSERT INTO `RUPI`.`Adoptante` (`id_adoptante`, `nombre`, `telefono`, `direccion`) VALUES (1, 'Fernando Gómez', '46229731', 'Victor Hernández, Azcapotzalco');
INSERT INTO `RUPI`.`Adoptante` (`id_adoptante`, `nombre`, `telefono`, `direccion`) VALUES (2, 'Gabriel Olvera', '26261010', 'Fresnos #21, Azcapotzalco');
INSERT INTO `RUPI`.`Adoptante` (`id_adoptante`, `nombre`, `telefono`, `direccion`) VALUES (3, 'Rodolfo Ramírez', '43682011', 'Álamo Plateado #6, Lomas Verdes');
INSERT INTO `RUPI`.`Adoptante` (`id_adoptante`, `nombre`, `telefono`, `direccion`) VALUES (4, 'Juan Manuel Rodríguez', '55624489', 'Lomas de Sotelo #3, Miguel Hidalgo');
INSERT INTO `RUPI`.`Adoptante` (`id_adoptante`, `nombre`, `telefono`, `direccion`) VALUES (5, 'Luis Eduardo Ballinas', '52412806', 'Av. Rosales #11, Tultitlán');

COMMIT;


-- -----------------------------------------------------
-- Data for table `RUPI`.`Estatus`
-- -----------------------------------------------------
START TRANSACTION;
USE `RUPI`;
INSERT INTO `RUPI`.`Estatus` (`id_status`, `nombreS`) VALUES (1, 'Sin adoptar');
INSERT INTO `RUPI`.`Estatus` (`id_status`, `nombreS`) VALUES (2, 'Adoptado');
INSERT INTO `RUPI`.`Estatus` (`id_status`, `nombreS`) VALUES (3, 'Enfermo');

COMMIT;


-- -----------------------------------------------------
-- Data for table `RUPI`.`Raza`
-- -----------------------------------------------------
START TRANSACTION;
USE `RUPI`;
INSERT INTO `RUPI`.`Raza` (`id_raza`, `nombreR`, `talla`) VALUES (1, 'Pastor Alemán', 'grande');
INSERT INTO `RUPI`.`Raza` (`id_raza`, `nombreR`, `talla`) VALUES (2, 'Pomerania', 'chico');
INSERT INTO `RUPI`.`Raza` (`id_raza`, `nombreR`, `talla`) VALUES (3, 'Husky', 'mediano');
INSERT INTO `RUPI`.`Raza` (`id_raza`, `nombreR`, `talla`) VALUES (4, 'Boston Terrier', 'grande');
INSERT INTO `RUPI`.`Raza` (`id_raza`, `nombreR`, `talla`) VALUES (5, 'Bóxer', 'grande');
INSERT INTO `RUPI`.`Raza` (`id_raza`, `nombreR`, `talla`) VALUES (6, 'Dóberman', 'mediano');
INSERT INTO `RUPI`.`Raza` (`id_raza`, `nombreR`, `talla`) VALUES (7, 'Pug', 'chico');
INSERT INTO `RUPI`.`Raza` (`id_raza`, `nombreR`, `talla`) VALUES (8, 'Gran danés', 'grande');
INSERT INTO `RUPI`.`Raza` (`id_raza`, `nombreR`, `talla`) VALUES (9, 'Schnauzer', 'chico');
INSERT INTO `RUPI`.`Raza` (`id_raza`, `nombreR`, `talla`) VALUES (10, 'Persa', 'mediano');
INSERT INTO `RUPI`.`Raza` (`id_raza`, `nombreR`, `talla`) VALUES (11, 'Bengala', 'chico');
INSERT INTO `RUPI`.`Raza` (`id_raza`, `nombreR`, `talla`) VALUES (12, 'Siberiano', 'grande');
INSERT INTO `RUPI`.`Raza` (`id_raza`, `nombreR`, `talla`) VALUES (13, 'Ocicat', 'chico');
INSERT INTO `RUPI`.`Raza` (`id_raza`, `nombreR`, `talla`) VALUES (14, 'Korat', 'chico');
INSERT INTO `RUPI`.`Raza` (`id_raza`, `nombreR`, `talla`) VALUES (15, 'Sphynx', 'mediano');
INSERT INTO `RUPI`.`Raza` (`id_raza`, `nombreR`, `talla`) VALUES (16, 'Salchicha', 'chico');
INSERT INTO `RUPI`.`Raza` (`id_raza`, `nombreR`, `talla`) VALUES (17, 'Chihuahua', 'chico');

COMMIT;


-- -----------------------------------------------------
-- Data for table `RUPI`.`Veterinario`
-- -----------------------------------------------------
START TRANSACTION;
USE `RUPI`;
INSERT INTO `RUPI`.`Veterinario` (`id_veterinario`, `nombre`, `apellido`) VALUES (1, 'Federico', 'Mejía');
INSERT INTO `RUPI`.`Veterinario` (`id_veterinario`, `nombre`, `apellido`) VALUES (2, 'Rubí', 'Pillado');

COMMIT;


-- -----------------------------------------------------
-- Data for table `RUPI`.`Registro`
-- -----------------------------------------------------
START TRANSACTION;
USE `RUPI`;
INSERT INTO `RUPI`.`Registro` (`folio`,`nombre`,`id_especie`,`id_raza`,`sexo`,`color`,`peso`,`fecha_nacimiento`,`id_veterinario`,`id_status`,`observaciones`,`id_adoptante`,`image`) VALUES (1,'Laika',1,5,'F','Café',4.5,'2012/08/02',1,1,NULL,NULL,'1.png');
INSERT INTO `RUPI`.`Registro` (`folio`,`nombre`,`id_especie`,`id_raza`,`sexo`,`color`,`peso`,`fecha_nacimiento`,`id_veterinario`,`id_status`,`observaciones`,`id_adoptante`,`image`) VALUES (2,'Bulma',1,9,'F','Gris',3.400,'2013/03/22',2,1,NULL,NULL,'2.png');
INSERT INTO `RUPI`.`Registro` (`folio`,`nombre`,`id_especie`,`id_raza`,`sexo`,`color`,`peso`,`fecha_nacimiento`,`id_veterinario`,`id_status`,`observaciones`,`id_adoptante`,`image`) VALUES (3,'Tyson',1,6,'M','Café',4.250,'2009/07/10',1,2,NULL,1,'3.png');
INSERT INTO `RUPI`.`Registro` (`folio`,`nombre`,`id_especie`,`id_raza`,`sexo`,`color`,`peso`,`fecha_nacimiento`,`id_veterinario`,`id_status`,`observaciones`,`id_adoptante`,`image`) VALUES (4,'Chow-Chow',1,4,'M','Crema',3.900,'2008/09/24',1,2,NULL,3,'4.png');
INSERT INTO `RUPI`.`Registro` (`folio`,`nombre`,`id_especie`,`id_raza`,`sexo`,`color`,`peso`,`fecha_nacimiento`,`id_veterinario`,`id_status`,`observaciones`,`id_adoptante`,`image`) VALUES (5,'Roma',1,16,'F','Café',2.300,'2010/02/04',2,3,NULL,NULL,'5.png');
INSERT INTO `RUPI`.`Registro` (`folio`,`nombre`,`id_especie`,`id_raza`,`sexo`,`color`,`peso`,`fecha_nacimiento`,`id_veterinario`,`id_status`,`observaciones`,`id_adoptante`,`image`) VALUES (6,'Tutú',2,10,'F','Gris',1.800,'2013/11/30',1,1,NULL,NULL,'6.png');
INSERT INTO `RUPI`.`Registro` (`folio`,`nombre`,`id_especie`,`id_raza`,`sexo`,`color`,`peso`,`fecha_nacimiento`,`id_veterinario`,`id_status`,`observaciones`,`id_adoptante`,`image`) VALUES (7,'Neko',2,12,'M','Naranja',1.150,'2012/05/26',2,2,NULL,5,'7.png');
INSERT INTO `RUPI`.`Registro` (`folio`,`nombre`,`id_especie`,`id_raza`,`sexo`,`color`,`peso`,`fecha_nacimiento`,`id_veterinario`,`id_status`,`observaciones`,`id_adoptante`,`image`) VALUES (8,'Totti',1,1,'M','Crema',3.120,'2010/01/04',2,3,NULL,NULL,'8.png');
INSERT INTO `RUPI`.`Registro` (`folio`,`nombre`,`id_especie`,`id_raza`,`sexo`,`color`,`peso`,`fecha_nacimiento`,`id_veterinario`,`id_status`,`observaciones`,`id_adoptante`,`image`) VALUES (9,'Kuro',2,15,'M','Negro',2.480,'2014/03/29',2,2,NULL,2,'9.png');
INSERT INTO `RUPI`.`Registro` (`folio`,`nombre`,`id_especie`,`id_raza`,`sexo`,`color`,`peso`,`fecha_nacimiento`,`id_veterinario`,`id_status`,`observaciones`,`id_adoptante`,`image`) VALUES (10,'Rambo',1,5,'M','Negro',4.300,'2013/02/01',1,1,NULL,NULL,'10.png');
INSERT INTO `RUPI`.`Registro` (`folio`,`nombre`,`id_especie`,`id_raza`,`sexo`,`color`,`peso`,`fecha_nacimiento`,`id_veterinario`,`id_status`,`observaciones`,`id_adoptante`,`image`) VALUES (11,'Spock',1,8,'M','Blanco',3.500,'2009/04/17',1,3,NULL,NULL,'11.png');


COMMIT;


-- -----------------------------------------------------
-- Data for table `RUPI`.`DetalleVacunas`
-- -----------------------------------------------------
START TRANSACTION;
USE `RUPI`;
INSERT INTO `RUPI`.`DetalleVacunas` (`folio`, `id_vacuna`, `fecha_aplicacion`, `fecha_siguiente`, `id_veterinario`) VALUES (1, 1, '2014-02-03', '2014-04-03', 2);
INSERT INTO `RUPI`.`DetalleVacunas` (`folio`, `id_vacuna`, `fecha_aplicacion`, `fecha_siguiente`, `id_veterinario`) VALUES (1, 2, '2014-03-20', '2014-05-20', 2);
INSERT INTO `RUPI`.`DetalleVacunas` (`folio`, `id_vacuna`, `fecha_aplicacion`, `fecha_siguiente`, `id_veterinario`) VALUES (2, 1, '2014-06-05', '2014-08-04', 1);
INSERT INTO `RUPI`.`DetalleVacunas` (`folio`, `id_vacuna`, `fecha_aplicacion`, `fecha_siguiente`, `id_veterinario`) VALUES (2, 9, '2014-08-25', '2014-10-24', 2);
INSERT INTO `RUPI`.`DetalleVacunas` (`folio`, `id_vacuna`, `fecha_aplicacion`, `fecha_siguiente`, `id_veterinario`) VALUES (3, 6, '2014-06-10', '2014-08-09', 2);
INSERT INTO `RUPI`.`DetalleVacunas` (`folio`, `id_vacuna`, `fecha_aplicacion`, `fecha_siguiente`, `id_veterinario`) VALUES (3, 2, '2014-03-25', '2014-05-24', 1);
INSERT INTO `RUPI`.`DetalleVacunas` (`folio`, `id_vacuna`, `fecha_aplicacion`, `fecha_siguiente`, `id_veterinario`) VALUES (3, 2, '2014-05-14', '2014-07-13', 1);
INSERT INTO `RUPI`.`DetalleVacunas` (`folio`, `id_vacuna`, `fecha_aplicacion`, `fecha_siguiente`, `id_veterinario`) VALUES (4, 4, '2014-06-04', '2014-08-03', 2);
INSERT INTO `RUPI`.`DetalleVacunas` (`folio`, `id_vacuna`, `fecha_aplicacion`, `fecha_siguiente`, `id_veterinario`) VALUES (4, 4, '2014-02-09', '2014-04-10', 2);
INSERT INTO `RUPI`.`DetalleVacunas` (`folio`, `id_vacuna`, `fecha_aplicacion`, `fecha_siguiente`, `id_veterinario`) VALUES (5, 3, '2014-02-01', '2014-04-02', 1);
INSERT INTO `RUPI`.`DetalleVacunas` (`folio`, `id_vacuna`, `fecha_aplicacion`, `fecha_siguiente`, `id_veterinario`) VALUES (6, 8, '2014-02-13', '2014-04-14', 1);
INSERT INTO `RUPI`.`DetalleVacunas` (`folio`, `id_vacuna`, `fecha_aplicacion`, `fecha_siguiente`, `id_veterinario`) VALUES (6, 4, '2014-03-26', '2014-05-25', 1);
INSERT INTO `RUPI`.`DetalleVacunas` (`folio`, `id_vacuna`, `fecha_aplicacion`, `fecha_siguiente`, `id_veterinario`) VALUES (7, 3, '2014-03-25', '2014-05-24', 2);
INSERT INTO `RUPI`.`DetalleVacunas` (`folio`, `id_vacuna`, `fecha_aplicacion`, `fecha_siguiente`, `id_veterinario`) VALUES (7, 8, '2014-08-24', '2014-10-23', 2);
INSERT INTO `RUPI`.`DetalleVacunas` (`folio`, `id_vacuna`, `fecha_aplicacion`, `fecha_siguiente`, `id_veterinario`) VALUES (7, 8, '2014-02-24', '2014-04-25', 1);
INSERT INTO `RUPI`.`DetalleVacunas` (`folio`, `id_vacuna`, `fecha_aplicacion`, `fecha_siguiente`, `id_veterinario`) VALUES (8, 1, '2014-02-17', '2014-04-18', 2);
INSERT INTO `RUPI`.`DetalleVacunas` (`folio`, `id_vacuna`, `fecha_aplicacion`, `fecha_siguiente`, `id_veterinario`) VALUES (8, 5, '2014-10-23', '2014-12-22', 1);
INSERT INTO `RUPI`.`DetalleVacunas` (`folio`, `id_vacuna`, `fecha_aplicacion`, `fecha_siguiente`, `id_veterinario`) VALUES (8, 9, '2014-01-05', '2014-03-06', 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `RUPI`.`DetalleTratamiento`
-- -----------------------------------------------------
START TRANSACTION;
USE `RUPI`;
INSERT INTO `RUPI`.`DetalleTratamiento` (`folio`, `id_tratamiento`, `fecha_aplicacion`, `id_veterinario`) VALUES (5, 1, '2014/02/20', 1);
INSERT INTO `RUPI`.`DetalleTratamiento` (`folio`, `id_tratamiento`, `fecha_aplicacion`, `id_veterinario`) VALUES (8, 2, '2014/09/03', 1);
INSERT INTO `RUPI`.`DetalleTratamiento` (`folio`, `id_tratamiento`, `fecha_aplicacion`, `id_veterinario`) VALUES (8, 3, '2013/03/12', 2);
INSERT INTO `RUPI`.`DetalleTratamiento` (`folio`, `id_tratamiento`, `fecha_aplicacion`, `id_veterinario`) VALUES (11, 6, '2014/10/21', 1);
INSERT INTO `RUPI`.`DetalleTratamiento` (`folio`, `id_tratamiento`, `fecha_aplicacion`, `id_veterinario`) VALUES (11, 2, '2014/11/01', 1);
INSERT INTO `RUPI`.`DetalleTratamiento` (`folio`, `id_tratamiento`, `fecha_aplicacion`, `id_veterinario`) VALUES (5, 2, '2014/08/30', 2);

COMMIT;


-- -----------------------------------------------------
-- Data for table `RUPI`.`DetalleMedicamento`
-- -----------------------------------------------------
START TRANSACTION;
USE `RUPI`;
INSERT INTO `RUPI`.`DetalleMedicamento` (`folio`, `id_medicamento`, `fecha_suministro`, `id_veterinario`) VALUES (1, 2, '2014-10-16', 1);
INSERT INTO `RUPI`.`DetalleMedicamento` (`folio`, `id_medicamento`, `fecha_suministro`, `id_veterinario`) VALUES (1, 5, '2014-07-09', 1);
INSERT INTO `RUPI`.`DetalleMedicamento` (`folio`, `id_medicamento`, `fecha_suministro`, `id_veterinario`) VALUES (2, 6, '2014-08-09', 1);
INSERT INTO `RUPI`.`DetalleMedicamento` (`folio`, `id_medicamento`, `fecha_suministro`, `id_veterinario`) VALUES (2, 8, '2014-01-18', 2);
INSERT INTO `RUPI`.`DetalleMedicamento` (`folio`, `id_medicamento`, `fecha_suministro`, `id_veterinario`) VALUES (3, 5, '2014-02-15', 1);
INSERT INTO `RUPI`.`DetalleMedicamento` (`folio`, `id_medicamento`, `fecha_suministro`, `id_veterinario`) VALUES (4, 2, '2014-02-05', 2);
INSERT INTO `RUPI`.`DetalleMedicamento` (`folio`, `id_medicamento`, `fecha_suministro`, `id_veterinario`) VALUES (4, 4, '2014-05-02', 2);
INSERT INTO `RUPI`.`DetalleMedicamento` (`folio`, `id_medicamento`, `fecha_suministro`, `id_veterinario`) VALUES (5, 6, '2014-03-02', 2);
INSERT INTO `RUPI`.`DetalleMedicamento` (`folio`, `id_medicamento`, `fecha_suministro`, `id_veterinario`) VALUES (6, 2, '2014-07-27', 2);
INSERT INTO `RUPI`.`DetalleMedicamento` (`folio`, `id_medicamento`, `fecha_suministro`, `id_veterinario`) VALUES (6, 1, '2014-10-18', 1);
INSERT INTO `RUPI`.`DetalleMedicamento` (`folio`, `id_medicamento`, `fecha_suministro`, `id_veterinario`) VALUES (6, 4, '2014-05-01', 2);
INSERT INTO `RUPI`.`DetalleMedicamento` (`folio`, `id_medicamento`, `fecha_suministro`, `id_veterinario`) VALUES (7, 3, '2014-08-20', 2);
INSERT INTO `RUPI`.`DetalleMedicamento` (`folio`, `id_medicamento`, `fecha_suministro`, `id_veterinario`) VALUES (8, 7, '2014-10-11', 2);
INSERT INTO `RUPI`.`DetalleMedicamento` (`folio`, `id_medicamento`, `fecha_suministro`, `id_veterinario`) VALUES (8, 5, '2014-05-13', 1);
INSERT INTO `RUPI`.`DetalleMedicamento` (`folio`, `id_medicamento`, `fecha_suministro`, `id_veterinario`) VALUES (8, 8, '2014-10-18', 2);
INSERT INTO `RUPI`.`DetalleMedicamento` (`folio`, `id_medicamento`, `fecha_suministro`, `id_veterinario`) VALUES (8, 2, '2014-09-01', 2);
INSERT INTO `RUPI`.`DetalleMedicamento` (`folio`, `id_medicamento`, `fecha_suministro`, `id_veterinario`) VALUES (10, 1, '2014-06-26', 2);
INSERT INTO `RUPI`.`DetalleMedicamento` (`folio`, `id_medicamento`, `fecha_suministro`, `id_veterinario`) VALUES (10, 7, '2014-04-24', 1);

COMMIT;

