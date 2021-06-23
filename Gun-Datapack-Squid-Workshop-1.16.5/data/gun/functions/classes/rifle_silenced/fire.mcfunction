
#summon bullet and face player
summon minecraft:area_effect_cloud ^ ^ ^0.4 {Duration:20,Tags:["bullet","b_rifle","bullet_new"]}

#execute anchored eyes positioned ^ ^-1 ^1 run tp @e[tag=bullet_new,limit=1,sort=nearest] ~ ~ ~ facing entity @s

#execute anchored eyes positioned ^ ^-1 ^1 run tp @e[tag=bullet_new,limit=1,sort=nearest] ~ ~ ~ 

#aimbot hack
tag @s add me
execute if score hack gun_settings matches 1 if score @s aimbot matches 1 run tp @s ~ ~ ~ facing entity @p[tag=!me]
tag @s remove me


execute at @e[tag=bullet_new,limit=1,sort=nearest] run tp @e[tag=bullet_new,limit=1,sort=nearest] ~ ~ ~ facing entity @s

execute as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.0 ~-1

execute if entity @s[scores={shift=0}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~1.6 ~

execute if entity @s[scores={shift=1..}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~1.25 ~


#sign name
scoreboard players operation @e[tag=bullet_new,limit=1,sort=nearest] UID = @s UID

#sound & effects
playsound minecraft:gun/m4a1/m4a1_silencer_01 player @a ~ ~ ~ 0.5 1

# fire supressed

#damage
execute as @e[tag=bullet_new,limit=1,sort=nearest] run scoreboard players set @s damage 4

#msg
#execute store result score v10 V run data get entity @s Rotation[0] 1000000
#execute store result score v11 V run data get entity @s Rotation[1] 1000000
execute store result entity @e[tag=bullet_new,limit=1,sort=nearest] Rotation[0] float 0.000001 run data get entity @s Rotation[0] 1000000
execute store result entity @e[tag=bullet_new,limit=1,sort=nearest] Rotation[1] float 0.000001 run data get entity @s Rotation[1] 1000000

#score spread
scoreboard players set @s spread 2
execute if entity @s[scores={walk=1..}] run scoreboard players add @s spread 1
execute if entity @s[scores={sprint=1..}] run scoreboard players add @s spread 2
execute if entity @s[scores={jump=1..}] run scoreboard players add @s spread 3
execute if entity @s[scores={shift=1..}] run scoreboard players remove @s spread 1


#recoil
execute if entity @s[scores={recoil=2..3}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.2 ~-0.3
execute if entity @s[scores={recoil=4..5}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.4 ~-0.6
execute if entity @s[scores={recoil=6..7}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.9 ~-1.2
execute if entity @s[scores={recoil=6..}] run scoreboard players add @s spread 1
execute if entity @s[scores={recoil=8..9}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~1.2 ~-2.0
execute if entity @s[scores={recoil=10..}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.8 ~-3.5



#cooldown
scoreboard players add @s cooldown 2

#remove ammo
scoreboard players remove @s b_rifle 1

#score rocoil
scoreboard players add @s recoil 1
scoreboard players set @s r_cooldown 6


#scoreboard players set @s spread 3

scoreboard players operation @e[tag=bullet_new,limit=1,sort=nearest] spread = @s spread


#spread
execute as @e[tag=bullet_new,limit=1,sort=nearest] at @s run function gun:classes/gun/spread/spread

execute as @e[tag=bullet_new,limit=1,sort=nearest] at @s run function gun:classes/gun/fire

#update bullet status
tag @e[tag=bullet_new,limit=1,sort=nearest] add bullet_fired

tag @e[tag=bullet_new,limit=1,sort=nearest] remove bullet_new

