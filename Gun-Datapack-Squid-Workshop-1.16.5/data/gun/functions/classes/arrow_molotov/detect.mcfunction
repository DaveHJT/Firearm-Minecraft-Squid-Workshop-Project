
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["ignited_molotov","effect"],Duration:2000}
tag @s remove molotov_effect
scoreboard players add @e[tag=ignited_molotov,limit=1,sort=nearest] throwable_life 100
scoreboard players operation @e[tag=ignited_molotov,limit=1,sort=nearest] UID = @s UID
kill @s
