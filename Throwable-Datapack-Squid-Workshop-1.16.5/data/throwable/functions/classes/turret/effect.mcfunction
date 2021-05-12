
scoreboard players operation turret UID = @s UID
scoreboard players operation turret team = @s team
tag @s add ally
execute as @a if score @s UID = turret UID run tag @s add ally
execute as @e[type=!#damage:notmob] if score @s team = turret team run tag @s add ally

#aim
scoreboard players add @s cooldown 0
execute if score turret_target thr_setting matches 0 if entity @a[tag=!ally,distance=..30] run tag @s add target_aimed
execute if score turret_target thr_setting matches 0 if entity @s[tag=target_aimed] run tp @s ~ ~ ~ facing entity @p[tag=!ally,distance=..30]
execute if score turret_target thr_setting matches 1 if entity @e[distance=..80,tag=!ally,type=!#damage:notmob,limit=1,sort=nearest] run tag @s add target_aimed
execute if score turret_target thr_setting matches 1 if entity @s[tag=target_aimed] run tp @s ~ ~ ~ facing entity @e[distance=..80,tag=!ally,type=!#damage:notmob,limit=1,sort=nearest]
# fire
execute if entity @s[tag=target_aimed] if score @s cooldown matches 0 run function throwable:classes/turret/fire

#beeping sound
#execute if score @s throwable_life matches 81 run playsound minecraft:block.note_block.bit ambient @a ~ ~ ~ 1 2

execute if entity @s[scores={throwable_life=140..}] run scoreboard players set @s throwable_life 80
#green head
execute if entity @s[tag=!green] unless entity @s[tag=target_aimed] run tag @s add green
execute if entity @s[tag=!green,type=armor_stand] unless entity @s[tag=target_aimed] run replaceitem entity @s armor.head minecraft:stone_button{CustomModelData:10}
execute if entity @s[tag=!green,type=!armor_stand] unless entity @s[tag=target_aimed] run replaceitem entity @s armor.head minecraft:stone_button{CustomModelData:20}


# destruct
execute if entity @e[tag=!ally,distance=..2,type=!#damage:notmob] run function throwable:classes/turret/destruct
execute positioned ~ ~0.6 ~ if entity @e[type=arrow,distance=..1] run function throwable:classes/turret/destruct
execute if score @s ammo matches 0 run function throwable:classes/turret/destruct
#execute if entity @e[tag=bullet,distance=..2] run function throwable:classes/turret/destruct

tag @a[tag=ally] remove ally
