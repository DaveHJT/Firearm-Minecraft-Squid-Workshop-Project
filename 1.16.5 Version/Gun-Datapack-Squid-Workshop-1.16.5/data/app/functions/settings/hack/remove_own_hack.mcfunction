execute if entity @s[tag=!mute_function] run tellraw @a ["",{"text":"[gun settings] "},{"selector":"@s"},{"text":" just removed all"},{"text":" hacking for themself!"}]

# remove infinite ammo
scoreboard players set @s ammo 0

# remove aimbot
scoreboard players set @s aimbot 0