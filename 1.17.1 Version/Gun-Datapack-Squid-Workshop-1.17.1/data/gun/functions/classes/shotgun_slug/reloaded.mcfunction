

#ammo score change
scoreboard players operation @s ammo += @s b_shot

execute if entity @s[scores={ammo=2..}] run tag @s add full

execute if entity @s[tag=!full] run scoreboard players operation @s b_shot = @s ammo

execute if entity @s[tag=!full] run scoreboard players set @s ammo 0

execute if entity @s[tag=full] run scoreboard players set @s b_shot 2

execute if entity @s[tag=full] run scoreboard players remove @s ammo 2

tag @s remove full
#

scoreboard players set @s reload 0

item replace entity @s[nbt={Inventory:[{Slot:-106b,tag:{shotgun:1b,slug:1b}}]}] weapon.offhand with minecraft:air

function app:get/shotgun_slug

