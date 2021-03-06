#/from MGS_2.0.1 gun mod/
scoreboard players set v15 V 0
scoreboard players set v13 V 10
execute if block ~ ~ ~ #gun:air if block ~ ~-1 ~ #gun:air if block ~ ~1 ~ #gun:air if block ~1 ~ ~ #gun:air if block ~-1 ~ ~ #gun:air if block ~ ~ ~1 #gun:air if block ~ ~ ~-1 #gun:air run scoreboard players set v15 V 3
execute if score v15 V matches 0 if block ~ ~ ~ #gun:solid run scoreboard players set v15 V 2
#shield
execute if score v15 V matches 2 run scoreboard players set v13 V 0

execute if score v15 V matches 0 run function gun:classes/gun/collide
execute if score v15 V matches 1 run scoreboard players remove @s damage 1
execute if score v15 V matches 2 positioned ^ ^ ^1 run function gun:classes/gun/solid_hit
execute if entity @s[scores={damage=..0}] run scoreboard players set v0 V 0

#hit effect
execute if entity @s[tag=bullet] if score v15 V matches 2 run particle minecraft:item gunpowder ~ ~ ~ 0.1 0.1 0.1 0.3 8 force
execute if entity @s[tag=bullet] if score v15 V matches 2 run particle minecraft:white_ash ~ ~ ~ 0.05 0.05 0.05 10 20
execute if entity @s[tag=bullet] if score v15 V matches 2 run particle minecraft:dust 0 0 0 1 ~ ~ ~ 0.05 0.05 0.05 1 1 force
execute if score v15 V matches 2 run particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0.3 2 force


execute if entity @s[tag=laser] if score v15 V matches 2 run particle minecraft:lava ~ ~ ~ 0.1 0.1 0.1 0.3 1 force

#execute if score v15 V matches 2 run particle minecraft:poof ~ ~ ~ 0.1 0.1 0.1 0.01 1

#execute if score v15 V matches 2 run playsound minecraft:block.sand.hit ambient @a ~ ~ ~ 3 2


#tracing
execute if entity @s[tag=bullet] if score tracer gun_settings matches 1 run particle minecraft:dust 1 0.8 0 0.07 ~ ~ ~ 0 0 0 1 1 force
execute if entity @s[tag=bullet] if score tracer gun_settings matches 2 run particle minecraft:composter ~ ~ ~ 0 0 0 1 1 force
execute if entity @s[tag=bullet,tag=!grenade] if score tracer gun_settings matches 2 run particle minecraft:dripping_water ~ ~-0.2 ~ 0 0 0 0.0001 1 force
execute if entity @s[tag=bullet] if score tracer gun_settings matches 3 run particle minecraft:dripping_lava ~ ~-0.2 ~ 0 0 0 0.0001 1 force
#execute if entity @s[tag=laser] run particle minecraft:landing_lava ~ ~-0.2 ~ 0 0 0 0.0001 1
execute if entity @s[tag=laser] run particle minecraft:dust 1 0 0 0.5 ~ ~-0.15 ~ 0 0 0 0.0001 1 force
execute if entity @s[tag=cannon] run particle minecraft:poof ~ ~ ~ 0 0 0 0.0001 1 force
#reflected
execute if entity @s[tag=reflected] run particle minecraft:dripping_lava ~ ~-0.2 ~ 0 0 0 0.0001 1 force
#arrow light
execute if entity @s[tag=light] run particle minecraft:dripping_lava ~ ~-0.15 ~ 0 0 0 0.0001 1 force
execute if entity @s[tag=light] run tp @e[tag=arrow,tag=light,limit=1,sort=nearest] ^ ^ ^-0.1 facing entity @s

