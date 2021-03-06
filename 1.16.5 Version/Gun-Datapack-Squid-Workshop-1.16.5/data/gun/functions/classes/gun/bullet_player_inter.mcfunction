#/from MGS_2.0.1 gun mod/

#bullet

#execute if score v15 V matches 1 run particle block cobweb ~ ~ ~ 0 0 0 1 1
execute if entity @s[tag=bullet] if block ~ ~ ~ #gun:glassy run playsound minecraft:block.glass.break block @p ~ ~ ~ 3 2
execute if entity @s[tag=bullet] if block ~ ~ ~ #gun:glassy run particle block cobweb ~ ~ ~ 0.2 0.2 0.2 10 12 force

#water
execute if entity @s[tag=bullet,tag=!grenade] if block ~ ~ ~ minecraft:water run playsound minecraft:gun/hit/water1 block @a ~ ~ ~ 1 1
execute if entity @s[tag=bullet,tag=!grenade] if block ~ ~ ~ minecraft:water run particle minecraft:splash ~ ~0.5 ~ 0 0.2 0 1 30

#lava
execute if entity @s[tag=bullet,tag=!grenade] if block ~ ~ ~ minecraft:lava run playsound minecraft:gun/hit/water1 block @a ~ ~ ~ 1 0.5
execute if entity @s[tag=bullet,tag=!grenade] if block ~ ~ ~ minecraft:lava run particle minecraft:lava ~ ~0.5 ~ 0 0.2 0 0.01 1

#coral
execute if entity @s[tag=bullet,tag=!grenade] if block ~ ~ ~ #minecraft:coral_blocks run playsound minecraft:block.slime_block.break ambient @a ~ ~ ~ 1 1

#execute if entity @s[tag=bullet] if score v15 V matches 1 unless block ~ ~ ~ #gun:special_sound run playsound minecraft:block.slime_block.break ambient @s ~ ~ ~ 1 1
execute if entity @s[tag=bullet,tag=!grenade] if score v15 V matches 1 run playsound minecraft:block.slime_block.break ambient @s ~ ~ ~ 1 1
#execute if entity @s[tag=bullet] if score v15 V matches 1 run say soft

#solid
execute if entity @s[tag=bullet,tag=!grenade] if score v15 V matches 2 run playsound minecraft:block.sand.hit ambient @a ~ ~ ~ 3 2
execute if entity @s[tag=bullet,tag=!grenade] positioned ^ ^ ^1 unless block ~ ~ ~ air run function gun:classes/gun/solid_sound
#execute if entity @s[tag=bullet] if score v15 V matches 1 run say solid

#fly by
execute if entity @s[tag=bullet] positioned ~ ~-1.7 ~ as @a[distance=0..1.5,tag=!own] run playsound minecraft:gun/fly/bullet01 ambient @s ~ ~ ~ 0.6

#laser
execute if entity @s[tag=laser] if score v15 V matches 2 run playsound minecraft:block.fire.ambient ambient @a ~ ~ ~ 3 1

execute if entity @s[tag=laser] if score v15 V matches 2 run playsound minecraft:block.fire.extinguish ambient @a ~ ~ ~ 0.3 2


#hitbox
execute if entity @s[tag=!reflecting] run execute positioned ~ ~-0.975 ~ positioned ^ ^ ^0.5 as @e[tag=lp,distance=0..1.14,tag=!hit,tag=!own,nbt={Age:2}] run function gun:classes/gun/hitbox_p

execute if entity @s[tag=grenade,tag=!reflecting] positioned ~ ~-0.975 ~ positioned ^ ^ ^0.5 as @e[tag=lp,distance=0..1.14,tag=!hit,nbt={Age:2}] run function gun:classes/gun/hitbox_p

execute if entity @s[tag=turret,tag=!reflecting] positioned ~ ~-0.975 ~ positioned ^ ^ ^0.5 as @e[tag=lp,distance=0..1.14,tag=!hit,nbt={Age:2}] run function gun:classes/gun/hitbox_p
