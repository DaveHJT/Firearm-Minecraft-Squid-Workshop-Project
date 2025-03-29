#compile argument: get random range: max = -min = 5*V*V
scoreboard players operation rand V = @s spread
scoreboard players operation rand V *= rand V
execute store result storage firearm:storage arg.min int -5 run scoreboard players get rand V
execute store result storage firearm:storage arg.max int 5 run scoreboard players get rand V

#compile argument: get random x y
execute store result storage firearm:storage arg.x float 0.1 run function gun:classes/utilities/random/with_range with storage firearm:storage arg
execute store result storage firearm:storage arg.y float 0.1 run function gun:classes/utilities/random/with_range with storage firearm:storage arg

#spread
$execute as $(selector) at @s run function gun:classes/utilities/rotate/with_arg with storage firearm:storage arg