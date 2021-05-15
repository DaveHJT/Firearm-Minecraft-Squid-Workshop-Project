
#flare
particle minecraft:lava ~ ~ ~ 0 0 0 0.01 1 force @a
particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.2 2 force @a

# sound
scoreboard players set sound_interval throwable_life 5
scoreboard players operation sound_time throwable_life = @s throwable_life
scoreboard players operation sound_time throwable_life %= sound_interval throwable_life
execute if score sound_time throwable_life matches 0 run playsound minecraft:entity.firework_rocket.twinkle player @a ~ ~ ~ 4 1 0.1
execute if score sound_time throwable_life matches 0 run playsound minecraft:entity.firework_rocket.twinkle_far player @a[distance=31..] ~ ~ ~ 10 1 0.1


kill @s[type=!player,scores={throwable_life=200..}]