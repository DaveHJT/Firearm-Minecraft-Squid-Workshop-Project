#compile argument: get cos(pitch) random range: max=0.01V*V=-min, for V=1..10
scoreboard players operation rand V = @s spread
scoreboard players operation rand V *= rand V
execute store result storage firearm:storage arg.max int 10 run scoreboard players get rand V
execute store result storage firearm:storage arg.min int -10 run scoreboard players get rand V

#compile argument: get random values: yaw, cos, and hemisphere
execute store result storage firearm:storage arg.yaw float 1 run random value -179..180
execute store result storage firearm:storage arg.cos double 0.001 run function gun:classes/utilities/random/with_range with storage firearm:storage arg
data modify storage firearm:storage arg.hem set value 0.001