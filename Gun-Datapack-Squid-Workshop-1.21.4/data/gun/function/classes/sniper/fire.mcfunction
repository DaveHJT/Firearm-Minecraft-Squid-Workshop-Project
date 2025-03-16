#aimbot hack
tag @s add me
execute if score hack gun_settings matches 1 if score @s aimbot matches 1 run tp @s ~ ~ ~ facing entity @p[tag=!me]
tag @s remove me


#effects
#sound
playsound minecraft:gun/m4a1/m4a1_01 player @a ~ ~ ~ 2 1
execute as @a[distance=31..] run playsound minecraft:gun/m4a1/awp_distant player @s ~ ~ ~ 10 1

#muzzle: own view
execute if entity @s[scores={shift=0}] positioned ~ ~1.6 ~ run particle minecraft:flame ^-0.1 ^ ^0.7 0.01 0.01 0.01 100 1 force @s

#muzzle: others view
tag @s add display_fire
execute if entity @s[scores={shift=0}] positioned ~ ~1.6 ~ run particle minecraft:flame ^-0.2 ^-0.4 ^1 0.01 0.01 0.01 100 1 force @a[tag=!display_fire]
execute if entity @s[scores={shift=1..}] positioned ~ ~1.3 ~ run particle minecraft:flame ^-0.2 ^-0.4 ^1 0.01 0.01 0.01 100 1 force @a[tag=!display_fire]
tag @s remove display_fire


#summon bullet
execute anchored eyes run summon minecraft:area_effect_cloud ^ ^ ^0.4 {Duration:30,Tags:["bullet","b_sniper","bullet_new"]}
execute store result entity @e[tag=bullet_new,limit=1,sort=nearest] Rotation[0] float 0.000001 run data get entity @s Rotation[0] 1000000
execute store result entity @e[tag=bullet_new,limit=1,sort=nearest] Rotation[1] float 0.000001 run data get entity @s Rotation[1] 1000000

#sign name
scoreboard players operation @e[tag=bullet_new,limit=1,sort=nearest] UID = @s UID

#set damage
execute as @e[tag=bullet_new,limit=1,sort=nearest] run scoreboard players set @s damage 22

#recoil bullet
execute if entity @s[scores={recoil=3..5}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.2 ~-0.5
execute if entity @s[scores={recoil=6..8}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.4 ~-0.7
execute if entity @s[scores={recoil=9..13}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.7 ~-1.5
execute if entity @s[scores={recoil=14..17}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.0 ~-2.3
execute if entity @s[scores={recoil=18..}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.8 ~-4

#spread bullet
scoreboard players set @s spread 4
execute if entity @s[scores={walk_bool=1..}] run scoreboard players add @s spread 0
execute if entity @s[scores={sprint_bool=1..}] run scoreboard players add @s spread 0
execute if entity @s[scores={jump=1..}] run scoreboard players add @s spread 1
execute if entity @s[scores={shift=1..}] run scoreboard players remove @s spread 4
scoreboard players operation @e[tag=bullet_new,limit=1,sort=nearest] spread = @s spread
execute as @e[tag=bullet_new,limit=1,sort=nearest] at @s run function gun:classes/gun/spread/spread

# fire
execute as @e[tag=bullet_new,limit=1,sort=nearest] at @s run function gun:classes/gun/fire

#update bullet status
tag @e[tag=bullet_new,limit=1,sort=nearest] add bullet_fired
tag @e[tag=bullet_new,limit=1,sort=nearest] remove bullet_new

#cooldown
scoreboard players add @s cooldown 25

#remove ammo
scoreboard players remove @s b_sniper 1

#score rocoil
scoreboard players add @s recoil 10
scoreboard players set @s r_cooldown 6