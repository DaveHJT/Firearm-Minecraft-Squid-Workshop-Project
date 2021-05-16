
# damage
execute as @e[distance=..7,type=!#damage:notmob] run tag @s add grenade_damage

effect give @e[tag=grenade_damage] glowing 1 1 true

scoreboard players add @e[tag=grenade_damage] damage 4
scoreboard players add @e[tag=grenade_damage,distance=..5] damage 62

execute as @e[tag=grenade_damage] run scoreboard players operation @s hit_by = @e[limit=1,sort=nearest,tag=grenade_effect] UID

execute as @e[tag=grenade_damage] run tag @s add grenaded

tag @e[tag=grenade_damage] remove grenade_damage

tp @s ~ ~ ~ facing entity @p

function throwable:classes/grenade/fire

function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure
function throwable:classes/grenade/fire_procedure


#in water
execute if block ~ ~ ~ minecraft:water run tag @s add water
execute if entity @s[tag=water] run particle minecraft:splash ~ ~2 ~ 0.6 1 0.6 1 1000 force
execute if entity @s[tag=water] run playsound minecraft:gun/thrower/water_explo player @a ~ ~ ~ 4 1.5
execute if entity @s[tag=water] run tag @e[tag=fired_b,distance=..0.5] add water

#in air
#execute if entity @s[tag=water] run particle minecraft:lava ~ ~1 ~ 3 1 3 1 30 force
execute if entity @s[tag=!water] run particle minecraft:lava ~ ~1 ~ 3 1 3 1 100 force

# sound
execute if entity @s[tag=!water] run playsound minecraft:gun/thrower/c4_explo player @a[distance=..30] ~ ~ ~ 4 2 0.1
execute if entity @s[tag=!water] run playsound minecraft:gun/thrower/grenade_distant player @a[distance=31..] ~ ~ ~ 10 1 0.1

#particle
execute if entity @s[tag=!water] run particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 1 3 force
#playsound minecraft:gun/thrower/explode player @a ~ ~ ~ 4 1



kill @e[tag=display,limit=1,sort=nearest]
tag @s remove grenade_effect
kill @s[type=!player]