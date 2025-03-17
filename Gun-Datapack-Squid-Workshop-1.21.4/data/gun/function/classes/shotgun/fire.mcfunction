#aimbot hack
tag @s add me
execute if score hack gun_settings matches 1 if score @s aimbot matches 1 run tp @s ~ ~ ~ facing entity @p[tag=!me]
tag @s remove me


#effects
#sound
playsound minecraft:gun/shotgun/xm1014-1 player @a ~ ~ ~ 2 1
execute as @a[distance=31..] run playsound minecraft:gun/shotgun/xm1014-1-distant player @s ~ ~ ~ 10 1

#muzzle: own view
execute if entity @s[scores={shift_bool=0}] positioned ~ ~1.6 ~ run particle minecraft:flame ^-0.15 ^ ^0.6 0.01 0.01 0.01 100 1
execute if entity @s[scores={shift_bool=1..}] positioned ~ ~1.3 ~ run particle minecraft:flame ^ ^ ^1 0.01 0.01 0.01 100 1
particle minecraft:poof ^-0.4 ^1.3 ^1.5 0.1 0.1 0.1 0.05 1

#muzzle: others view
tag @s add display_fire
execute if entity @s[scores={shift_bool=0}] positioned ~ ~1.6 ~ run particle minecraft:flame ^-0.2 ^-0.4 ^1 0.01 0.01 0.01 100 1 force @a[tag=!display_fire]
execute if entity @s[scores={shift_bool=1..}] positioned ~ ~1.3 ~ run particle minecraft:flame ^-0.2 ^-0.4 ^1 0.01 0.01 0.01 100 1 force @a[tag=!display_fire]
tag @s remove display_fire


#summon bullet, sign name, set damage
#recoil bullet, spread bullet, fire, update bullet status
$function gun:classes/$(key)/fire/summon_bullet/$(mode)

#cooldown
scoreboard players add @s cooldown 5

#remove ammo
scoreboard players remove @s b_shot 1

#score rocoil
scoreboard players add @s recoil 20
scoreboard players set @s r_cooldown 4