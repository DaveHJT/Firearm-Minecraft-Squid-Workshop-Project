#in water
execute if block ~ ~ ~ water run tag @s add dead
execute if block ~ ~ ~ lava run tag @s add destruct
tag @s[tag=dead] remove turret_effect

scoreboard players operation turret UID = @s UID
scoreboard players operation turret team = @s team
tag @s add ally
scoreboard players set 0 team 0
execute as @a if score @s UID = turret UID run tag @s add ally
execute as @e[type=!#damage:notmob] if score @s team > 0 team if score @s team = turret team run tag @s add ally


#invisibility
#execute if entity @s[nbt=!{ActiveEffects:[{Id:14b}]}] run 
#aim
scoreboard players add @s cooldown 0
execute if score turret_target thr_settings matches 0 if entity @a[tag=!ally,distance=..20,nbt=!{ActiveEffects:[{Id:14b}]}] run tag @s add target_aimed
execute if score turret_target thr_settings matches 0 if entity @s[tag=target_aimed] run tp @s ~ ~ ~ facing entity @p[tag=!ally,distance=..20]
execute if score turret_target thr_settings matches 1 if entity @e[distance=..20,tag=!ally,type=!#damage:notmob,limit=1,sort=nearest,nbt=!{ActiveEffects:[{Id:14b}]}] run tag @s add target_aimed
execute if score turret_target thr_settings matches 1 if entity @s[tag=target_aimed] run tp @s ~ ~ ~ facing entity @e[distance=..20,tag=!ally,type=!#damage:notmob,limit=1,sort=nearest]

#smoked
execute if entity @e[tag=smoke_effect,distance=..4] run tag @s remove target_aimed

# fire
execute if entity @s[tag=target_aimed] if score @s cooldown matches 0 run function throwable:classes/turret/fire

#beeping sound
#execute if score @s throwable_life matches 81 run playsound minecraft:block.note_block.bit ambient @a ~ ~ ~ 1 2

execute if entity @s[scores={throwable_life=140..}] run scoreboard players set @s throwable_life 80
#green head

execute if entity @s[tag=!green,type=armor_stand,tag=!target_aimed] run item replace entity @s armor.head with minecraft:stone_button{CustomModelData:510}
execute if entity @s[tag=!green,type=!armor_stand,tag=!target_aimed] run item replace entity @s armor.head with minecraft:stone_button{CustomModelData:520}
tag @s[tag=!green,tag=!target_aimed] add green


# destruct
execute if entity @e[tag=!ally,distance=..2,type=!#damage:notmob] run tag @s add destruct
execute positioned ~ ~0.6 ~ if entity @e[type=arrow,distance=..2] run tag @s add destruct
execute positioned ~ ~0.6 ~ if entity @e[type=firework_rocket,distance=..4] run tag @s add destruct
execute if entity @e[tag=grenade_effect,distance=..7,tag=grenade_explosion] run tag @s add destruct
execute if entity @e[tag=ignited_molotov,distance=..6] run tag @s add destruct
execute if score @s ammo matches 0 run tag @s add destruct
#execute if entity @e[tag=bullet,distance=..2] run function throwable:classes/turret/destruct

execute if entity @s[tag=destruct] run function throwable:classes/turret/destruct

tag @e[tag=ally] remove ally
tag @e[tag=target_aimed] remove target_aimed