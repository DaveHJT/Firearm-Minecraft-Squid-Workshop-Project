#sound
playsound minecraft:gun/awp/awp_distant player @a ~ ~ ~ 1 0.5

#muzzle: own view
execute if entity @s[scores={shift=0}] positioned ~ ~1.6 ~ run particle minecraft:flame ^-0.2 ^-0.05 ^0.7 0 0 0 0.05 50 force @s
execute if entity @s[scores={shift=1..}] positioned ~ ~1.3 ~ run particle minecraft:flame ^ ^-0.2 ^1.5 0 0 0 0.05 50 force @s

#muzzle: others view
tag @s add display_fire
execute if entity @s[scores={shift=0}] positioned ~ ~1.6 ~ run particle minecraft:flame ^-0.2 ^-0.4 ^1 0 0 0 0.05 50 force @a[tag=!display_fire]
execute if entity @s[scores={shift=1..}] positioned ~ ~1.3 ~ run particle minecraft:flame ^-0.2 ^-0.4 ^1 0 0 0 0.05 50 force @a[tag=!display_fire]
tag @s remove display_fire