#store initial position
execute store result score v0 V run data get entity @s Pos[0] 1000
execute store result score v1 V run data get entity @s Pos[1] 1000
execute store result score v2 V run data get entity @s Pos[2] 1000

#calculate delta position
$data modify entity @s Rotation[0] set value $(yaw)f
$execute at @s positioned ^ ^ ^$(cos) run function gun:classes/gun/spread/up_recurse {hem:$(hem)}
execute store result score @s dx run data get entity @s Pos[0] 1000
execute store result score @s dy run data get entity @s Pos[1] 1000
execute store result score @s dz run data get entity @s Pos[2] 1000
scoreboard players operation @s dx -= v0 V
scoreboard players operation @s dy -= v1 V
scoreboard players operation @s dz -= v2 V

#compile argument
execute store result storage firearm:storage arg.x double 0.001 run scoreboard players get @s dz
execute store result storage firearm:storage arg.y double 0.001 run scoreboard players get @s dx
execute store result storage firearm:storage arg.z double 0.001 run scoreboard players get @s dy
kill @s