#execute if entity @s[tag=grenade] run particle minecraft:dripping_lava ~ ~-0.2 ~ 0 0 0 0.0001 1
#execute if entity @s[tag=grenade] run particle minecraft:smoke ~ ~-0.2 ~ 0 0 0 0.0001 1
#execute if entity @s[tag=grenade] run particle minecraft:falling_dust granite ~ ~-0.2 ~ 0 0 0 0.0001 1
#execute if entity @s[tag=grenade] run particle minecraft:block bricks ~ ~-0.2 ~ 0 0 0 1 1
#execute if entity @s[tag=grenade,tag=!water] run particle minecraft:cloud ~ ~-0.2 ~ 0 0 0 0.0001 1
execute if entity @s[tag=grenade,tag=!water,tag=!lava] run particle minecraft:falling_dust quartz_block ~ ~ ~ 0 0 0 1 1 force
execute if entity @s[tag=grenade,tag=water,tag=!lava] run particle minecraft:splash ~ ~ ~ 0 0 0 0.0001 1 force
execute if entity @s[tag=grenade,tag=lava] run particle minecraft:falling_lava ~ ~ ~ 0 0 0 0.0001 1 force


#execute if entity @p[distance=..] run 
execute positioned ~ ~-0.975 ~ positioned ^ ^ ^0.5 as @e[distance=0..4,tag=shield] unless score @s UID = @e[tag=cbp,limit=1,sort=nearest] UID run function gun:classes/gun/hitbox
function gun:classes/gun/bullet_player_inter
execute positioned ~ ~-0.975 ~ positioned ^ ^ ^0.5 as @e[distance=0..4,type=#gun:supported,tag=!hit] run function gun:classes/gun/hitbox
execute as @e[type=giant,tag=!hit,distance=0..16] run function gun:classes/gun/hitbox
execute if entity @s[tag=reflecting] run function gun:classes/gun/shield_hit

#light hit
execute if entity @s[tag=light,tag=hit] run kill @s
execute if entity @s[tag=light,tag=hit] run scoreboard players set v0 V 0


scoreboard players operation v4 V += v1 V
scoreboard players operation v5 V += v2 V
scoreboard players operation v6 V += v3 V

# hit on entity
execute if score blood gun_settings matches 2 if entity @s[tag=bullet] if entity @e[distance=0..3,tag=hit,tag=!special] run particle minecraft:item redstone ~ ~ ~ 0.2 0.2 0.2 0.1 30 force
execute if score blood gun_settings matches 1 if entity @s[tag=bullet] if entity @e[distance=0..3,tag=hit,tag=!special] run particle minecraft:item redstone ~ ~ ~ 0.2 0.2 0.2 0.1 5 force
execute if entity @s[tag=bullet] if entity @e[distance=0..3,tag=hit,tag=special] run particle minecraft:item gunpowder ~ ~ ~ 0.1 0.1 0.1 0.3 8 force
execute if entity @s[tag=laser] if entity @e[distance=0..3,tag=hit] run particle minecraft:lava ~ ~ ~ 0.2 0.2 0.2 0.1 1 force
execute if score blood gun_settings matches 2 if entity @s[tag=cannon] if entity @e[distance=0..3,tag=hit,tag=!special] run particle minecraft:item redstone ~ ~ ~ 0.2 0.2 0.2 0.1 70 force
execute if score blood gun_settings matches 1 if entity @s[tag=cannon] if entity @e[distance=0..3,tag=hit,tag=!special] run particle minecraft:item redstone ~ ~ ~ 0.2 0.2 0.2 0.1 5 force


#interaction with turret
execute if entity @e[tag=turret_effect,distance=..0.6] unless score @e[tag=turret_effect,distance=..0.6,limit=1,sort=nearest] UID = @s UID run tag @e[tag=turret_effect,distance=..0.6,limit=1,sort=nearest] add destruct

# blocked
execute if score v0 V matches 0 run tag @s add blocked
tag @s[scores={damage=..0}] add blocked


# hit mark
execute if score hit_mark gun_settings matches 1 if entity @s[tag=blocked] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["hit_mark"],Duration:200}
execute if score hit_mark gun_settings matches 1 if entity @s[tag=hit] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["hit_mark"],Duration:200}
execute if score hit_mark gun_settings matches 1 if entity @s[tag=penetrate] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["hit_mark"],Duration:200}

# cannon
tag @s[tag=cannon,tag=hit] add blocked
tag @s[tag=cannon,tag=blocked] add grenade_effect
execute if entity @s[tag=grenade_effect] run playsound minecraft:gun/thrower/he_bounce-1 player @a ~ ~ ~ 2 0.6
scoreboard players add @s[tag=grenade_effect] throwable_life 1000
execute if entity @s[tag=grenade_effect] run function throwable:classes/grenade/effect

tag @s[tag=penetrate] remove penetrate