playsound minecraft:gun/awp/awp_02 player @a ~ ~ ~ 4 2
item replace entity @s weapon.offhand with minecraft:air
scoreboard players add @s damage 19
tag @s add exploded
particle minecraft:explosion ^-0.15 ^1 ^1 0.2 0.2 0.2 0.0001 10 force
scoreboard players set @s b_energy 0
scoreboard players operation @s hit_by = @s UID