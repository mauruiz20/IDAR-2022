--
-- ER/Studio 8.0 SQL Code Generation
-- Company :      UNT
-- Project :      GestionPagos.DM1
-- Author :       MauricioRuiz
--
-- Date Created : Wednesday, February 15, 2023 21:28:11
-- Target DBMS : MySQL 5.x
--

-- 
-- TABLE: Comercios 
--

CREATE TABLE Comercios(
    IdComercio        INT UNSIGNED    AUTO_INCREMENT,
    Comercio          VARCHAR(100)    NOT NULL,
    Telefono          VARCHAR(15)     NOT NULL,
    Direccion         VARCHAR(100)    NOT NULL,
    Localidad         VARCHAR(100)    NOT NULL,
    EstadoComercio    CHAR(1)         NOT NULL,
    PRIMARY KEY (IdComercio)
)ENGINE=INNODB
COMMENT='Tabla que almacena los comercios del sistema.'
;

DELIMITER ;;
CREATE TRIGGER Comercios_AFTER_INSERT AFTER INSERT ON comercios FOR EACH ROW BEGIN
INSERT INTO aud_Comercios VALUES(0, NOW(), SUBSTRING_INDEX(USER(),'@',1), SUBSTRING_INDEX(USER(),'@',-1), NULL,
SUBSTRING_INDEX(USER(),'@',-1), NULL, 'I', NEW.IdComercio, NEW.Comercio, NEW.Telefono, NEW.Direccion, NEW.Localidad, NEW.EstadoComercio);
END;;

CREATE TRIGGER Comercios_AFTER_UPDATE AFTER UPDATE ON comercios FOR EACH ROW BEGIN
INSERT INTO aud_Comercios VALUES(0, NOW(), SUBSTRING_INDEX(USER(),'@',1), SUBSTRING_INDEX(USER(),'@',-1), NULL,
SUBSTRING_INDEX(USER(),'@',-1), NULL, 'A', OLD.IdComercio, OLD.Comercio, OLD.Telefono, OLD.Direccion, OLD.Localidad,
OLD.EstadoComercio);
INSERT INTO aud_Comercios VALUES(0, NOW(), SUBSTRING_INDEX(USER(),'@',1), SUBSTRING_INDEX(USER(),'@',-1), NULL,
SUBSTRING_INDEX(USER(),'@',-1), NULL, 'D', NEW.IdComercio, NEW.Comercio, NEW.Telefono, NEW.Direccion, NEW.Localidad, 
NEW.EstadoComercio);
END;;

CREATE TRIGGER Comercios_AFTER_DELETE AFTER DELETE ON comercios FOR EACH ROW BEGIN
INSERT INTO aud_Comercios VALUES(0, NOW(), SUBSTRING_INDEX(USER(),'@',1), SUBSTRING_INDEX(USER(),'@',-1), NULL,
SUBSTRING_INDEX(USER(),'@',-1), NULL, 'B', OLD.IdComercio, OLD.Comercio, OLD.Telefono, OLD.Direccion, OLD.Localidad,
OLD.EstadoComercio);
END;;
DELIMITER ;

-- 
-- TABLE: MediosPago 
--

CREATE TABLE MediosPago(
    IdMedioPago    TINYINT UNSIGNED  AUTO_INCREMENT,
    MedioPago      VARCHAR(100)    NOT NULL,
    Tipo           VARCHAR(10)     NOT NULL,
    Banco          VARCHAR(100),
    PRIMARY KEY (IdMedioPago)
)ENGINE=INNODB
COMMENT='Tabla que almacena los medios de pago del sistema.'
;

-- 
-- TABLE: Planes 
--

CREATE TABLE Planes(
    IdPlan         SMALLINT UNSIGNED  AUTO_INCREMENT,
    IdMedioPago    TINYINT UNSIGNED  NOT NULL,
    Codigo         VARCHAR(15)      NOT NULL,
    NumCuotas      TINYINT          NOT NULL,
    TNA            DECIMAL(5, 2)    NOT NULL,
    PRIMARY KEY (IdPlan, IdMedioPago)
)ENGINE=INNODB
COMMENT='Tabla que almacena los planes soportados del sistema.'
;

-- 
-- TABLE: PlanesComercio 
--

CREATE TABLE PlanesComercio(
    IdPlanComercio     INT UNSIGNED  AUTO_INCREMENT,
    IdComercio         INT UNSIGNED  NOT NULL,
    IdPlan             SMALLINT UNSIGNED  NOT NULL,
    IdMedioPago        TINYINT UNSIGNED  NOT NULL,
    EstadoPComercio    CHAR(1)     NOT NULL,
    PRIMARY KEY (IdPlanComercio, IdComercio, IdPlan, IdMedioPago)
)ENGINE=INNODB
COMMENT='Tabla que almacena los planes de comercio del sistema.'
;

-- 
-- TABLE: Usuarios 
--

CREATE TABLE Usuarios(
    IdUsuario        INT UNSIGNED   AUTO_INCREMENT,
    IdComercio       INT UNSIGNED   NOT NULL,
    Nombres          VARCHAR(60)    NOT NULL,
    Apellidos        VARCHAR(60)    NOT NULL,
    Telefono         VARCHAR(15)    NOT NULL,
    Email            VARCHAR(60)    NOT NULL,
    DNI              VARCHAR(10)    NOT NULL,
    EstadoUsuario    CHAR(1)        NOT NULL,
    PRIMARY KEY (IdUsuario, IdComercio)
)ENGINE=INNODB
COMMENT='Tabla que almacena los usuarios.'
;

