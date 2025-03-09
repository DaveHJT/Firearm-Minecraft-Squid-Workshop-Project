scoreboard players add @s aim 1
execute if score @s aim matches 2 run item modify entity @s weapon.mainhand [{"function":"set_custom_model_data","strings":{"values": ["minigun_aim"],"mode":"replace_all"}}, {"function":"minecraft:set_attributes","modifiers":[{"attribute":"minecraft:movement_speed","id":"minecraft:","amount":-0.03,"operation":"add_value","slot":"mainhand"}]}]


#remove recoil
#execute as @a[scores={recoil=12..}] run scoreboard players remove @s recoil 1