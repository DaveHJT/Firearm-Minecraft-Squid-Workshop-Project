summon giant ~ ~ ~ {Tags:["war_machine","giant"],PersistenceRequired:1b}

replaceitem entity @e[tag=war_machine,type=minecraft:giant,sort=nearest,limit=1] weapon.mainhand minecraft:carrot_on_a_stick{CustomModelData:526,Private:1b }

replaceitem entity @e[tag=war_machine,type=minecraft:giant,sort=nearest,limit=1] armor.head minecraft:netherite_helmet

replaceitem entity @e[tag=war_machine,type=minecraft:giant,sort=nearest,limit=1] armor.feet minecraft:netherite_boots

replaceitem entity @e[tag=war_machine,type=minecraft:giant,sort=nearest,limit=1] armor.chest minecraft:netherite_chestplate

replaceitem entity @e[tag=war_machine,type=minecraft:giant,sort=nearest,limit=1] armor.legs minecraft:netherite_leggings

replaceitem entity @e[tag=war_machine,type=minecraft:giant,sort=nearest,limit=1] weapon.offhand minecraft:shield

scoreboard players add @e[tag=war_machine,type=minecraft:giant,sort=nearest,limit=1] cooldown 100

attribute @e[tag=war_machine,type=minecraft:giant,sort=nearest,limit=1] generic.max_health base set 100000
effect give @e[tag=war_machine] minecraft:regeneration 1000000 100 true
effect give @e[tag=war_machine] minecraft:instant_health 1000000 100 true