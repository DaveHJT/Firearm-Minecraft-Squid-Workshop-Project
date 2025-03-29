$execute if score @s spread matches 1..5 run function gun:classes/gun/spread/1_5 {selector:"$(selector)"}
$execute if score @s spread matches 6.. run function gun:classes/gun/spread/6 {selector:"$(selector)"}
$execute as $(selector) if entity @s[tag=!grenade] run scoreboard players set @s spread 0