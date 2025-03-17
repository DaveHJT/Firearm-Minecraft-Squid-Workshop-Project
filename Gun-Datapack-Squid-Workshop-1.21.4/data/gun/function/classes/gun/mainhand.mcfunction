#compile argument
$data modify storage firearm:storage arg.key set value $(key)
$data modify storage firearm:storage arg.mode set value $(mode)

#low ammo
$execute if predicate gun:classes/$(key)/low_ammo at @s run function gun:classes/$(key)/low_ammo
#detect fire
$execute if predicate gun:classes/$(key)/fire at @s run function gun:classes/$(key)/fire with storage firearm:storage arg

execute as @s[scores={carotClik_bool=0,cooldown=0,aim=0,shift_bool=0,r_cooldown=0}] if items entity @s weapon.mainhand *[custom_data~{key:"laser"},custom_model_data={strings:["laser_powered"]}] run item modify entity @s weapon.mainhand gun:classes/laser/powered_clear