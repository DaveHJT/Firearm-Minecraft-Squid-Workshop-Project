#tag @e[tag=detecting] add grenade_effect
#scoreboard players add @e[tag=detecting] throwable_life 100
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["smoke_effect","effect"],Duration:2000}
tag @s remove smoke_effect
scoreboard players add @e[tag=smoke_effect,limit=1,sort=nearest] throwable_life 100
scoreboard players operation @e[tag=smoke_effect,limit=1,sort=nearest] UID = @s UID
kill @s
