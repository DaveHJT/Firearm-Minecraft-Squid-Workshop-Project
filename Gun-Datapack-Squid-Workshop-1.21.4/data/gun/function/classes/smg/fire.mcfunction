#aimbot hack
tag @s add me
execute if score hack gun_settings matches 1 if score @s aimbot matches 1 run tp @s ~ ~ ~ facing entity @p[tag=!me]
tag @s remove me


#effects: sound, muzzle
$function gun:classes/$(key)/fire/effects/$(mode)


#summon bullet
execute anchored eyes run summon minecraft:area_effect_cloud ^ ^ ^0.4 {Duration:30,Tags:["bullet","b_rifle","bullet_new","slow"]}
execute store result entity @e[tag=bullet_new,limit=1,sort=nearest] Rotation[0] float 0.000001 run data get entity @s Rotation[0] 1000000
execute store result entity @e[tag=bullet_new,limit=1,sort=nearest] Rotation[1] float 0.000001 run data get entity @s Rotation[1] 1000000

#sign name
scoreboard players operation @e[tag=bullet_new,limit=1,sort=nearest] UID = @s UID

#set damage
$function gun:classes/$(key)/fire/set_damage/$(mode)

#recoil bullet
$function gun:classes/$(key)/fire/recoil/$(mode)

#spread bullet
scoreboard players set @s spread 2
execute if entity @s[scores={gunjump_bool=1..}] run scoreboard players add @s spread 3
execute if entity @s[scores={shift_bool=1..}] run scoreboard players remove @s spread 1
execute if entity @s[scores={recoil=3..}] run scoreboard players add @s spread 1
scoreboard players operation @e[tag=bullet_new,limit=1,sort=nearest] spread = @s spread
execute as @e[tag=bullet_new,limit=1,sort=nearest] at @s run function gun:classes/gun/spread/spread

#fire
execute as @e[tag=bullet_new,limit=1,sort=nearest] at @s run function gun:classes/gun/fire

#update bullet status
tag @e[tag=bullet_new,limit=1,sort=nearest] add bullet_fired
tag @e[tag=bullet_new,limit=1,sort=nearest] remove bullet_new

#cooldown
execute if entity @s[scores={carotClik_bool=1..}] run scoreboard players add @s cooldown 3

#remove ammo
scoreboard players remove @s b_smg 1

#score rocoil
scoreboard players add @s recoil 1
scoreboard players set @s r_cooldown 5