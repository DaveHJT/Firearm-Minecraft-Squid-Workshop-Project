#/from MGS_2.0.1 gun mod/
tag @s add cbp
execute as @a if score @s UID = @e[tag=cbp,limit=1] UID run tag @s add own
execute as @e[tag=lp,nbt={Age:2}] if score @s UID = @e[tag=cbp,limit=1] UID run tag @s add own

scoreboard players set v0 V 1
scoreboard players operation v1 V = @s dx
scoreboard players operation v2 V = @s dy
scoreboard players operation v3 V = @s dz
execute store result score v4 V run data get entity @s Pos[0] 1000
execute store result score v5 V run data get entity @s Pos[1] 1000
execute store result score v6 V run data get entity @s Pos[2] 1000
execute if score v0 V matches 1.. run function gun:classes/gun/bph
execute if score v0 V matches 1.. positioned ^ ^ ^1 run function gun:classes/gun/bph
execute if score v0 V matches 1.. positioned ^ ^ ^2 run function gun:classes/gun/bph
execute if score v0 V matches 1.. positioned ^ ^ ^3 run function gun:classes/gun/bph
execute if score v0 V matches 1.. positioned ^ ^ ^4 run function gun:classes/gun/bph
execute if score v0 V matches 1.. positioned ^ ^ ^5 run function gun:classes/gun/bph
execute if score v0 V matches 1.. positioned ^ ^ ^6 run function gun:classes/gun/bph
execute if score v0 V matches 1.. positioned ^ ^ ^7 run function gun:classes/gun/bph
execute if score v0 V matches 1.. positioned ^ ^ ^8 run function gun:classes/gun/bph
execute if score v0 V matches 1.. positioned ^ ^ ^9 run function gun:classes/gun/bph
execute if score v0 V matches 1.. positioned ^ ^ ^10 run function gun:classes/gun/bph
execute if score v0 V matches 1.. positioned ^ ^ ^11 run function gun:classes/gun/bph
execute if score v0 V matches 1.. positioned ^ ^ ^12 run function gun:classes/gun/bph
execute if score v0 V matches 1.. positioned ^ ^ ^13 run function gun:classes/gun/bph
execute if score v0 V matches 1.. positioned ^ ^ ^14 run function gun:classes/gun/bph
execute if score v0 V matches 1.. if entity @s[tag=slow] run scoreboard players set v0 V -1
execute if score v0 V matches 1.. positioned ^ ^ ^15 run function gun:classes/gun/bph
execute if score v0 V matches 1.. positioned ^ ^ ^16 run function gun:classes/gun/bph
execute if score v0 V matches 1.. positioned ^ ^ ^17 run function gun:classes/gun/bph
execute if score v0 V matches 1.. positioned ^ ^ ^18 run function gun:classes/gun/bph
execute if score v0 V matches 1.. positioned ^ ^ ^19 run function gun:classes/gun/bph
execute if score v0 V matches 1.. positioned ^ ^ ^20 run function gun:classes/gun/bph
execute if score v0 V matches 1.. positioned ^ ^ ^21 run function gun:classes/gun/bph
execute if score v0 V matches 1.. positioned ^ ^ ^22 run function gun:classes/gun/bph
execute if score v0 V matches 1.. positioned ^ ^ ^23 run function gun:classes/gun/bph
execute if score v0 V matches 1.. positioned ^ ^ ^24 run function gun:classes/gun/bph
execute if score v0 V matches 1.. positioned ^ ^ ^25 run function gun:classes/gun/bph
execute if score v0 V matches 1.. positioned ^ ^ ^26 run function gun:classes/gun/bph
execute if score v0 V matches 1.. positioned ^ ^ ^27 run function gun:classes/gun/bph
execute if score v0 V matches 1.. positioned ^ ^ ^28 run function gun:classes/gun/bph
execute if score v0 V matches 1.. positioned ^ ^ ^29 run function gun:classes/gun/bph
scoreboard players remove @s[scores={damage=1..},tag=bullet] damage 1
execute if score v0 V matches 0 run tag @s add blocked
tag @s[scores={damage=..0}] add blocked

tag @e[tag=reflecting] remove blocked

tag @e[tag=own] remove own
tag @e[tag=hit] remove hit
tag @e[tag=cbp] remove cbp
kill @s[tag=blocked]
kill @s[tag=light,tag=hit]
tp @s[tag=slow,tag=!reflecting] ^ ^ ^15.0
tp @s[tag=!slow,tag=!reflecting] ^ ^ ^30.0
execute if entity @s[tag=reflecting] at @s run function gun:classes/gun/reflect
tag @e[tag=reflecting] remove reflecting

