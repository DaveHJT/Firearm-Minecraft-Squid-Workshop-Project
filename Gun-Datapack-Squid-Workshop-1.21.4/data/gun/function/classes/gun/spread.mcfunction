#compile argument
scoreboard players operation rand V = @s spread
scoreboard players operation rand V *= rand V
execute store result storage firearm:storage arg.rand float 5 run scoreboard players get rand V

#generate random, spread
function gun:classes/gun/spread/rand_with_arg with storage firearm:storage arg


execute if score @s spread matches 6.. run function gun:classes/gun/spread/crazy

execute if entity @s[tag=!grenade] run scoreboard players set @s spread 0

tag @s[tag=offset] remove offset
