#aimbot hack
tag @s add me
execute if score hack gun_settings matches 1 if score @s aimbot matches 1 run tp @s ~ ~ ~ facing entity @p[tag=!me]
tag @s remove me

#summon bullet and face player
summon minecraft:area_effect_cloud ^ ^ ^0.4 {Duration:10,Tags:["bullet","b_shot","bullet_new","slow"]}

#execute anchored eyes positioned ^ ^-1 ^1 run tp @e[tag=bullet_new,limit=1,sort=nearest] ~ ~ ~ facing entity @s

#execute anchored eyes positioned ^ ^-1 ^1 run tp @e[tag=bullet_new,limit=1,sort=nearest] ~ ~ ~ 



execute at @e[tag=bullet_new,limit=1,sort=nearest] run tp @e[tag=bullet_new,limit=1,sort=nearest] ~ ~ ~ facing entity @s

execute if entity @s[scores={shift=0}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~1.6 ~

execute if entity @s[scores={shift=1..}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~1.25 ~


#sign name
scoreboard players operation @e[tag=bullet_new,limit=1,sort=nearest] UID = @s UID

#sound & effects
playsound minecraft:gun/shotgun/xm1014-1 player @a ~ ~ ~ 2 1
execute as @a[distance=31..] run playsound minecraft:gun/shotgun/xm1014-1-distant player @s ~ ~ ~ 10 1

#own view
execute if entity @s[scores={shift=0}] positioned ~ ~1.6 ~ run particle minecraft:flame ^-0.15 ^ ^0.6 0.01 0.01 0.01 100 1 force @s

execute if entity @s[scores={shift=1..}] positioned ~ ~1.3 ~ run particle minecraft:flame ^ ^ ^1 0.01 0.01 0.01 100 1 force @s

particle minecraft:poof ^-0.4 ^1.3 ^1.5 0.1 0.1 0.1 0.05 1

#others view
tag @s add display_fire
execute if entity @s[scores={shift=0}] positioned ~ ~1.6 ~ run particle minecraft:flame ^-0.2 ^-0.4 ^1 0.01 0.01 0.01 100 1 force @a[tag=!display_fire]
execute if entity @s[scores={shift=1..}] positioned ~ ~1.3 ~ run particle minecraft:flame ^-0.2 ^-0.4 ^1 0.01 0.01 0.01 100 1 force @a[tag=!display_fire]
tag @s remove display_fire

#damage
execute as @e[tag=bullet_new,limit=1,sort=nearest] run scoreboard players set @s damage 17

#msg
#execute store result score v10 V run data get entity @s Rotation[0] 1000000
#execute store result score v11 V run data get entity @s Rotation[1] 1000000
execute store result entity @e[tag=bullet_new,limit=1,sort=nearest] Rotation[0] float 0.000001 run data get entity @s Rotation[0] 1000000
execute store result entity @e[tag=bullet_new,limit=1,sort=nearest] Rotation[1] float 0.000001 run data get entity @s Rotation[1] 1000000




#recoil

execute if entity @s[scores={recoil=3..5}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.2 ~-2
execute if entity @s[scores={recoil=6..8}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.4 ~-3
execute if entity @s[scores={recoil=9..13}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.7 ~-5
execute if entity @s[scores={recoil=14..17}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.0 ~-8
execute if entity @s[scores={recoil=18..}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.8 ~-12

#cooldown
scoreboard players add @s cooldown 5

#remove ammo
scoreboard players remove @s b_shot 1

#score rocoil
scoreboard players add @s recoil 20
scoreboard players set @s r_cooldown 4

#score spread
scoreboard players set @s spread 2
execute if entity @s[scores={walk=1..}] run scoreboard players add @s spread 1
execute if entity @s[scores={sprint=1..}] run scoreboard players add @s spread 2
execute if entity @s[scores={jump=1..}] run scoreboard players add @s spread 3
execute if entity @s[scores={shift=1..}] run scoreboard players remove @s spread 1

#scoreboard players set @s spread 3

scoreboard players operation @e[tag=bullet_new,limit=1,sort=nearest] spread = @s spread


#spread
execute as @e[tag=bullet_new,limit=1,sort=nearest] at @s run function gun:classes/gun/spread/spread

execute as @e[tag=bullet_new,limit=1,sort=nearest] at @s run function gun:classes/gun/fire

#update bullet status
tag @e[tag=bullet_new,limit=1,sort=nearest] add bullet_fired

tag @e[tag=bullet_new,limit=1,sort=nearest] remove bullet_new

