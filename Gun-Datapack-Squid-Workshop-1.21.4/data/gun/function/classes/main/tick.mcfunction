#init
execute as @a unless score @s SID = SID C run tag @s remove ini
execute as @a[tag=!ini] run function gun:classes/gun/init/player_init
scoreboard players set @a[tag=ini,scores={shift_bool=1..}] h 1500
scoreboard players set @a[tag=ini,scores={shift_bool=..0}] h 1950
execute as @e[type=#gun:supported,tag=babe,nbt={Age:0}] run function gun:classes/gun/init/mob_init_a
execute as @e[type=#gun:supported,tag=!ini] run function gun:classes/gun/init/mob_init
execute as @e[tag=shield,tag=!ini] run function gun:classes/gun/init/mob_init

# init scores
scoreboard players add @a ammo 0
scoreboard players add @a aim 0
scoreboard players add @a lever 0
scoreboard players add @a b_rifle 0
scoreboard players add @a b_smg 0
scoreboard players add @a b_shot 0
scoreboard players add @a b_sniper 0
scoreboard players add @a b_energy 0
scoreboard players add @a b_mini 0


#<<<<<<<<<<<<<<<<<<detect fire, low ammo
#fire, low_ammo
execute as @a if items entity @s weapon.mainhand *[custom_data~{gun:1b}] run function gun:classes/gun/mainhand with entity @s SelectedItem.components."minecraft:custom_data"
#>>>>>>>>>>>>>>>>>>detect fire, low ammo


#<<<<<<<<<<<<<<<<<<reloading, mode toggling
#reload state overide
execute as @a unless items entity @s weapon.offhand *[custom_data~{gun:1b}] run scoreboard players set @s reload 0

#reloading, mode_toggling
execute as @a if items entity @s weapon.offhand *[custom_data~{gun:1b}] run function gun:classes/gun/offhand with entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data"
#>>>>>>>>>>>>>>>>>>reloading, mode toggling


#<<<<<<<<<<<<<<<<<<aim
#aim state update
execute as @a[predicate=gun:classes/aim/state/add] run scoreboard players add @s aim 1
execute as @a[predicate=gun:classes/aim/state/overide] run scoreboard players set @s aim 0

#aim dependent functions
#aim up
execute as @a[scores={aim=1..}] if items entity @s weapon.mainhand *[custom_data~{aimed:0}] run function gun:classes/gun/aim {toggle:up}
#aim clear
execute as @a[scores={aim=0}] if items entity @s weapon.mainhand *[custom_data~{aimed:1b}] run function gun:classes/gun/aim {toggle:clear} 

#equip scope
execute as @a[predicate=gun:classes/aim/scope_up] at @s run playsound minecraft:gun/awp/zoom player @a ~ ~ ~ 1 0.8

#remove recoil
execute as @a[scores={aim=3,recoil=12..}] if items entity @s weapon.mainhand *[custom_data~{gun:1b},!custom_data~{key:"minigun"}] run scoreboard players remove @s recoil 1
#>>>>>>>>>>>>>>>>>>aim


#cooldown
scoreboard players remove @e[scores={cooldown=1..}] cooldown 1

#remove recoil
execute as @a[scores={recoil=2..,r_cooldown=0}] run scoreboard players remove @s recoil 2
execute as @a[scores={recoil=1,  r_cooldown=0}] run scoreboard players remove @s recoil 1
execute as @a[scores={r_cooldown=1..}] run scoreboard players remove @s r_cooldown 1

#save last pos
execute as @a[tag=!dead] at @s run function gun:classes/gun/last_pos


#debug bullet
#execute as @e[tag=bullet_fired] at @s run particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 1 0
#execute as @e[tag=bullet_fired] at @s run tp @s ^ ^ ^0.1
#execute as @e[tag=spread] at @s run tp @s ~ ~ ~ ~ ~2
#execute as @e[tag=spread] at @s run function gun:classes/gun/spread
#execute as @e[tag=spread] run tag @s remove spread

#bullet /from MGS_2.0.1 gun mod/
execute as @e[tag=bullet_fired] at @s run function gun:classes/gun/bullet_physics

#<<<<<<<<<<<<<<<<<<ammo display
#rifle
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{key:"rifle"}}}}] run title @s actionbar ["",{"score":{"name":"@s","objective":"b_rifle"},"color":"white"},{"text":"/"},{"score":{"name":"@s","objective":"ammo"},"color":"white"}]
#smg
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{key:"smg"}}}}] run title @s actionbar ["",{"score":{"name":"@s","objective":"b_smg"},"color":"white"},{"text":"/"},{"score":{"name":"@s","objective":"ammo"},"color":"white"}]
#shotgun
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{key:"shotgun"}}}}] run title @s actionbar ["",{"score":{"name":"@s","objective":"b_shot"},"color":"white"},{"text":"/"},{"score":{"name":"@s","objective":"ammo"},"color":"white"}]
#sniper
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{key:"sniper"}}}}] run title @s actionbar ["",{"score":{"name":"@s","objective":"b_sniper"},"color":"white"},{"text":"/"},{"score":{"name":"@s","objective":"ammo"},"color":"white"}]
#laser
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{key:"laser"}}}}] run title @s actionbar ["",{"score":{"name":"@s","objective":"b_energy"},"color":"white"},{"text":"/"},{"score":{"name":"@s","objective":"ammo"},"color":"white"}]
#minigun
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{key:"minigun"}}}}] run title @s actionbar ["",{"score":{"name":"@s","objective":"b_mini"},"color":"white"},{"text":"/"},{"score":{"name":"@s","objective":"ammo"},"color":"white"}]
#>>>>>>>>>>>>>>>>>>ammo display

