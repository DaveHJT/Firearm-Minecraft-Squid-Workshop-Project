#ammo score change
scoreboard players operation @s ammo += @s b_rifle

execute if entity @s[scores={ammo=30..}] run tag @s add full
execute if entity @s[tag=!full] run scoreboard players operation @s b_rifle = @s ammo
execute if entity @s[tag=!full] run scoreboard players set @s ammo 0
execute if entity @s[tag=full] run scoreboard players set @s b_rifle 30
execute if entity @s[tag=full] run scoreboard players remove @s ammo 30
tag @s remove full

item replace entity @s weapon.offhand with minecraft:air

$function gun:classes/$(key)/get/$(mode)