
#smoke
particle minecraft:campfire_signal_smoke ~ ~1 ~ 2 1.5 2 0.001 5 force @a

# sound

execute if entity @s[tag=!playsound] run playsound minecraft:gun/thrower/smoke_emit player @a[distance=..30] ~ ~ ~ 4 1 0.1
execute if entity @s[tag=!playsound] run playsound minecraft:gun/thrower/sg_explode_distant player @a[distance=31..] ~ ~ ~ 10 1 0.1
tag @s add playsound

kill @s[type=!player,scores={throwable_life=500..}]