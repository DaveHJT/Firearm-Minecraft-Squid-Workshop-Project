# effects: sound, texture
execute if score @s b_energy matches 1 run playsound minecraft:block.beacon.activate player @a ~ ~ ~ 2 0.5
execute if score @s b_energy matches 15 run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 2 0.5
execute if score @s b_energy matches 20.. run playsound minecraft:entity.creeper.primed player @a ~ ~ ~ 2 1
execute if score @s b_energy matches 20.. run item modify entity @s weapon.offhand gun:classes/laser/powered
execute if score @s b_energy matches ..22 run playsound minecraft:item.chorus_fruit.teleport player @a ~ ~ ~ 0.4 1
execute if score @s b_energy matches 23.. run playsound minecraft:block.note_block.didgeridoo player @a ~ ~ ~ 2 1
playsound minecraft:block.beehive.work player @a ~ ~ ~ 1 0.5

# self-explode when over-charged
execute if entity @s[scores={b_energy=36..}] run function gun:classes/laser/reloading/complete

# display ammo
execute if entity @s[scores={b_energy=..20}] run title @s actionbar ["",{"score":{"name":"@s","objective":"b_energy"},"color":"white"},{"text":"/"},{"score":{"name":"@s","objective":"ammo"},"color":"white"}]
execute if entity @s[scores={b_energy=21..}] run title @s actionbar ["",{"score":{"name":"@s","objective":"b_energy"},"color":"red"},{"text":"/"},{"score":{"name":"@s","objective":"ammo"},"color":"white"}]

# clear scope
clear @s *[custom_data~{scope:1b}]

# reload ammo
scoreboard players add @s b_energy 1
