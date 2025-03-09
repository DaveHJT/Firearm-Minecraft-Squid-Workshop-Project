item modify entity @s weapon.mainhand [{"function":"set_custom_model_data","strings":{"values": ["awm_aim"],"mode":"replace_all"}}, {"function":"set_attributes","modifiers":[{"attribute":"movement_speed","id":"minecraft:","amount":-0.1,"operation":"add_value","slot":"mainhand"}]},{"function":"set_custom_data","tag":{aimed:1b}}]

playsound minecraft:gun/awp/zoom player @a ~ ~ ~ 1 0.8