
tag @s add throw
tag @s add smoke

scoreboard players operation @s UID = @p UID

execute if entity @s[type=arrow] run data merge entity @s {pickup:-1b}

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["smoke","tracer","tracer_new"],Duration:4000}

scoreboard players operation @e[tag=tracer_new,sort=nearest] UID = @p UID

playsound minecraft:gun/thrower/grenade_throw player @a ~ ~ ~ 1 1


tag @s add thrown
tag @e[tag=tracer_new] remove traver_new