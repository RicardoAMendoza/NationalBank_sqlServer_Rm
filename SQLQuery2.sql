
-- -----------------------------------------------------
-- Table `bd_bank`.`tadmin`
-- -----------------------------------------------------
Create table tadmin
(
idadmin int NOT NULL IDENTITY(1,1), -- auto increment
name varchar (45),
lastName varchar (45),
email varchar (45),
img varchar (45),
password varchar (45),
primary key(idadmin),
)

-- -----------------------------------------------------
-- Table `bd_bank`.`tbank`
-- -----------------------------------------------------
Create table tbank
(
idbank int not null identity(1,1),
name varchar(45),
capital decimal(20,0) null default null,
address varchar (45) null default null,
primary key (idbank),
)

-- -----------------------------------------------------
-- Table `bd_bank`.`tdirectorAgencie`
-- -----------------------------------------------------
Create table tdirectorAgencie
(
idtdirectorAgencie int not null identity(1,1),
name varchar (45) null default null,
lastName varchar (45) null default null,
email varchar (45) null default null,
img varchar (45) null default null,
salary decimal (22,6) null default null,
primary key (idtdirectorAgencie ),
)

-- -----------------------------------------------------
-- Table `bd_bank`.`tagencies`
-- -----------------------------------------------------
Create table tagencies
(
idagencies int not null identity(1,1),
agencyNumber varchar (45) null default null,
name varchar (45) null default null,
address varchar (45) null default null,

)