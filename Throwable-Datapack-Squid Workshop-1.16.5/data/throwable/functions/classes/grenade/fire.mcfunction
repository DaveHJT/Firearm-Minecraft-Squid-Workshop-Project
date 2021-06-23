
#summon bullet and sky
summon minecraft:area_effect_cloud ~ ~0.5 ~ {Duration:2,Tags:["bullet","bullet_new","grenade"]}

execute at @e[tag=bullet_new,limit=1,sort=nearest] run tp @e[tag=bullet_new,limit=1,sort=nearest] ~ ~ ~ facing entity @s

#sign name
scoreboard players operation @e[tag=bullet_new,limit=1,sort=nearest] UID = @s UID

#damage
execute as @e[tag=bullet_new,limit=1,sort=nearest] run scoreboard players set @s damage 11

#msg
#execute store result score v10 V run data get entity @s Rotation[0] 1000000
#execute store result score v11 V run data get entity @s Rotation[1] 1000000
execute store result entity @e[tag=bullet_new,limit=1,sort=nearest] Rotation[0] float 0.000001 run data get entity @s Rotation[0] 1000000
execute store result entity @e[tag=bullet_new,limit=1,sort=nearest] Rotation[1] float 0.000001 run data get entity @s Rotation[1] 1000000

#score spread
#scoreboard players set @e[tag=bullet_new,limit=1,sort=nearest] spread 5
#execute as @e[tag=bullet_new,limit=1,sort=nearest] at @s run function gun:classes/gun/spread/spread

execute as @e[tag=bullet_new,limit=1,sort=nearest] at @s run function gun:classes/gun/fire

#execute at @e[tag=bullet_new,limit=1,sort=nearest] run tp @e[tag=bullet_new,limit=1,sort=nearest] ~ ~ ~ facing ~ ~5 ~


#update bullet status
tag @e[tag=bullet_new,limit=1,sort=nearest] add bullet_fired

tag @e[tag=bullet_new,limit=1,sort=nearest] remove bullet_new





