#tag @e[tag=detecting] add grenade_effect
#scoreboard players add @e[tag=detecting] throwable_life 100
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["grenade_effect","effect"],Duration:2000}
tag @s remove grenade_effect
scoreboard players add @e[tag=grenade_effect,limit=1,sort=nearest] throwable_life 100
kill @s
