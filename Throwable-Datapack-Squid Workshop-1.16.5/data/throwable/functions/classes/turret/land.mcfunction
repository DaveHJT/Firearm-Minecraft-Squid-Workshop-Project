

summon armor_stand ~ ~0.5 ~ {NoBasePlate:1b,NoGravity:0b,Small:1b,ArmorItems:[{},{},{},{}],HandItems:[{},{}],Pose:{Head:[180f,0f,0f],LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f]},Tags:["turret_effect","effect"],Invisible:0b}
#skin
replaceitem entity @e[limit=1,sort=nearest,tag=turret_effect,type=armor_stand] armor.head minecraft:stone_button{CustomModelData:510,Private:1b}
replaceitem entity @e[limit=1,sort=nearest,tag=turret_effect,type=armor_stand] weapon.mainhand minecraft:stone_button{CustomModelData:513,Private:1b}
replaceitem entity @e[limit=1,sort=nearest,tag=turret_effect,type=!armor_stand] armor.head minecraft:stone_button{CustomModelData:520,Private:1b }
scoreboard players set @e[limit=1,sort=nearest,tag=turret_effect] ammo 50



scoreboard players operation @e[tag=effect,limit=1,sort=nearest] UID = @s UID
scoreboard players operation @e[tag=effect,limit=1,sort=nearest] team = @s team


execute if entity @s[tag=!land] run playsound minecraft:block.anvil.land player @a ~ ~ ~ 2 1.7
tag @s add land

execute as @e[limit=1,sort=nearest,tag=turret_effect] at @s as @a if score @s UID = @e[limit=1,sort=nearest,tag=turret_effect] UID run tp @e[limit=1,sort=nearest,tag=turret_effect] ~ ~ ~ facing entity @s
#execute as @e[limit=1,sort=nearest,tag=turret_effect] at @s run tp @e[limit=1,sort=nearest,tag=turret_effect] ~ ~ ~ facing ^ ^ ^-1


kill @s