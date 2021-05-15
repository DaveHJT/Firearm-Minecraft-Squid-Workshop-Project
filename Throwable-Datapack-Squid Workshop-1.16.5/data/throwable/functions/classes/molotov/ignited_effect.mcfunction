#extinguished
execute if entity @e[tag=smoke_effect,distance=..5] run tag @s add extinguished
execute if entity @s[tag=extinguished] run playsound minecraft:gun/thrower/smoke_emit player @a[distance=..30] ~ ~ ~ 4 2 
kill @s[tag=extinguished]

# particle
particle minecraft:flame ~ ~ ~ 3 0.5 3 0.0001 6 force

particle minecraft:lava ~ ~ ~ 3 0.1 3 0.0001 3 force

# sound
execute if score fire throwable_life matches 0 run playsound minecraft:block.fire.ambient ambient @a ~ ~ ~ 3 2

# deal damage
execute if score fire throwable_life matches 0 as @e[distance=..8,type=!#damage:notmob] positioned ~-8 ~-1 ~-8 if entity @s[dy=3,dx=16,dz=16] run function throwable:classes/molotov/damage

# avoid molotov overlap
execute if entity @e[tag=molotov_effect,distance=..4] run kill @s






