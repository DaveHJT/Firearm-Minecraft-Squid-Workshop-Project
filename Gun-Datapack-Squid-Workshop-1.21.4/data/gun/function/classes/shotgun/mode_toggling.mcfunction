#reload state update
scoreboard players add @s reload 1
scoreboard players set @s[scores={reload=33..}] reload 0

#reload dependent functions
execute if score @s reload matches 1 run playsound minecraft:gun/m4a1/m4a1_cliphit player @a ~ ~ ~ 0.5 0.8
execute if score @s reload matches 7 run playsound minecraft:gun/shotgun/xm1014_insertshell_02 player @a ~ ~ ~ 0.5 0.8
execute if score @s reload matches 23 run playsound minecraft:gun/m4a1/m4a1_cliphit player @a ~ ~ ~ 0.5 0.8
$execute if score @s reload matches 0 run function gun:classes/$(key)/mode_toggling/complete_from_$(mode)
$function gun:classes/$(key)/mode_toggling/ongoing_from_$(mode)