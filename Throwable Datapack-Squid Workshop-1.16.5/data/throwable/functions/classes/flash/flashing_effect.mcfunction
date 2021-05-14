
# flashing and slowness effects
effect give @e[distance=..7] minecraft:slowness 5 1 true
effect give @e[distance=..7] blindness 1 10 true
tag @e[distance=..7] add flashed

particle minecraft:flash ~ ~1 ~ 0 0 0 0.1 5 force @a

scoreboard players set sound_interval throwable_life 3
scoreboard players operation sound_time throwable_life = @s throwable_life
scoreboard players operation sound_time throwable_life %= sound_interval throwable_life
execute if score sound_time throwable_life matches 0 run playsound minecraft:gun/thrower/flashbang_explode1 player @a[distance=..31] ~ ~ ~ 4 1 0.1
execute if score sound_time throwable_life matches 0 run playsound minecraft:gun/thrower/flashbang_explode1_distant player @a[distance=31..] ~ ~ ~ 10 1 0.1

