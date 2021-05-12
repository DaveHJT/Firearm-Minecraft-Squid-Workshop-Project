#ID:
#1:grenade
#2:molotov
#3:turret
#4:xirang
#5:template

#throwID
execute as @a[scores={r_cooldown=0}] run scoreboard players set @s throwable 0
execute as @a[nbt={SelectedItem:{tag:{throw:1b}}}] run scoreboard players set @s r_cooldown 10
execute as @a[nbt={SelectedItem:{tag:{grenade:1b}}}] run scoreboard players set @s throwable 1
execute as @a[nbt={SelectedItem:{tag:{molotov:1b}}}] run scoreboard players set @s throwable 2
execute as @a[nbt={SelectedItem:{tag:{turret:1b}}}] run scoreboard players set @s throwable 3
execute as @a[nbt={SelectedItem:{tag:{xirang:1b}}}] run scoreboard players set @s throwable 4

execute as @a[nbt={SelectedItem:{tag:{template:1b}}}] run scoreboard players set @s throwable 5

################throw init#################
#grenade
execute as @a[scores={throw=1..,throwable=1}] at @s as @e[limit=1,sort=nearest,type=snowball] at @s run function throwable:classes/grenade/init

#molotov
execute as @a[scores={throw=1..,throwable=2}] at @s as @e[limit=1,sort=nearest,type=snowball] at @s run function throwable:classes/molotov/init

#turret
execute as @a[scores={throw=1..,throwable=3}] at @s as @e[limit=1,sort=nearest,type=snowball] at @s run function throwable:classes/turret/init

#xirang
execute as @a[scores={throw=1..,throwable=4}] at @s as @e[limit=1,sort=nearest,type=snowball] at @s run function throwable:classes/xirang/init

#template
execute as @a[scores={throw=1..,throwable=5}] at @s as @e[limit=1,sort=nearest,type=snowball] at @s run function throwable:classes/template/init

################throw init#################

#add throwable_life
execute as @e[tag=thrown] run scoreboard players add @s throwable_life 1
execute as @e[tag=effect] run scoreboard players add @s throwable_life 1

#throw physics
execute as @e[tag=thrown] at @s run function throwable:classes/throwable/physics

#trace
#execute as @e[tag=tracer,tag=grenade] at @s run particle minecraft:composter ~ ~ ~ 0 0 0 1 1
execute as @e[tag=tracer,tag=molotov] at @s run particle minecraft:lava ~ ~ ~ 0 0 0 0.001 1

#hit detection
execute as @e[tag=tracer] at @s unless entity @e[distance=..0.1,tag=thrown] run tag @s add hit
################land#################
#grenade
execute as @e[tag=thrown,tag=grenade,scores={throwable_life=70..}] at @s run kill @s
execute as @e[tag=hit,tag=grenade] at @s run function throwable:classes/grenade/land
execute as @e[tag=display] at @s run tp @e[tag=grenade_effect,limit=1,sort=nearest] ~ ~ ~
#molotov
execute as @e[tag=thrown,tag=molotov,scores={throwable_life=70..}] at @s run kill @s
execute as @e[tag=hit,tag=molotov] at @s run function throwable:classes/molotov/land
#turret
execute as @e[tag=hit,tag=turret] at @s run function throwable:classes/turret/land
#xirang
execute as @e[tag=hit,tag=xirang] at @s run function throwable:classes/xirang/land

#template
execute as @e[tag=hit,tag=template] at @s run function throwable:classes/template/land
################land#################

execute as @e[tag=effect] at @s run function throwable:classes/throwable/effect
execute as @e[tag=display] at @s run function throwable:classes/throwable/effect

################effect#################
# grenade
execute as @e[tag=grenade_effect,scores={throwable_life=50..}] at @s run function throwable:classes/grenade/effect

#molotov
execute as @e[tag=molotov_effect,nbt={OnGround:1b}] at @s run function throwable:classes/molotov/effect
execute as @e[tag=molotov_effect,scores={throwable_life=200..}] at @s run kill @s
execute as @e[tag=ignited_molotov] at @s run function throwable:classes/molotov/ignited_effect
#execute if entity @e[tag=ignited_molotov] as @a at @s if entity @e[limit=1,tag=ignited_molotov,distance=..8,scores={throwable_life=0},sort=nearest] run scoreboard players add @s damage 3
execute as @e[tag=onfire] run scoreboard players add @s damage 2
execute as @e[tag=onfire,nbt={ActiveEffects:[{Id:12b}]}] run scoreboard players remove @s damage 2
tag @e[tag=onfire] add molotoved
tag @e[tag=onfire] remove onfire
execute if entity @e[tag=ignited_molotov] run scoreboard players add fire throwable_life 1
execute if score fire throwable_life >= 10 throwable_life run scoreboard players set fire throwable_life 0

# turret
execute as @e[tag=turret_effect,scores={throwable_life=..60}] at @s run function throwable:classes/turret/setup
execute as @e[tag=turret_effect,scores={throwable_life=61..}] at @s run function throwable:classes/turret/effect

#xirang
execute as @e[tag=xirang_effect] at @s run function throwable:classes/xirang/effect

#template
execute as @e[tag=template_effect] at @s run function throwable:classes/template/effect
################effect#################

#reset throw
execute as @a[scores={throw=1..}] run scoreboard players set @s throw 0

#turret cooldown
scoreboard players remove @e[tag=turret_effect,scores={cooldown=1..}] cooldown 1
