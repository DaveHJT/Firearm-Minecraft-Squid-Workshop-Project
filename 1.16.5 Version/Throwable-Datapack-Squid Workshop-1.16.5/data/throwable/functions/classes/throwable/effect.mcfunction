
# hit ground 
execute if entity @s[nbt={OnGround:0b}] run tag @s add air

execute if entity @s[tag=air,nbt={OnGround:1b},tag=display] run playsound minecraft:gun/thrower/he_bounce-1 player @a ~ ~ ~ 2 1

execute if entity @s[tag=air,nbt={OnGround:1b},tag=flash_effect] run playsound minecraft:gun/thrower/flash_hit player @a ~ ~ ~ 2 1

execute if entity @s[tag=air,nbt={OnGround:1b},tag=signal_effect] run playsound minecraft:gun/thrower/flash_hit player @a ~ ~ ~ 2 1

execute if entity @s[tag=air,nbt={OnGround:1b},tag=smoke_effect] run playsound minecraft:gun/thrower/flash_hit player @a ~ ~ ~ 2 1

#execute if entity @s[tag=air,nbt={OnGround:1b},tag=turret_effect] run playsound minecraft:block.anvil.place player @a ~ ~ ~ 2 1

execute if entity @s[tag=air,nbt={OnGround:1b},tag=grenade] run scoreboard players add @s throwable_life 20

execute if entity @s[tag=air,nbt={OnGround:1b}] run tag @s remove air
