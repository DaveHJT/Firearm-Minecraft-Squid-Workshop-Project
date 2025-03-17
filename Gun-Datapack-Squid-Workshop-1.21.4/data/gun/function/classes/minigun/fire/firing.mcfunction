#aimbot hack
tag @s add me
execute if score hack gun_settings matches 1 if score @s aimbot matches 1 run tp @s ~ ~ ~ facing entity @p[tag=!me]
tag @s remove me


#effects
#sound
playsound minecraft:gun/minigun/minigun player @a ^-0.3 ^ ^0.5 2 1
execute as @a[distance=31..] run playsound minecraft:gun/m4a1/m4a1_distant_01 player @s ~ ~ ~ 10 1

#muzzle: own view
execute if entity @s[scores={shift_bool=0}] positioned ~ ~1.6 ~ run particle minecraft:soul_fire_flame ^-0.15 ^ ^0.5 0.01 0.01 0.01 100 1 force @s
execute if entity @s[scores={shift_bool=1..}] positioned ~ ~1.15 ~ run particle minecraft:soul_fire_flame ^ ^-0.2 ^1.5 0.01 0.01 0.01 100 1 force @s

#muzzle: others view
tag @s add display_fire
execute if entity @s[scores={shift_bool=0}] positioned ~ ~1.6 ~ run particle minecraft:soul_fire_flame ^-0.2 ^-0.4 ^1 0.01 0.01 0.01 100 1 force @a[tag=!display_fire]
execute if entity @s[scores={shift_bool=1..}] positioned ~ ~1.15 ~ run particle minecraft:soul_fire_flame ^-0.2 ^-0.25 ^1 0.01 0.01 0.01 100 1 force @a[tag=!display_fire]
tag @s remove display_fire


#summon bullet
execute anchored eyes run summon minecraft:area_effect_cloud ^ ^ ^0.4 {Duration:20,Tags:["bullet","b_mini","bullet_new"]}
execute store result entity @e[tag=bullet_new,limit=1,sort=nearest] Rotation[0] float 0.000001 run data get entity @s Rotation[0] 1000000
execute store result entity @e[tag=bullet_new,limit=1,sort=nearest] Rotation[1] float 0.000001 run data get entity @s Rotation[1] 1000000

#sign name
scoreboard players operation @e[tag=bullet_new,limit=1,sort=nearest] UID = @s UID

#set damage
execute as @e[tag=bullet_new,limit=1,sort=nearest] run scoreboard players set @s damage 6

#spread bullet
scoreboard players set @s spread 3
execute if entity @s[scores={walk_bool=1..}] run scoreboard players add @s spread 1
execute if entity @s[scores={sprint_bool=1..}] run scoreboard players add @s spread 2
execute if entity @s[scores={jump=1..}] run scoreboard players add @s spread 3
execute if entity @s[scores={shift_bool=1..}] run scoreboard players remove @s spread 1
scoreboard players operation @e[tag=bullet_new,limit=1,sort=nearest] spread = @s spread
function gun:classes/gun/quick_random
execute as @e[tag=bullet_new,limit=1,sort=nearest] at @s run function gun:classes/gun/spread/spread

#fire
execute as @e[tag=bullet_new,limit=1,sort=nearest] at @s run function gun:classes/gun/fire

#update bullet status
tag @e[tag=bullet_new,limit=1,sort=nearest] add bullet_fired
tag @e[tag=bullet_new,limit=1,sort=nearest] remove bullet_new

#cooldown
execute if entity @s[scores={carotClik_bool=1..}] run scoreboard players set @s cooldown 10

#remove ammo
scoreboard players remove @s b_mini 1

#score rocoil
scoreboard players add @s recoil 1