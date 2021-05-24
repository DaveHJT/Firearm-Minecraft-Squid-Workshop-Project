

#execute as @e[distance=..9] run scoreboard players add @s damage 11


execute as @e[distance=..7,type=!#damage:notmob] run tag @s add mini_explosion_damage

effect give @e[tag=mini_explosion_damage] glowing 1 1 true

scoreboard players add @e[tag=mini_explosion_damage] damage 2

execute as @e[tag=mini_explosion_damage] at @s run scoreboard players operation @s hit_by = @e[limit=1,sort=nearest,tag=mini_explosion] UID

execute as @e[tag=mini_explosion_damage] run tag @s add exploded

tag @e[tag=mini_explosion_damage] remove mini_explosion_damage


tp @s ~ ~ ~ facing entity @p

function gun:classes/arrow_explosive_mini/fire

function gun:classes/arrow_explosive_mini/fire_procedure
function gun:classes/arrow_explosive_mini/fire_procedure
function gun:classes/arrow_explosive_mini/fire_procedure
function gun:classes/arrow_explosive_mini/fire_procedure
function gun:classes/arrow_explosive_mini/fire_procedure
function gun:classes/arrow_explosive_mini/fire_procedure
function gun:classes/arrow_explosive_mini/fire_procedure
function gun:classes/arrow_explosive_mini/fire_procedure
function gun:classes/arrow_explosive_mini/fire_procedure
function gun:classes/arrow_explosive_mini/fire_procedure
function gun:classes/arrow_explosive_mini/fire_procedure
function gun:classes/arrow_explosive_mini/fire_procedure
function gun:classes/arrow_explosive_mini/fire_procedure
function gun:classes/arrow_explosive_mini/fire_procedure
function gun:classes/arrow_explosive_mini/fire_procedure
function gun:classes/arrow_explosive_mini/fire_procedure
function gun:classes/arrow_explosive_mini/fire_procedure
function gun:classes/arrow_explosive_mini/fire_procedure
function gun:classes/arrow_explosive_mini/fire_procedure
function gun:classes/arrow_explosive_mini/fire_procedure
function gun:classes/arrow_explosive_mini/fire_procedure
function gun:classes/arrow_explosive_mini/fire_procedure
function gun:classes/arrow_explosive_mini/fire_procedure
function gun:classes/arrow_explosive_mini/fire_procedure
function gun:classes/arrow_explosive_mini/fire_procedure
function gun:classes/arrow_explosive_mini/fire_procedure
function gun:classes/arrow_explosive_mini/fire_procedure
function gun:classes/arrow_explosive_mini/fire_procedure
function gun:classes/arrow_explosive_mini/fire_procedure
function gun:classes/arrow_explosive_mini/fire_procedure
function gun:classes/arrow_explosive_mini/fire_procedure




#in water
execute if block ~ ~ ~ minecraft:water run tag @s add water
execute if entity @s[tag=water] run particle minecraft:splash ~ ~2 ~ 0.3 1 0.3 1 500 force
execute if entity @s[tag=water] run playsound minecraft:gun/thrower/water_explo player @a ~ ~ ~ 2 1.5 0.3
execute if entity @s[tag=water] run tag @e[tag=fired_b,distance=..0.5] add water
#in lava
execute if block ~ ~ ~ minecraft:lava run tag @s add water
execute if block ~ ~ ~ minecraft:lava run tag @s add lava
execute if entity @s[tag=lava] run particle minecraft:lava ~ ~2 ~ 0.6 1 0.6 1 80 force
execute if entity @s[tag=lava] run particle minecraft:falling_lava ~ ~2 ~ 0.6 1 0.6 1 180 force
execute if entity @s[tag=lava] run playsound minecraft:gun/thrower/water_explo player @a ~ ~ ~ 4 0.7
execute if entity @s[tag=lava] run tag @e[tag=fired_b,distance=..0.5] add lava
#in air
#execute if entity @s[tag=water] run particle minecraft:lava ~ ~ ~ 1 0.5 1 1 30 force
execute if entity @s[tag=!water] run particle minecraft:lava ~ ~ ~ 0.2 0.2 0.2 1 20 force
execute if entity @s[tag=!water] run playsound minecraft:gun/thrower/explode2 player @a ~ ~ ~ 3 1.5 0.1
execute if entity @s[tag=!water] run particle minecraft:explosion ~ ~ ~ 0 0 0 0.001 1 force
#playsound minecraft:gun/thrower/explode player @a ~ ~ ~ 4 1


tag @s remove mini_explosion
kill @s[type=!player]