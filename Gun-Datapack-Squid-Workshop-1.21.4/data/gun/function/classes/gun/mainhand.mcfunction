#compile argument
$data modify storage firearm:storage arg.key set value $(key)
$data modify storage firearm:storage arg.mode set value $(mode)

#low ammo
$execute if predicate gun:classes/$(key)/low_ammo at @s run function gun:classes/$(key)/low_ammo
#detect fire
$execute if predicate gun:classes/$(key)/fire at @s run function gun:classes/$(key)/fire with storage firearm:storage arg