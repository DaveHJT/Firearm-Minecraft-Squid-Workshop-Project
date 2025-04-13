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
#v0: in_original
#v1: value_begin_of_loop
#v2: value_end_of_loop
$data modify storage firearm:storage arg.cos set value $(cos)
execute store result score v0 V run data get storage firearm:storage arg.cos 1000
execute if score v0 V matches ..0 run scoreboard players operation v0 V *= -1 C
scoreboard players set v1 V 1
function gun:classes/utilities/sqrt

#compile argument
execute store result storage firearm:storage arg.x double 0.001 run scoreboard players get @s dz
execute store result storage firearm:storage arg.y double 0.001 run scoreboard players get @s dx
$execute store result storage firearm:storage arg.z double $(hem) run scoreboard players get v2 V
kill @s