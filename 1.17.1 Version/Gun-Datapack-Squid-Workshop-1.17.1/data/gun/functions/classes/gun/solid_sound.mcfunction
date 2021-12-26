execute if entity @s[tag=bullet] if block ~ ~ ~ #gun:steel run playsound minecraft:block.anvil.land ambient @a ~ ~ ~ 1.2 2

execute if entity @s[tag=bullet] if block ~ ~ ~ #minecraft:logs run playsound minecraft:gun/hit/wood1 ambient @a ~ ~ ~ 0.6 1
execute if entity @s[tag=bullet] if block ~ ~ ~ #minecraft:planks run playsound minecraft:gun/hit/wood1 ambient @a ~ ~ ~ 0.6 1

execute if entity @s[tag=bullet] if block ~ ~ ~ #gun:terracotta run playsound minecraft:gun/hit/quartz2 ambient @a ~ ~ ~ 0.6 2

execute if entity @s[tag=bullet] if block ~ ~ ~ #gun:concrete run playsound minecraft:gun/hit/quartz1 ambient @a ~ ~ ~ 0.6 1.5
execute if entity @s[tag=bullet] if block ~ ~ ~ #gun:stones run playsound minecraft:gun/hit/quartz1 ambient @a ~ ~ ~ 0.6 1.5
execute if entity @s[tag=bullet] if block ~ ~ ~ #gun:ores run playsound minecraft:gun/hit/quartz1 ambient @a ~ ~ ~ 0.6 1.5

execute if entity @s[tag=bullet] if block ~ ~ ~ #gun:dirt run playsound minecraft:gun/hit/dirt1 ambient @a ~ ~ ~ 0.6 2
execute if entity @s[tag=bullet] if block ~ ~ ~ #gun:misc run playsound minecraft:gun/hit/dirt1 ambient @a ~ ~ ~ 0.6 1.5

execute if entity @s[tag=bullet] if block ~ ~ ~ #gun:watery run playsound minecraft:block.honey_block.step ambient @a ~ ~ ~ 1 1.6
execute if entity @s[tag=bullet] if block ~ ~ ~ #gun:watery run particle minecraft:block slime_block ~ ~ ~ 0.1 0.1 0.1 0.3 8 force

