CREATE DEFINER=`webclient`@`%` PROCEDURE `sp_save_employee`(
in aidemployee int(11),
in aemployeeNumber varchar(45),
in aname varchar(45),
in alastName varchar(45),
in aimg varchar(45),
in ahiringDate DATE,
in aidagencies int(11)
)
BEGIN

IF aidemployee = 0 THEN
INSERT INTO `bd_bank`.`temployee`(`idemployee`,`employeeNumber`,`name`,`lastName`,`img`,`hiringDate`,`idagencies`)
VALUES (`aidemployee`,`aemployeeNumber`,`aname`,`alastName`,`aimg`,`ahiringDate`,`aidagencies`);
SELECT 
    MAX(idemployee)
INTO aidemployee FROM
    `bd_bank`.`temployee`;
ELSE
UPDATE `bd_bank`.`temployee` 
SET `idemployee`=`aidemployee`,`employeeNumber`=`aemployeeNumber`,`name`=`aname`,`lastName`=`alastName`,`img`=`aimg`,`hiringDate`=`ahiringDate`,`idagencies`=`aidagencies`
WHERE `idemployee`=`aidemployee`;
END IF;
END