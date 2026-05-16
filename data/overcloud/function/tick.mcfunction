execute in minecraft:overworld run function overcloud:portal/tick_overworld

scoreboard players remove @a[scores={overcloudCooldown=1..}] overcloudCooldown 1

execute as @e[predicate=overcloud:in_dimension] at @s if entity @s[y=-15,dy=10] in minecraft:overworld run tp @s ~ 416 ~