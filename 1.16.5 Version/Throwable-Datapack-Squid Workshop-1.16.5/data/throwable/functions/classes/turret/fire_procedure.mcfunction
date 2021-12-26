function throwable:classes/grenade/fire

scoreboard players set @s spread 6
scoreboard players operation @e[tag=grenade,distance=..2] spread = @s spread
execute as @e[tag=grenade,distance=..2] at @s run function gun:classes/gun/spread/spread
