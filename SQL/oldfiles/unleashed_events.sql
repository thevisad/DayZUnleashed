-- ----------------------------
-- Event structure for checkDamagedVehicles
-- ----------------------------
DROP EVENT IF EXISTS `checkDamagedVehicles`;
DELIMITER ;;
CREATE DEFINER=`dayzserver`@`%` EVENT `checkDamagedVehicles` ON SCHEDULE EVERY 1 DAY STARTS '2014-01-22 20:23:13' ON COMPLETION NOT PRESERVE ENABLE COMMENT 'Checks and removes damaged vehicles' DO DELETE from object_data WHERE Damage >= '0.95'
;;
DELIMITER ;

-- ----------------------------
-- Event structure for checkSpawnVehicles
-- ----------------------------
DROP EVENT IF EXISTS `checkSpawnVehicles`;
DELIMITER ;;
CREATE DEFINER=`dayzserver`@`%` EVENT `checkSpawnVehicles` ON SCHEDULE EVERY 1 DAY STARTS '2014-01-22 20:23:13' ON COMPLETION NOT PRESERVE ENABLE COMMENT 'Checks and spawns new vehicles' DO INSERT INTO object_data (ObjectUID,Instance,Classname,Datestamp,CharacterID,Worldspace,Inventory,Hitpoints,Fuel,Damage,last_updated) (
			SELECT 
				ObjectUID, 
				1 as Instance, 
				Classname, 
				NOW() as Datestamp, 
				0 as CharacterID, 
				Worldspace, 
				'[]' as Inventory, 
				Hitpoints, 
				Fuel, 
				Damage, 
				NOW() as last_updated 
			FROM (
				SELECT *, (@ObjectUID := @ObjectUID + 1) as ObjectUID,
					@num := if(@classname = Classname, @num := @num + 1, 1) as row_num,
					@classname := Classname as c from (
					SELECT 
						object_spawn_locations.worldspace,
						object_spawn_parts.parts AS Hitpoints,
						ifnull((SELECT Worldspace from object_data WHERE Worldspace=object_spawn_locations.worldspace LIMIT 0,1),0) as DupeWorldspace,
						(SELECT count(ObjectUID) from object_data WHERE classname=object_classes.Classname) as CurrNum,
						object_classes.MaxNum,
						ROUND(FLOOR(0 + RAND()*100)/100,2) as Fuel,
						ROUND(FLOOR(0 + RAND()*95)/100,2) as Damage,
						object_classes.Chance,
						ROUND(RAND(),3) as ChanceRoll,
						object_classes.Type,
						object_classes.Classname,
						object_spawns_types.spawn
					FROM
						object_classes
							INNER JOIN
						object_spawns_types ON object_classes.Type = object_spawns_types.type
							INNER JOIN
						object_spawn_locations ON '' = ''
							AND object_spawns_types.spawn = object_spawn_locations.spawn
							INNER JOIN
						object_spawn_parts ON object_classes.Type = object_spawn_parts.type
					WHERE
						object_classes.Type != 'object'
					GROUP BY object_classes.Classname , object_spawn_locations.worldspace
					HAVING DupeWorldspace='0' and CurrNum<MaxNum
				) as t, (SELECT @classname:='', @num:=0, @ObjectUID:=(SELECT IFNULL(MAX(ObjectUID),1) FROM object_data)) as r
				WHERE ChanceRoll < Chance
				HAVING row_num<=(MaxNum-CurrNum)
			) as s
			GROUP BY Worldspace
		)
;;
DELIMITER ;

-- ----------------------------
-- Event structure for moveDeadPlayers
-- ----------------------------
DROP EVENT IF EXISTS `moveDeadPlayers`;
DELIMITER ;;
CREATE DEFINER=`dayzserver`@`%` EVENT `moveDeadPlayers` ON SCHEDULE EVERY 1 DAY STARTS '2014-01-22 20:23:13' ON COMPLETION NOT PRESERVE ENABLE COMMENT 'Moves dead players to archive' DO INSERT INTO character_dead (CharacterID,PlayerID,PlayerUID,InstanceID,Datestamp,LastLogin,Inventory,Backpack,Worldspace,Medical,Alive,Generation,LastAte,LastDrank,KillsZ,HeadshotsZ,distanceFoot,duration,currentState,KillsH,Model,KillsB,Humanity,Classtype,last_updated) (
			SELECT * from character_data WHERE Alive='0'
		)
;;
DELIMITER ;