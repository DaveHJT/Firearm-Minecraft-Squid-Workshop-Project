summon item ~ ~ ~ {Item:{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:506}},PickupDelay:-1s,Tags:["signal_effect","effect"]}

effect give @e[tag=signal_effect,limit=1,sort=nearest] slow_falling 10000 10 true

scoreboard players operation @e[tag=effect,limit=1,sort=nearest] throwable_life = @s throwable_life

scoreboard players operation @e[tag=effect,limit=1,sort=nearest] UID = @s UID

playsound minecraft:gun/thrower/flash_hit player @a ~ ~ ~ 2 1

kill @s