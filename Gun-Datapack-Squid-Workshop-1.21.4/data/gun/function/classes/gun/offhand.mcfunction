#compile argument
$data modify storage firearm:storage arg.key set value $(key)
$data modify storage firearm:storage arg.mode set value $(mode)

#mode toggling
$execute if predicate gun:classes/$(key)/mode_toggling at @s run function gun:classes/$(key)/mode_toggling with storage firearm:storage arg
#reloading
$execute if predicate gun:classes/$(key)/reloading at @s run function gun:classes/$(key)/reloading with storage firearm:storage arg