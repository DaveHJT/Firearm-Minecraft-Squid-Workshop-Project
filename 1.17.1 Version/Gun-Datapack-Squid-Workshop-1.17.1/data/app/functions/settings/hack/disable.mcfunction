scoreboard players set hack gun_settings 0
tellraw @a ["",{"text":"[gun settings] "},{"selector":"@s"},{"text":" just "},{"text":"disabled ","color":"red"},{"text":"hacking for everyone!"}]

tag @a add mute_function
execute as @a run function app:settings/hack/remove_own_hack
tag @a remove mute_function