#rand accu
scoreboard players add rand accu 1
execute if score rand accu >= 10000 C run scoreboard players set rand accu 0

#other weapons
#jetpack
execute as @a[scores={shift_bool=1},nbt={SelectedItem:{components:{"minecraft:custom_data":{jetpack:1b}}}}] at @s run function gun:classes/jetpack/tick
execute as @a[scores={shift_bool=1,lever=160},nbt={SelectedItem:{components:{"minecraft:custom_data":{jetpack:1b}}}}] at @s run playsound minecraft:block.beacon.deactivate ambient @s ~ ~ ~ 1 2
execute as @a[scores={shift_bool=0,lever=1..}] at @s run scoreboard players remove @s lever 1

#shield
function gun:classes/shield/tick
execute as @s[tag=shield] at @s unless entity @a[scores={shield_bool=1},distance=..1] run kill @s


#grenade arrow
execute as @e[type=minecraft:arrow,nbt={Color:1274392},tag=!throw] at @s run function throwable:classes/grenade/init

#molotov arrow
execute as @e[type=minecraft:arrow,nbt={Color:11298561},tag=!throw] at @s run function throwable:classes/molotov/init

#smoke arrow
execute as @e[type=minecraft:arrow,nbt={Color:1656347},tag=!throw] at @s run function throwable:classes/smoke/init

#signal arrow
execute as @e[type=minecraft:arrow,nbt={Color:16754176},tag=!throw] at @s run function throwable:classes/signal/init

#mini explosive arrow
execute as @e[type=minecraft:arrow,nbt={Color:11080735},tag=!throw] at @s run function throwable:classes/firecracker/init


#time 
scoreboard players add time V 1
execute if score time V matches 1000000.. run scoreboard players set time V 0 

# hit mark
execute if score hit_mark gun_settings matches 1 as @e[tag=hit_mark] at @s run particle composter ~ ~ ~ 0 0 0 1 1 force

# war war_machine
execute as @e[type=minecraft:giant,tag=war_machine] at @s if entity @p[distance=..100] run tp @s ~ ~ ~ facing entity @p[tag=!protected]



