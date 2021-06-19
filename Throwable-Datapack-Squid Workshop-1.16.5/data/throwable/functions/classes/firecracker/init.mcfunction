
tag @s add throw
tag @s add firecracker

scoreboard players operation @s UID = @p UID

execute if entity @s[type=arrow] run data merge entity @s {pickup:-1b}

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["firecracker","tracer","tracer_new"],Duration:2000}

scoreboard players operation @e[tag=tracer_new,sort=nearest] UID = @p UID

playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 1


tag @s add thrown
tag @e[tag=tracer_new] remove traver_new