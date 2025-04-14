#aimbot hack
tag @s add me
execute if score hack gun_settings matches 1 if score @s aimbot matches 1 run tp @s ~ ~ ~ facing entity @p[tag=!me]
tag @s remove me


#effects: sound, muzzle
$function gun:classes/$(key)/fire/effects/$(mode)


#summon bullet
$function gun:classes/$(key)/fire/summon_bullet/$(mode)

#sign name
scoreboard players operation @e[tag=bullet_new,limit=1,sort=nearest] UID = @s UID

#set damage
execute as @e[tag=bullet_new,limit=1,sort=nearest] run scoreboard players set @s damage 50

#recoil bullet
execute if entity @s[scores={recoil=2..3}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.2 ~-0.5
execute if entity @s[scores={recoil=4..5}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.4 ~-0.7
execute if entity @s[scores={recoil=6..7}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.9 ~-1.5
execute if entity @s[scores={recoil=8..9}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-0.2 ~-2.3
execute if entity @s[scores={recoil=10..}] as @e[tag=bullet_new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.8 ~-4

#spread bullet
scoreboard players set @s spread 2
execute if entity @s[scores={walk_bool=1..}] run scoreboard players add @s spread 3
execute if entity @s[scores={sprint_bool=1..}] run scoreboard players add @s spread 3
execute if entity @s[scores={gunJump_bool=1..}] run scoreboard players add @s spread 3
execute if entity @s[scores={shift_bool=1..}] run scoreboard players remove @s spread 1
execute if entity @s[scores={recoil=6..}] run scoreboard players add @s spread 1
scoreboard players operation @e[tag=bullet_new,limit=1,sort=nearest] spread = @s spread
execute as @e[tag=bullet_new,limit=1,sort=nearest] at @s run function gun:classes/gun/spread

#fire
execute as @e[tag=bullet_new,limit=1,sort=nearest] at @s run function gun:classes/gun/fire

#update bullet status
tag @e[tag=bullet_new,limit=1,sort=nearest] add bullet_fired
tag @e[tag=bullet_new,limit=1,sort=nearest] remove bullet_new

#cooldown
$function gun:classes/$(key)/fire/cooldown/$(mode)

#score rocoil
scoreboard players add @s recoil 40
scoreboard players set @s r_cooldown 6