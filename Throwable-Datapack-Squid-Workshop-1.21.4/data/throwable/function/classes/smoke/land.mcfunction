summon item ~ ~ ~ {Item:{id:"minecraft:snowball",Count:1b,components:{custom_model_data:{strings:["smoke"]}}, item_name:'{"text":"smoke"}'},PickupDelay:32767s,Tags:["smoke_effect","effect"]}

scoreboard players operation @e[tag=effect,limit=1,sort=nearest] throwable_life = @s throwable_life

scoreboard players operation @e[tag=effect,limit=1,sort=nearest] UID = @s UID

playsound minecraft:gun/thrower/flash_hit player @a ~ ~ ~ 2 1

kill @s