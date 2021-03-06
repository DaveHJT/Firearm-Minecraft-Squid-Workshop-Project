tag @s add light
tag @s add arrow

execute at @p run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:20,Tags:["light","bullet_new","slow"]}
scoreboard players operation @e[tag=bullet_new,limit=1,sort=nearest] UID = @s UID
scoreboard players operation @s UID = @p UID

execute at @e[tag=bullet_new,limit=1,sort=nearest] run tp @e[tag=bullet_new,limit=1,sort=nearest] ~ ~ ~ facing entity @p

execute as @p[scores={shift_bool=0}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~1.6 ~

execute as @p[scores={shift_bool=1}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~-0.35 ~
execute as @p[scores={shift_bool=1}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ^ ^ ^0.5

#damage
execute as @e[tag=bullet_new,limit=1,sort=nearest] run scoreboard players set @s damage 5

execute store result entity @e[tag=bullet_new,limit=1,sort=nearest] Rotation[0] float 0.000001 run data get entity @p Rotation[0] 1000000
execute store result entity @e[tag=bullet_new,limit=1,sort=nearest] Rotation[1] float 0.000001 run data get entity @p Rotation[1] 1000000

#score spread
scoreboard players set @s spread 1
execute if entity @p[scores={walk=1..}] run scoreboard players add @s spread 1
execute if entity @p[scores={sprint=1..}] run scoreboard players add @s spread 1
execute if entity @p[scores={jump=1..}] run scoreboard players add @s spread 1
execute if entity @p[scores={shift=1..}] run scoreboard players remove @s spread 1
scoreboard players set @s[scores={role=7}] spread 0

execute if entity @s[nbt={crit:0b}] run scoreboard players add @s spread 3

scoreboard players operation @e[tag=bullet_new,limit=1,sort=nearest] spread = @s spread
execute as @e[tag=bullet_new,limit=1,sort=nearest] at @s run function gun:classes/gun/spread/spread

execute as @e[tag=bullet_new,limit=1,sort=nearest] at @s run function gun:classes/gun/fire

#update bullet status
tag @e[tag=bullet_new,limit=1,sort=nearest] add bullet_fired

tag @e[tag=bullet_new,limit=1,sort=nearest] remove bullet_new
