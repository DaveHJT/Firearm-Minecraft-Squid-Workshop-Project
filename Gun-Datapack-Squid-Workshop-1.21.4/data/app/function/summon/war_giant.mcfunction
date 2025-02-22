summon giant ~ ~ ~ {Tags:["war_machine","giant"], PersistenceRequired:1b, Health:100000, HandItems:[{id:"minecraft:carrot_on_a_stick",count:1,components:{custom_model_data:{strings:["turret_cannon"]},custom_data:{private:1b}}},{id:"minecraft:shield"}], ArmorItems:[{id:"minecraft:netherite_boots"},{id:"minecraft:netherite_leggings"},{id:"minecraft:netherite_chestplate"},{id:"minecraft:netherite_helmet"}]}

scoreboard players add @e[tag=war_machine,type=minecraft:giant,sort=nearest,limit=1] cooldown 100

effect give @e[tag=war_machine] minecraft:regeneration 1000000 100 true
effect give @e[tag=war_machine] minecraft:instant_health 1000000 100 true