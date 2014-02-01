SELECT
FLOOR(1000000000 + RAND() * 89999999999) AS ObjectUID,
object_spawn_locations.worldspace,
'[]' AS inventory,
object_spawn_parts.parts AS HitPoints,
object_classes.Chance,
object_classes.MaxNum,
object_classes.Damage,
object_classes.Type,
object_classes.Classname,
object_spawns_types.spawn
FROM
object_classes
INNER JOIN object_spawns_types ON object_classes.Type = object_spawns_types.type
INNER JOIN object_spawn_locations ON ''= '' AND object_spawns_types.spawn = object_spawn_locations.spawn
INNER JOIN object_spawn_parts ON object_classes.Type = object_spawn_parts.type
WHERE
object_classes.Type != 'object'
GROUP BY
object_classes.Classname,
object_spawn_locations.worldspace