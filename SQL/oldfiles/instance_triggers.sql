DROP TRIGGER IF EXISTS `before_character_data_update`;
DELIMITER ;;
CREATE TRIGGER `before_character_data_update` BEFORE INSERT ON `character_data` FOR EACH ROW BEGIN
select SUBSTRING_INDEX(host,':',1) into @userip from information_schema.processlist WHERE ID=connection_id();
SELECT instance_user.ID into @InstanceID FROM instance_user WHERE instance_user.userIP = @userip; 
update character_data
SET InstanceID = @InstanceID;

END
;;
DELIMITER ;


DROP TRIGGER IF EXISTS `before_instance_building_update`;
DELIMITER ;;
CREATE TRIGGER `before_instance_building_update` BEFORE INSERT ON `instance_building` FOR EACH ROW BEGIN
select SUBSTRING_INDEX(host,':',1) into @userip from information_schema.processlist WHERE ID=connection_id();
SELECT instance_user.ID into @InstanceID FROM instance_user WHERE instance_user.userIP = @userip; 
update instance_building
SET instanceId = @InstanceID;

END
;;
DELIMITER ;


DROP TRIGGER IF EXISTS `before_instance_garage_update`;
DELIMITER ;;
CREATE TRIGGER `before_instance_garage_update` BEFORE INSERT ON `instance_garage` FOR EACH ROW BEGIN
select SUBSTRING_INDEX(host,':',1) into @userip from information_schema.processlist WHERE ID=connection_id();
SELECT instance_user.ID into @InstanceID FROM instance_user WHERE instance_user.userIP = @userip; 
update instance_garage
SET Instance = @InstanceID;

END
;;
DELIMITER ;

DROP TRIGGER IF EXISTS `before_instance_state_update`;
DELIMITER ;;
CREATE TRIGGER `before_instance_state_update` BEFORE INSERT ON `instance_state` FOR EACH ROW BEGIN
select SUBSTRING_INDEX(host,':',1) into @userip from information_schema.processlist WHERE ID=connection_id();
SELECT instance_user.ID into @InstanceID FROM instance_user WHERE instance_user.userIP = @userip; 
update instance_state
SET instanceID = @InstanceID;
END
;;
DELIMITER ;


DROP TRIGGER IF EXISTS `before_squad_update`;
DELIMITER ;;
CREATE TRIGGER `before_squad_update` BEFORE INSERT ON `squad` FOR EACH ROW BEGIN
select SUBSTRING_INDEX(host,':',1) into @userip from information_schema.processlist WHERE ID=connection_id();
SELECT instance_user.ID into @InstanceID FROM instance_user WHERE instance_user.userIP = @userip; 
update squad
SET instance_id = @InstanceID;

END
;;
DELIMITER ;