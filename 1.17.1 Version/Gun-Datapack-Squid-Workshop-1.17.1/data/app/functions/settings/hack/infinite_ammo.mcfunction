execute if score hack gun_settings matches 0 run tellraw @s ["",{"text":"[gun settings] Hacking is "},{"text":"disabled","color":"red"},{"text":"!"}]

execute if score hack gun_settings matches 1 run scoreboard players set @s ammo 100000
execute if score hack gun_settings matches 1 run tellraw @a ["",{"text":"[gun settings] "},{"selector":"@s"},{"text":" just "},{"text":"enabled","color":"green"},{"text":" infinite ammo for themself!"}]
