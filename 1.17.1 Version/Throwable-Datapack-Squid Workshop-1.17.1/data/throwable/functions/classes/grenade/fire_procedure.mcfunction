function throwable:classes/grenade/fire

scoreboard players set @s spread 6
scoreboard players operation @e[tag=grenade,distance=..2,tag=!accurate] spread = @s spread
execute as @e[tag=grenade,distance=..2] at @s run function gun:classes/gun/spread/spread

execute as @e[tag=grenade,distance=..2] at @s run tp @s ~ ~ ~ facing ^ ^0.5 ^1
