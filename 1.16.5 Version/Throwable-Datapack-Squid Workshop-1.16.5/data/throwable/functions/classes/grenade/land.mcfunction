#summon item ~ ~ ~ {Item:{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:501}},PickupDelay:32767s,Tags:["grenade_effect","effect"]}

summon armor_stand ~ ~ ~ {Tags:["grenade_effect","effect"],Invisible:1b,Marker:1b}

summon item ~ ~ ~ {Item:{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:501}},PickupDelay:32767s,Tags:["display"]}

#scoreboard players add @s throwable_life 20

scoreboard players operation @e[tag=effect,limit=1,sort=nearest] throwable_life = @s throwable_life

scoreboard players operation @e[tag=effect,limit=1,sort=nearest] UID = @s UID

playsound minecraft:gun/thrower/he_bounce-1 player @a ~ ~ ~ 2 1

kill @s