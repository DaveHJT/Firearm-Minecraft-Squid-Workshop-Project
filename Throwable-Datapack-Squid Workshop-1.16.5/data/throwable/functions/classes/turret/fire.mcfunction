# turn red
replaceitem entity @s[type=armor_stand] armor.head minecraft:stone_button{CustomModelData:511}
replaceitem entity @s[type=!armor_stand] armor.head minecraft:stone_button{CustomModelData:521}
tag @s remove green
#summon bullet and face player
summon minecraft:area_effect_cloud ^ ^ ^0.2 {Duration:20,Tags:["bullet","turret","bullet_new"]}


execute as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~0.6 ~

execute if entity @s[type=!armor_stand] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~1.15 ~


#sign name
scoreboard players operation @e[tag=bullet_new,limit=1,sort=nearest] UID = @s UID

#sound & effects

playsound minecraft:gun/m4a1/m4a1_silencer_01 player @a ~ ~ ~ 0.5 1

execute if entity @s[type=armor_stand] positioned ~ ~0.6 ~ run particle minecraft:flame ^ ^ ^0.6 0 0 0 100 1 force
execute if entity @s[type=!armor_stand] positioned ~ ~1.7 ~ run particle minecraft:flame ^ ^ ^0.6 0 0 0 100 1 force


#particle minecraft:poof ^-0.4 ^1.3 ^1.5 0.1 0.1 0.1 0.05 1

#damage
execute as @e[tag=bullet_new,limit=1,sort=nearest] run scoreboard players set @s damage 3

#msg
#execute store result score v10 V run data get entity @s Rotation[0] 1000000
#execute store result score v11 V run data get entity @s Rotation[1] 1000000
execute store result entity @e[tag=bullet_new,limit=1,sort=nearest] Rotation[0] float 0.000001 run data get entity @s Rotation[0] 1000000
execute store result entity @e[tag=bullet_new,limit=1,sort=nearest] Rotation[1] float 0.000001 run data get entity @s Rotation[1] 1000000

#cooldown
scoreboard players add @s cooldown 8

#score spread
scoreboard players set @s spread 3

#score ammo
scoreboard players remove @s ammo 1


scoreboard players operation @e[tag=bullet_new,limit=1,sort=nearest] spread = @s spread

#rand accu
scoreboard players add rand accu 12


#spread
execute as @e[tag=bullet_new,limit=1,sort=nearest] at @s run function gun:classes/gun/spread/spread

execute as @e[tag=bullet_new,limit=1,sort=nearest] at @s run function gun:classes/gun/fire

#update bullet status
tag @e[tag=bullet_new,limit=1,sort=nearest] add fired_b

tag @e[tag=bullet_new,limit=1,sort=nearest] remove bullet_new

