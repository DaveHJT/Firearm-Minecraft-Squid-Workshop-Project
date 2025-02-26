summon item ~ ~ ~ {Item:{id:"minecraft:snowball",Count:1b,components:{"minecraft:custom_data":{custom_model_data:{strings:["flash"]}, item_name:'{"text":"flashbang"}'}}},PickupDelay:32767s,Tags:["flash_effect","effect"]}

scoreboard players operation @e[tag=effect,limit=1,sort=nearest] throwable_life = @s throwable_life

scoreboard players operation @e[tag=effect,limit=1,sort=nearest] UID = @s UID

playsound minecraft:gun/thrower/flash_hit player @a ~ ~ ~ 2 1

kill @s