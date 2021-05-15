
#smoke
execute if entity @s[scores={throwable_life=..100}] run particle minecraft:campfire_signal_smoke ~ ~1 ~ 1.5 1 1.5 0.001 20 force @a
execute if entity @s[scores={throwable_life=101..420}] run particle minecraft:campfire_signal_smoke ~ ~1 ~ 1.5 1 1.5 0.001 5 force @a

#kill molotov

execute as @e[tag=molotov_effect,distance=..4] run tag @s add extinguished
execute if entity @e[tag=extinguished,distance=..4] run playsound minecraft:gun/thrower/smoke_emit player @a[distance=..30] ~ ~ ~ 4 2 
kill @e[tag=extinguished]

# blind
tag @e[distance=..4] add smoke_blind
effect give @e[tag=smoke_blind] blindness 2 10 true

# sound

execute if entity @s[tag=!playsound] run playsound minecraft:gun/thrower/smoke_emit player @a[distance=..30] ~ ~ ~ 4 1 0.1
execute if entity @s[tag=!playsound] run playsound minecraft:gun/thrower/sg_explode_distant player @a[distance=31..] ~ ~ ~ 10 1 0.1
tag @s add playsound

kill @s[type=!player,scores={throwable_life=500..}]