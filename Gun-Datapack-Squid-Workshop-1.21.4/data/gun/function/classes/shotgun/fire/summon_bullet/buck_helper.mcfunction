#summon bullet
execute anchored eyes run summon minecraft:area_effect_cloud ^ ^ ^0.4 {Duration:5,Tags:["bullet","b_shot","bullet_new","buck",slow]}
data modify entity @e[tag=bullet_new,limit=1,sort=nearest] Rotation[0] set from entity @s Rotation[0]
data modify entity @e[tag=bullet_new,limit=1,sort=nearest] Rotation[1] set from entity @s Rotation[1]

#sign name
scoreboard players operation @e[tag=bullet_new,limit=1,sort=nearest] UID = @s UID

#set damage
execute as @e[tag=bullet_new,limit=1,sort=nearest] run scoreboard players set @s damage 3

#recoil bullet
execute if entity @s[scores={recoil=3..5}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.2 ~-2
execute if entity @s[scores={recoil=6..8}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.4 ~-3
execute if entity @s[scores={recoil=9..13}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.7 ~-5
execute if entity @s[scores={recoil=14..17}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.0 ~-8
execute if entity @s[scores={recoil=18..}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.8 ~-12

#spread bullet
scoreboard players set @e[tag=bullet_new,limit=1,sort=nearest] spread 3
execute as @e[tag=bullet_new,limit=1,sort=nearest] at @s run function gun:classes/gun/spread
scoreboard players set @e[tag=bullet_new,limit=1,sort=nearest] spread 1
execute as @e[tag=bullet_new,limit=1,sort=nearest] at @s run function gun:classes/gun/spread

#fire
execute as @e[tag=bullet_new,limit=1,sort=nearest] at @s run function gun:classes/gun/fire

#update bullet status
tag @e[tag=bullet_new,limit=1,sort=nearest] add bullet_fired
tag @e[tag=bullet_new,limit=1,sort=nearest] remove bullet_new