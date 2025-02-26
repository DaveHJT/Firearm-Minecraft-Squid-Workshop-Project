#summon item ~ ~ ~ {Item:{id:"minecraft:snowball",Count:1b,components:{"minecraft:custom_data":{custom_model_data:{strings:["grenade"]}, item_name:'{"text":"grenade"}'}}},PickupDelay:32767s,Tags:["grenade_effect","effect"]}

summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["grenade_effect","effect"]}

summon item ~ ~ ~ {Item:{id:"minecraft:snowball",Count:1b,components:{"minecraft:custom_data":{custom_model_data:{strings:["grenade"]}, item_name:'{"text":"grenade"}'}}},PickupDelay:32767s,Tags:["display"]}

#scoreboard players add @s throwable_life 20

scoreboard players operation @e[tag=effect,limit=1,sort=nearest] throwable_life = @s throwable_life

scoreboard players operation @e[tag=effect,limit=1,sort=nearest] UID = @s UID

playsound minecraft:gun/thrower/he_bounce-1 player @a ~ ~ ~ 2 1

kill @s