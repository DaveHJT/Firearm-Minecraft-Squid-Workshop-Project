summon giant ~ ~ ~ {Tags:["war_machine","giant"],PersistenceRequired:1b}

item replace entity @e[tag=war_machine,type=minecraft:giant,sort=nearest,limit=1] weapon.mainhand with minecraft:carrot_on_a_stick{CustomModelData:526,Private:1b }

item replace entity @e[tag=war_machine,type=minecraft:giant,sort=nearest,limit=1] armor.head with minecraft:netherite_helmet

item replace entity @e[tag=war_machine,type=minecraft:giant,sort=nearest,limit=1] armor.feet with minecraft:netherite_boots

item replace entity @e[tag=war_machine,type=minecraft:giant,sort=nearest,limit=1] armor.chest with minecraft:netherite_chestplate

item replace entity @e[tag=war_machine,type=minecraft:giant,sort=nearest,limit=1] armor.legs with minecraft:netherite_leggings

item replace entity @e[tag=war_machine,type=minecraft:giant,sort=nearest,limit=1] weapon.offhand with minecraft:shield

scoreboard players add @e[tag=war_machine,type=minecraft:giant,sort=nearest,limit=1] cooldown 100

attribute @e[tag=war_machine,type=minecraft:giant,sort=nearest,limit=1] generic.max_health base set 100000
effect give @e[tag=war_machine] minecraft:regeneration 1000000 100 true
effect give @e[tag=war_machine] minecraft:instant_health 1000000 100 true