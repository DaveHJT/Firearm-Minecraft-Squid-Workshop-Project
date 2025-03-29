#compile argument
scoreboard players operation rand V = @s spread
scoreboard players operation rand V *= rand V
execute store result storage firearm:storage arg.min float 5 run scoreboard players get rand V
execute store result storage firearm:storage arg.max float 5 run scoreboard players get rand V

#generate random, compile argument
execute store result storage firearm:storage arg.x float 0.1 run function gun:classes/utilities/random/with_range with storage firearm:storage arg
execute store result storage firearm:storage arg.y float 0.1 run function gun:classes/utilities/random/with_range with storage firearm:storage arg

#spread
function gun:classes/utilities/rotate/with_arg with storage firearm:storage arg

execute if score @s spread matches 6.. run function gun:classes/gun/spread/crazy

execute if entity @s[tag=!grenade] run scoreboard players set @s spread 0

tag @s[tag=offset] remove offset
