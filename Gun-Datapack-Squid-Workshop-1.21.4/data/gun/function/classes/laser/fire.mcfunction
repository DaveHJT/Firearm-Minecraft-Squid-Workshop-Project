#aimbot hack
tag @s add me
execute if score hack gun_settings matches 1 if score @s aimbot matches 1 run tp @s ~ ~ ~ facing entity @p[tag=!me]
tag @s remove me


#effects
#sound
playsound minecraft:block.beacon.ambient player @a ~ ~ ~ 2 2
playsound minecraft:block.beehive.work player @a ~ ~ ~ 2 0.5


#summon bullet
execute anchored eyes run summon minecraft:area_effect_cloud ^ ^ ^0.4 {Duration:20,Tags:["laser","b_sniper","bullet_new"]}
data modify entity @e[tag=bullet_new,limit=1,sort=nearest] Rotation[0] set from entity @s Rotation[0]
data modify entity @e[tag=bullet_new,limit=1,sort=nearest] Rotation[1] set from entity @s Rotation[1]

#sign name
scoreboard players operation @e[tag=bullet_new,limit=1,sort=nearest] UID = @s UID

#set damage
execute as @e[tag=bullet_new,limit=1,sort=nearest] run scoreboard players set @s damage 2

#spread bullet
scoreboard players set @s spread 1
execute if entity @s[scores={walk_bool=1..}] run scoreboard players add @s spread 2
execute if entity @s[scores={sprint_bool=1..}] run scoreboard players add @s spread 3
execute if entity @s[scores={gunJump_bool=1..}] run scoreboard players add @s spread 4
execute if entity @s[scores={shift_bool=1..}] run scoreboard players remove @s spread 1
scoreboard players operation @e[tag=bullet_new,limit=1,sort=nearest] spread = @s spread
execute as @e[tag=bullet_new,limit=1,sort=nearest] at @s run function gun:classes/gun/spread

#fire
execute as @e[tag=bullet_new,limit=1,sort=nearest] at @s run function gun:classes/gun/fire

#update bullet status
tag @e[tag=bullet_new,limit=1,sort=nearest] add bullet_fired
tag @e[tag=bullet_new,limit=1,sort=nearest] remove bullet_new

#cooldown
execute if entity @s[scores={carotClik_bool=1..}] run scoreboard players add @s cooldown 3

#remove ammo
execute if entity @s[scores={carotClik_bool=1..}] run scoreboard players remove @s b_energy 1

#score recoil
scoreboard players set @s r_cooldown 3