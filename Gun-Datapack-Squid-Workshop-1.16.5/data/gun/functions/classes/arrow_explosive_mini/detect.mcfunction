#tag @e[tag=detecting] add grenade_effect
#scoreboard players add @e[tag=detecting] throwable_life 100
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["mini_explosion","effect"],Duration:2000}
tag @s remove mini_explosion
scoreboard players add @e[tag=mini_explosion,limit=1,sort=nearest] throwable_life 100
scoreboard players operation @e[tag=mini_explosion,limit=1,sort=nearest] UID = @s UID
kill @s
