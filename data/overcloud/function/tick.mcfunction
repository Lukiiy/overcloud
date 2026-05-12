execute as @e in overcloud:overcloud at @s if entity @s[y=-5,dy=0] run execute in minecraft:overworld run tp @s ~ 416 ~

execute in minecraft:overworld run function overcloud:portal/tick_overworld

scoreboard players remove @a[scores={overcloudCooldown=1..}] overcloudCooldown 1