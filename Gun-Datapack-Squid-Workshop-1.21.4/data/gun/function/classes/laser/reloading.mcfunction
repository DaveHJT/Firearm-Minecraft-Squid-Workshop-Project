#reload state update
scoreboard players add @s reload 1
scoreboard players set @s[scores={reload=4..}] reload 0

#reload dependent functions
$execute if score @s reload matches 0 run function gun:classes/$(key)/reloading/charging_energy