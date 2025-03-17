#reload state update
scoreboard players add @s reload 1
scoreboard players set @s[scores={reload=50..}] reload 0

#reload dependent functions
execute if score @s reload matches 1 run playsound minecraft:gun/m4a1/m4a1_clipout player @a ~ ~ ~ 0.5 0.6
execute if score @s reload matches 25 run playsound minecraft:gun/m4a1/m4a1_clipin player @a ~ ~ ~ 0.5 0.6
execute if score @s reload matches 45 run playsound minecraft:gun/m4a1/m4a1_cliphit player @a ~ ~ ~ 0.5 0.6
$execute if score @s reload matches 0 run function gun:classes/$(key)/reloading/complete {key:$(key), mode:$(mode)}
title @s actionbar ["",{"text":"reloading..."}]
clear @s *[custom_data~{key:"scope"}]