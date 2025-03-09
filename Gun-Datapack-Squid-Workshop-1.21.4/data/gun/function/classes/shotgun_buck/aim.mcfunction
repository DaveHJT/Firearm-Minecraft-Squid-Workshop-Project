scoreboard players add @s aim 1
execute if score @s aim matches 2 run item modify entity @s weapon.mainhand [{"function":"set_custom_model_data","strings":{"values": ["double_barrel_shotgun_aim"],"mode":"replace_all"}}]


#remove recoil
execute as @a[scores={recoil=12..}] run scoreboard players remove @s recoil 1