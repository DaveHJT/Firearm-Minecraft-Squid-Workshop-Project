

tag @s add detecting
execute as @e[type=!#damage:notmob,distance=..3] unless score @s UID = @e[tag=detecting,limit=1,sort=nearest] UID as @e[tag=detecting,limit=1,sort=nearest] run function gun:classes/arrow_molotov/detect
tag @s remove detecting