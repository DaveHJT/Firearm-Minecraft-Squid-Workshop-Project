#store initial position: x z
execute store result score v0 V run data get entity @s Pos[0] 1000
execute store result score v1 V run data get entity @s Pos[2] 1000

#calculate delta position: x z
$data modify entity @s Rotation[0] set value $(yaw)f
$execute at @s run tp @s ^ ^ ^$(cos)
execute store result score @s dx run data get entity @s Pos[0] 1000
execute store result score @s dz run data get entity @s Pos[2] 1000
scoreboard players operation @s dx -= v0 V
scoreboard players operation @s dz -= v1 V

#calculate delta position: y=sqrt(1-cos^2)
#v0: sqrt input
#v2: sqrt output
$data modify storage firearm:storage arg.cos set value $(cos)
execute store result score v1 V run data get storage firearm:storage arg.cos 1000
scoreboard players operation v1 V *= v1 V
scoreboard players set v0 V 1000000
scoreboard players operation v0 V -= v1 V
function gun:classes/utilities/sqrt

#compile argument
execute store result storage firearm:storage arg.x double 0.001 run scoreboard players get @s dz
execute store result storage firearm:storage arg.y double 0.001 run scoreboard players get @s dx
$execute store result storage firearm:storage arg.z double $(hem) run scoreboard players get v2 V
kill @s