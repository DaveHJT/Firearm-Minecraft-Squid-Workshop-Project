#hit
playsound minecraft:block.anvil.land player @a ~ ~ ~ 2 1.7

#execute as @e[distance=..9] run scoreboard players add @s damage 11
execute as @e[distance=..3,type=!#damage:notmob] run tag @s add turret_exploded

execute as @e[tag=turret_exploded] run scoreboard players add @s damage 11
execute as @e[tag=turret_exploded] at @s run scoreboard players operation @s hit_by = @e[limit=1,sort=nearest,tag=turret_effect] UID
execute as @e[tag=turret_exploded] run tag @s add exploded
tag @e[tag=turret_exploded] remove turret_exploded

tp @s ~ ~ ~ facing entity @p

# function throwable:classes/grenade/fire

function throwable:classes/turret/fire_procedure
function throwable:classes/turret/fire_procedure
function throwable:classes/turret/fire_procedure
function throwable:classes/turret/fire_procedure
function throwable:classes/turret/fire_procedure
function throwable:classes/turret/fire_procedure
function throwable:classes/turret/fire_procedure
function throwable:classes/turret/fire_procedure
function throwable:classes/turret/fire_procedure






particle minecraft:explosion ~ ~1 ~ 1 1 1 1 5 force

particle minecraft:lava ~ ~1 ~ 3 1 3 1 30 force

playsound minecraft:gun/thrower/explode player @a ~ ~ ~ 4 1

kill @s