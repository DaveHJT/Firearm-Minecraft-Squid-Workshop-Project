


playsound minecraft:gun/thrower/molotov_detonate_2 player @a ~ ~ ~ 2 1

particle minecraft:lava ~ ~ ~ 3 0.1 3 0.0001 20 force


summon minecraft:area_effect_cloud ~ ~ ~ {Duration:150,Tags:["ignited_molotov"]}
scoreboard players operation @e[tag=ignited_molotov,limit=1,sort=nearest] UID = @s UID

tag @s remove molotov_effect
kill @s[type=!player]
