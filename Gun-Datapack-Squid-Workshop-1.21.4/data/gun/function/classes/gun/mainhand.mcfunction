#compile argument
$data modify storage firearm:storage arg.key set value $(key)
$data modify storage firearm:storage arg.mode set value $(mode)

#mainhand default
$execute at @s run function gun:classes/$(key)/tick_mainhand
#low ammo
$execute as @e[predicate=gun:classes/$(key)/low_ammo] at @s run function gun:classes/$(key)/low_ammo
#detect fire
$execute as @e[predicate=gun:classes/$(key)/fire] at @s run function gun:classes/$(key)/fire with storage firearm:storage arg