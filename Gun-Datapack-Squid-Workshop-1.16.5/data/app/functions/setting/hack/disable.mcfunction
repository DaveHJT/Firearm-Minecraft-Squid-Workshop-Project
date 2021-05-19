scoreboard players set hack gun_setting 0
tellraw @a ["",{"text":"[gun setting] "},{"selector":"@s"},{"text":" just "},{"text":"disabled ","color":"red"},{"text":"hacking for everyone!"}]

tag @a add mute_function
execute as @a run function app:setting/hack/remove_own_hack
tag @a remove mute_function