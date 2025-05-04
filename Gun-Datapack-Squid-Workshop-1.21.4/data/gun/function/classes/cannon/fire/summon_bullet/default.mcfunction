execute anchored eyes run summon minecraft:area_effect_cloud ^ ^ ^0.4 {Duration:20,Tags:["cannon","bullet_new","bullet","slow"]}
data modify entity @e[tag=bullet_new,limit=1,sort=nearest] Rotation[0] set from entity @s Rotation[0]
data modify entity @e[tag=bullet_new,limit=1,sort=nearest] Rotation[1] set from entity @s Rotation[1]