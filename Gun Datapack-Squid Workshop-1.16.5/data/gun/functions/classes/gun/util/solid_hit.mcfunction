

execute if entity @s[tag=bullet] if block ~ ~ ~ #minecraft:logs run scoreboard players set v0 V 3
execute if entity @s[tag=bullet] if block ~ ~ ~ #minecraft:logs run scoreboard players operation @s damage /= medium damage
execute if entity @s[tag=bullet] if block ~ ~ ~ #minecraft:planks run scoreboard players set v0 V 3
execute if entity @s[tag=bullet] if block ~ ~ ~ #minecraft:planks run scoreboard players operation @s damage /= medium damage


execute if entity @s[tag=bullet] if block ~ ~ ~ #gun:watery run scoreboard players set v0 V 3
execute if entity @s[tag=bullet] if block ~ ~ ~ #gun:watery run scoreboard players operation @s damage /= medium damage


#bullet blocked if not specified 
execute if entity @s[tag=bullet] unless score v0 V matches 3 run scoreboard players set @s damage 0
