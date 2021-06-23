
#summon bullet and face player
summon minecraft:area_effect_cloud ^-1.5 ^ ^6.2 {Duration:20,Tags:["cannon","bullet_new","bullet","slow"]}


#aimbot hack
execute at @p run summon area_effect_cloud ~ ~-8.7 ~ {Duration:1,Tags:["aim_anchor"]}
tp @s ~ ~ ~ facing entity @e[limit=1,tag=aim_anchor,sort=nearest]
kill @e[tag=aim_anchor]

execute at @e[tag=bullet_new,limit=1,sort=nearest] run tp @e[tag=bullet_new,limit=1,sort=nearest] ~ ~8.7 ~

#giant
#execute as @e[limit=1,type=giant,sort=nearest] at @s positioned ^ ^ ^ positioned ~ ~ ~ run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.1 100 force


#sign name
scoreboard players operation @e[tag=bullet_new,limit=1,sort=nearest] UID = @s UID

#sound & effects
playsound minecraft:gun/awp/awp_distant player @a ~ ~ ~ 1 0.5


execute positioned ~ ~8.7 ~ run particle minecraft:flame ^-1.5 ^ ^6.2 0.1 0.1 0.1 0.1 100 force @a


#damage
execute as @e[tag=bullet_new,limit=1,sort=nearest] run scoreboard players set @s damage 50

#msg
#execute store result score v10 V run data get entity @s Rotation[0] 1000000
#execute store result score v11 V run data get entity @s Rotation[1] 1000000
execute store result entity @e[tag=bullet_new,limit=1,sort=nearest] Rotation[0] float 0.000001 run data get entity @s Rotation[0] 1000000
execute store result entity @e[tag=bullet_new,limit=1,sort=nearest] Rotation[1] float 0.000001 run data get entity @s Rotation[1] 1000000


#score spread
scoreboard players set @s spread 2
execute if entity @s[scores={walk=1..}] run scoreboard players add @s spread 3
execute if entity @s[scores={sprint=1..}] run scoreboard players add @s spread 3
execute if entity @s[scores={jump=1..}] run scoreboard players add @s spread 3
execute if entity @s[scores={shift=1..}] run scoreboard players remove @s spread 1

#recoil

execute if entity @s[scores={recoil=2..3}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.2 ~-0.5
execute if entity @s[scores={recoil=4..5}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.4 ~-0.7
execute if entity @s[scores={recoil=6..7}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.9 ~-1.5
execute if entity @s[scores={recoil=6..}] run scoreboard players add @s spread 1
execute if entity @s[scores={recoil=8..9}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-0.2 ~-2.3
execute if entity @s[scores={recoil=10..}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.8 ~-4

#cooldown
scoreboard players add @s cooldown 40

#remove ammo
#scoreboard players remove @s b_rifle 1

#score rocoil
scoreboard players add @s recoil 40
scoreboard players set @s r_cooldown 6



#scoreboard players set @s spread 3

scoreboard players operation @e[tag=bullet_new,limit=1,sort=nearest] spread = @s spread


#spread
execute as @e[tag=bullet_new,limit=1,sort=nearest] at @s run function gun:classes/gun/spread/spread

execute as @e[tag=bullet_new,limit=1,sort=nearest] at @s run function gun:classes/gun/fire

#update bullet status
tag @e[tag=bullet_new,limit=1,sort=nearest] add bullet_fired

tag @e[tag=bullet_new,limit=1,sort=nearest] remove bullet_new


