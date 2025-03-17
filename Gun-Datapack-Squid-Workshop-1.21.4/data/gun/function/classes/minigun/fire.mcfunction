execute as @s[scores={carotClik_bool=1..}] at @s run scoreboard players add @s spin 1
execute as @a[scores={carotClik_bool=1..}] at @s run scoreboard players set @s cooldown 5

execute as @a[scores={spin=10..,carotClik_bool=0,cooldown=0}] at @s run stopsound @a player
execute as @a[scores={spin=10..,carotClik_bool=0,cooldown=0}] at @s run playsound minecraft:gun/minigun/spin_end player @a ^-0.3 ^ ^0.5 0.6 0.8

execute as @s[scores={carotClik_bool=0,cooldown=0}] at @s run scoreboard players set @s spin 0

execute as @a[scores={spin=1,carotClik_bool=1..}] at @s run playsound minecraft:gun/minigun/spin_up player @a ^-0.3 ^ ^0.5 0.8 0.55

execute as @a[scores={spin=75..,b_mini=1..}] at @s run playsound minecraft:gun/minigun/minigun player @a ^-0.3 ^ ^0.5 2 1
execute as @a[scores={spin=75..,b_mini=1..}] at @s run function gun:classes/minigun/fire/firing
execute as @a[scores={spin=1..}] at @s run scoreboard players add @s spin 1
execute as @a[scores={spin=75..}] at @s run playsound minecraft:entity.enderman.death player @a ~ ~ ~ 0.1 1.6