#reload transitional functions
$execute if score @s reload matches 29 run function gun:classes/$(key)/mode_toggling/complete_from_$(mode)

#reload state update
scoreboard players add @s reload 1
scoreboard players set @s[scores={reload=30..}] reload 0

#reload dependent functions
execute if score @s reload matches 1 run playsound minecraft:gun/m4a1/m4a1_silencer_screw_on_start player @s ~ ~ ~ 0.2 1
execute if score @s reload matches 10 run playsound minecraft:gun/m4a1/m4a1_silencer_screw_1 player @a ~ ~ ~ 0.2 1
execute if score @s reload matches 15 run playsound minecraft:gun/m4a1/m4a1_silencer_screw_1 player @a ~ ~ ~ 0.2 1
execute if score @s reload matches 20 run playsound minecraft:gun/m4a1/m4a1_silencer_screw_1 player @a ~ ~ ~ 0.2 1
$function gun:classes/$(key)/mode_toggling/ongoing_from_$(mode)