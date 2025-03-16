#ammo score change
scoreboard players operation @s ammo += @s b_smg

execute if entity @s[scores={ammo=50..}] run tag @s add full
execute if entity @s[tag=!full] run scoreboard players operation @s b_smg = @s ammo
execute if entity @s[tag=!full] run scoreboard players set @s ammo 0
execute if entity @s[tag=full] run scoreboard players set @s b_smg 50
execute if entity @s[tag=full] run scoreboard players remove @s ammo 50
tag @s remove full

item replace entity @s weapon.offhand with minecraft:air

function app:get/smg