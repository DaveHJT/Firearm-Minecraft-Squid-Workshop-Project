execute if entity @s[distance=1..] run tag @s add spread_calculated
execute if entity @s[tag=spread_calculated] run tp @s ~ ~ ~
$execute unless entity @s[tag=spread_calculated] positioned ~ ~$(hem) ~ run function gun:classes/gun/spread/up_recurse {hem:$(hem)}