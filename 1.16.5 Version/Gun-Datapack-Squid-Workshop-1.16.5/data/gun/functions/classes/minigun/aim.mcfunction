effect give @s minecraft:slowness 1 2 true
scoreboard players add @s aim 1
execute if score @s aim matches 2 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{CustomModelData:524,display:{Name:"{\"text\":\" minigun\"}"},gun:1b, minigun:1b,silenced:0}

#remove recoil
#execute as @a[scores={recoil=12..}] run scoreboard players remove @s recoil 1