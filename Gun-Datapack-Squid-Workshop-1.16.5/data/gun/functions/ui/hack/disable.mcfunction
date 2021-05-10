scoreboard players set hack gun_setting 0
tellraw @a ["",{"text":"[gun setting] "},{"selector":"@s"},{"text":" just "},{"text":"disabled ","color":"red"},{"text":"hacking for everyone!"}]

tag @a add mute_function
execute as @a run function gun:ui/hack/disable
tag @a remove mute_function