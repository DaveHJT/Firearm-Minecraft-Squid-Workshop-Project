scoreboard players add @s aim 1
execute if score @s aim matches 2 run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick[custom_model_data={strings:["scope"]}, item_name='{"text":"scope"}', custom_data={scope:1b}]

execute if score @s aim matches 2 run item modify entity @s weapon.mainhand [{"function":"set_custom_model_data","strings":{"values": ["laser_aim"],"mode":"replace_all"}}, {"function":"minecraft:set_attributes","modifiers":[{"attribute":"minecraft:movement_speed","id":"minecraft:","amount":-0.1,"operation":"add_value","slot":"mainhand"}]}]

execute if score @s aim matches 2 run playsound minecraft:gun/awp/zoom player @a ~ ~ ~ 1 0.8

#remove recoil
execute as @a[scores={recoil=12..}] run scoreboard players remove @s recoil 1