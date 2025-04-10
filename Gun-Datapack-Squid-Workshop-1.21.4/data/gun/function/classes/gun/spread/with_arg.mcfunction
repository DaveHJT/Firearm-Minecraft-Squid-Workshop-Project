#compile argument: get random values: yaw, cos(pitch), and hemisphere
$function gun:classes/gun/spread/get_random_values/$(mode)

#compile argument: convert values to facing: x,y,z
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["spread_calculator"],Rotation:[0,0]}
execute at @s as @e[type=area_effect_cloud,tag=spread_calculator,distance=..0.001,sort=nearest,limit=1] run function gun:classes/gun/spread/get_facing with storage firearm:storage arg

#rotate
$execute as $(selector) at @s run function gun:classes/utilities/rotate/with_arg with storage firearm:storage arg

#reset spread score
$execute as $(selector) run function gun:classes/gun/spread/reset_spread/$(mode)