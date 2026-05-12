execute as @e[type=minecraft:marker,tag=overcloud_portal] at @s if predicate overcloud:portal_valid run particle minecraft:snowflake ~ ~.5 ~ .2 .1 .2 0 1 normal @a
execute as @e[type=minecraft:marker,tag=overcloud_portal] at @s unless predicate overcloud:portal_valid run kill @s

execute as @e[type=minecraft:marker,tag=overcloud_portal] at @s run execute as @e[distance=..0.5,tag=!overcloud_portal] run scoreboard players add @s overcloudCooldown 0
execute as @e[type=minecraft:marker,tag=overcloud_portal] at @s run execute as @e[distance=..0.5,scores={overcloudCooldown=0}] run function overcloud:portal/to_overcloud

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond"}}] at @s if predicate overcloud:portal_valid unless entity @e[type=minecraft:marker,tag=overcloud_portal,distance=..1] run function overcloud:portal/create