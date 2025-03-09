item replace entity @s weapon.offhand with minecraft:air

item modify entity @s weapon.mainhand [{"function":"set_custom_model_data","strings":{"values": ["laser"],"mode":"replace_all"}}, {"function":"minecraft:set_components","components":{"!attribute_modifiers":{}}}]

#clear @s minecraft:carrot_on_a_stick[custom_model_data={strings:["scope"]}, item_name='{"text":"scope"}']