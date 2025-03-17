#sound
playsound minecraft:gun/m4a1/m4a1_01 player @a ~ ~ ~ 2 1
execute as @a[distance=31..] run playsound minecraft:gun/m4a1/m4a1_us_distant player @s ~ ~ ~ 10 1

#muzzle: own view
execute if entity @s[scores={shift_bool=0}] positioned ~ ~1.6 ~ run particle minecraft:flame ^-0.2 ^-0.05 ^0.7 0.01 0.01 0.01 100 1 force @s
execute if entity @s[scores={shift_bool=1..}] positioned ~ ~1.3 ~ run particle minecraft:flame ^ ^-0.2 ^1.5 0.01 0.01 0.01 100 1 force @s

#muzzle: others view
tag @s add display_fire
execute if entity @s[scores={shift_bool=0}] positioned ~ ~1.6 ~ run particle minecraft:flame ^-0.2 ^-0.4 ^1 0.01 0.01 0.01 100 1 force @a[tag=!display_fire]
execute if entity @s[scores={shift_bool=1..}] positioned ~ ~1.3 ~ run particle minecraft:flame ^-0.2 ^-0.4 ^1 0.01 0.01 0.01 100 1 force @a[tag=!display_fire]
tag @s remove display_fire