-- 
-- TABLE: Ventas 
--

CREATE TABLE Ventas(
    IdVenta              INT UNSIGNED      AUTO_INCREMENT,
    IdPlanComercio       INT UNSIGNED,
    IdUsuario            INT UNSIGNED      NOT NULL,
    IdComercio           INT UNSIGNED      NOT NULL,
    IdPlan               SMALLINT UNSIGNED,
    IdMedioPago          TINYINT UNSIGNED,
    FechaAlta            DATETIME          NOT NULL,
    Monto                DECIMAL(12, 2)    NOT NULL,
    Detalles             TEXT              NOT NULL,
    ApellidosCliente     VARCHAR(60)       NOT NULL,
    NombresCliente       VARCHAR(60)       NOT NULL,
    DireccionCliente     VARCHAR(100)      NOT NULL,
    DNICliente           VARCHAR(10)       NOT NULL,
    NumTarjetaCliente    VARCHAR(20)       NOT NULL,
    EstadoVenta          CHAR(1)           NOT NULL,
    Observaciones        TEXT,
    PRIMARY KEY (IdVenta)
)ENGINE=INNODB
COMMENT='Tabla que almacena las ventas del sistema.'
;

CREATE TABLE `aud_comercios` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `FechaAud` datetime NOT NULL,
  `UsuarioAud` varchar(30) NOT NULL,
  `IP` varchar(40) NOT NULL,
  `UserAgent` varchar(255) DEFAULT NULL,
  `Aplicacion` varchar(50) NOT NULL,
  `Motivo` varchar(100) DEFAULT NULL,
  `TipoAud` char(1) NOT NULL,
  `IdComercio` int NOT NULL,
  `Comercio` varchar(100) NOT NULL,
  `Telefono` varchar(12) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Localidad` varchar(100) NOT NULL,
  `EstadoComercio` char(1) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_FechaAud` (`FechaAud`),
  KEY `IX_Usuario` (`UsuarioAud`),
  KEY `IX_IP` (`IP`),
  KEY `IX_Aplicacion` (`Aplicacion`)
) ENGINE=InnoDB
COMMENT='Tabla que almacena la auditoria de los comercios del sistema.'
;

-- 
-- INDEX: UI_Comercio 
--

CREATE UNIQUE INDEX UI_Comercio ON Comercios(Comercio)
;
-- 
-- INDEX: UI_MedioPago 
--

CREATE UNIQUE INDEX UI_MedioPago ON MediosPago(MedioPago)
;
-- 
-- INDEX: UI_IdPlan 
--

CREATE UNIQUE INDEX UI_IdPlan ON Planes(IdPlan)
;
-- 
-- INDEX: UI_Codigo 
--

CREATE UNIQUE INDEX UI_Codigo ON Planes(Codigo)
;
-- 
-- INDEX: UI_IdPlanComercio 
--

CREATE UNIQUE INDEX UI_IdPlanComercio ON PlanesComercio(IdPlanComercio)
;
-- 
-- INDEX: UI_IdComercioIdPlan 
--

CREATE UNIQUE INDEX UI_IdComercioIdPlan ON PlanesComercio(IdComercio, IdPlan)
;
-- 
-- INDEX: UI_IdUsuario 
--

CREATE UNIQUE INDEX UI_IdUsuario ON Usuarios(IdUsuario)
;
-- 
-- INDEX: UI_DNI 
--

CREATE UNIQUE INDEX UI_DNI ON Usuarios(DNI)
;
-- 
-- INDEX: IX_NombresApellidos 
--

CREATE INDEX IX_NombresApellidos ON Usuarios(Nombres, Apellidos)
;
-- 
-- INDEX: IX_DNI 
--

CREATE INDEX IX_DNI ON Ventas(DNICliente)
;
-- 
-- INDEX: IX_FechaAlta 
--

CREATE INDEX IX_FechaAlta ON Ventas(FechaAlta)
;
-- 
-- TABLE: Planes 
--

ALTER TABLE Planes ADD CONSTRAINT RefMediosPago4 
    FOREIGN KEY (IdMedioPago)
    REFERENCES MediosPago(IdMedioPago)
;


-- 
-- TABLE: PlanesComercio 
--

ALTER TABLE PlanesComercio ADD CONSTRAINT RefPlanes5 
    FOREIGN KEY (IdPlan, IdMedioPago)
    REFERENCES Planes(IdPlan, IdMedioPago)
;

ALTER TABLE PlanesComercio ADD CONSTRAINT RefComercios6 
    FOREIGN KEY (IdComercio)
    REFERENCES Comercios(IdComercio)
;


-- 
-- TABLE: Usuarios 
--

ALTER TABLE Usuarios ADD CONSTRAINT RefComercios1 
    FOREIGN KEY (IdComercio)
    REFERENCES Comercios(IdComercio)
;


-- 
-- TABLE: Ventas 
--

ALTER TABLE Ventas ADD CONSTRAINT RefUsuarios2 
    FOREIGN KEY (IdUsuario, IdComercio)
    REFERENCES Usuarios(IdUsuario, IdComercio)
;

ALTER TABLE Ventas ADD CONSTRAINT RefPlanesComercio3 
    FOREIGN KEY (IdPlanComercio, IdComercio, IdPlan, IdMedioPago)
    REFERENCES PlanesComercio(IdPlanComercio, IdComercio, IdPlan, IdMedioPago)
;