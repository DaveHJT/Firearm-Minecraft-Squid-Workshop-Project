#init
execute as @a unless score @s SID = SID C run tag @s remove ini
execute as @a[tag=!ini] run function gun:classes/gun/init/player_init
scoreboard players set @a[tag=ini,scores={shift=1..}] h 1500
scoreboard players set @a[tag=ini,scores={shift=..0}] h 1950
execute as @e[type=#gun:supported,tag=babe,nbt={Age:0}] run function gun:classes/gun/init/mob_init_a
execute as @e[type=#gun:supported,tag=!ini] run function gun:classes/gun/init/mob_init
execute as @e[tag=shield,tag=!ini] run function gun:classes/gun/init/mob_init

# init scores
scoreboard players add @a ammo 0
scoreboard players add @a shift 0

# player status
execute as @a[nbt={OnGround:0b}] at @s if block ~ ~-0.01 ~ #gun:jump run scoreboard players add @s jump 1


#<<<<<<<<<<<<<<<<<<detect fire
#rifle
execute as @a[scores={right_click=1..,b_rifle=1..,cooldown=0},nbt={SelectedItem:{tag:{rifle:1b,silenced:0}}}] at @s run function gun:classes/rifle/fire

#rifle silenced
execute as @a[scores={right_click=1..,b_rifle=1..,cooldown=0},nbt={SelectedItem:{tag:{rifle:1b,silenced:1b}}}] at @s run function gun:classes/rifle_silenced/fire

#smg
execute as @a[scores={right_click=1..,b_smg=1..,cooldown=0},nbt={SelectedItem:{tag:{smg:1b,silenced:0}}}] at @s run function gun:classes/smg/fire
execute as @a[scores={right_click=0,b_smg=1..,cooldown=1},nbt={SelectedItem:{tag:{smg:1b,silenced:0}}}] at @s run function gun:classes/smg/fire

#smg silenced
execute as @a[scores={right_click=1..,b_smg=1..,cooldown=0},nbt={SelectedItem:{tag:{smg:1b,silenced:1b}}}] at @s run function gun:classes/smg_silenced/fire
execute as @a[scores={right_click=0,b_smg=1..,cooldown=1},nbt={SelectedItem:{tag:{smg:1b,silenced:1b}}}] at @s run function gun:classes/smg_silenced/fire

#shotgun slug
execute as @a[scores={right_click=1..,b_shot=1..,cooldown=0},nbt={SelectedItem:{tag:{shotgun:1b,slug:1b}}}] at @s run function gun:classes/shotgun_slug/fire

#shotgun buck
execute as @a[scores={right_click=1..,b_shot=1..,cooldown=0},nbt={SelectedItem:{tag:{shotgun:1b,buck:1b}}}] at @s run function gun:classes/shotgun_buck/fire

#sniper
execute as @a[scores={right_click=1..,b_sniper=1..,cooldown=0},nbt={SelectedItem:{tag:{sniper:1b}}}] at @s run function gun:classes/sniper/fire

#laser
execute as @a[scores={right_click=1..,b_energy=1..,cooldown=0},nbt={SelectedItem:{tag:{laser:1b}}}] at @s run function gun:classes/laser/fire
execute as @a[scores={right_click=0,b_energy=1..,cooldown=1},nbt={SelectedItem:{tag:{laser:1b}}}] at @s run function gun:classes/laser/fire
execute as @a[scores={right_click=0,b_energy=1..,cooldown=2},nbt={SelectedItem:{tag:{laser:1b}}}] at @s run function gun:classes/laser/fire
execute as @a[scores={right_click=0,b_energy=1..,cooldown=3},nbt={SelectedItem:{tag:{laser:1b}}}] at @s run function gun:classes/laser/fire

execute as @a[scores={right_click=0,cooldown=0,aim=0,shift=0,r_cooldown=0},nbt={SelectedItem:{tag:{laser:1b,CustomModelData:521}}}] at @s run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{CustomModelData:519,display:{Name:"{\"text\":\"laser rifle\"}"},gun:1b,laser:1b,silenced:0}

#minigun
#execute as @a[nbt={SelectedItem:{tag:{minigun:1b,silenced:0}}}] at @s run effect give @s minecraft:slowness 1 1 true

execute as @a[scores={right_click=1..},nbt={SelectedItem:{tag:{minigun:1b,silenced:0}}}] at @s run scoreboard players add @s spin 1

execute as @a[scores={right_click=1..},nbt={SelectedItem:{tag:{minigun:1b,silenced:0}}}] at @s run scoreboard players set @s cooldown 5


execute as @a[scores={right_click=0,spin=10..,cooldown=0},nbt={SelectedItem:{tag:{minigun:1b,silenced:0}}}] at @s run stopsound @a player
execute as @a[scores={right_click=0,spin=10..,cooldown=0},nbt={SelectedItem:{tag:{minigun:1b,silenced:0}}}] at @s run playsound minecraft:gun/minigun/spin_end player @a ^-0.3 ^ ^0.5 0.6 0.8

execute as @a[scores={right_click=0,cooldown=0},nbt={SelectedItem:{tag:{minigun:1b,silenced:0}}}] at @s run scoreboard players set @s spin 0

execute as @a[scores={right_click=1..,spin=1},nbt={SelectedItem:{tag:{minigun:1b,silenced:0}}}] at @s run playsound minecraft:gun/minigun/spin_up player @a ^-0.3 ^ ^0.5 0.8 0.55

execute as @a[scores={b_mini=1..,spin=75..},nbt={SelectedItem:{tag:{minigun:1b,silenced:0}}}] at @s run playsound minecraft:gun/minigun/minigun player @a ^-0.3 ^ ^0.5 2 1

#execute as @a[scores={b_mini=1..,spin=75..},nbt={SelectedItem:{tag:{minigun:1b,silenced:0}}}] at @s run function gun:classes/minigun/fire
execute as @a[scores={b_mini=1..,spin=75..},nbt={SelectedItem:{tag:{minigun:1b,silenced:0}}}] at @s run function gun:classes/minigun/fire

execute as @a[scores={spin=1..},nbt={SelectedItem:{tag:{minigun:1b,silenced:0}}}] at @s run scoreboard players add @s spin 1

execute as @a[scores={spin=75..},nbt={SelectedItem:{tag:{minigun:1b,silenced:0}}}] at @s run playsound minecraft:entity.enderman.death player @a ~ ~ ~ 0.1 1.6
#>>>>>>>>>>>>>>>>>>detect fire

#lowammo
execute as @a[scores={right_click=1..,b_rifle=0},nbt={SelectedItem:{tag:{rifle:1b}}}] at @s run function gun:classes/rifle/low_ammo

execute as @a[scores={right_click=1..,b_smg=0},nbt={SelectedItem:{tag:{smg:1b}}}] at @s run function gun:classes/smg/low_ammo

execute as @a[scores={right_click=1..,b_shot=0},nbt={SelectedItem:{tag:{shotgun:1b}}}] at @s run function gun:classes/shotgun_buck/low_ammo

execute as @a[scores={right_click=1..,b_sniper=0},nbt={SelectedItem:{tag:{sniper:1b}}}] at @s run function gun:classes/sniper/low_ammo

execute as @a[scores={right_click=1..,b_energy=0},nbt={SelectedItem:{tag:{laser:1b}}}] at @s run function gun:classes/laser/low_ammo

execute as @a[scores={spin=75..,b_mini=0},nbt={SelectedItem:{tag:{minigun:1b}}}] at @s run function gun:classes/minigun/low_ammo

#reload
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{gun:1b}}]}] at @s run function gun:classes/gun/reload

#reload interrupted

execute as @a[nbt=!{Inventory:[{Slot:-106b}]},scores={reload=1..}] run effect clear @s slowness

#execute as @a[nbt=!{Inventory:[{Slot:-106b}]},scores={reload=1..}] run scoreboard players set @s reload 0

execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{gun:1b}}]},scores={reload=1..}] run scoreboard players set @s reload 0



#cooldown
scoreboard players remove @a[scores={cooldown=1..}] cooldown 1


#<<<<<<<<<<<<<<<<<<detect aim

#rifle
execute as @a[scores={shift=1..},nbt={SelectedItem:{tag:{rifle:1b,silenced:0}}}] at @s run function gun:classes/rifle/aim
#rifle silenced
execute as @a[scores={shift=1..},nbt={SelectedItem:{tag:{rifle:1b,silenced:1b}}}] at @s run function gun:classes/rifle_silenced/aim
#smg
execute as @a[scores={shift=1..},nbt={SelectedItem:{tag:{smg:1b,silenced:0}}}] at @s run function gun:classes/smg/aim
#smg silenced
execute as @a[scores={shift=1..},nbt={SelectedItem:{tag:{smg:1b,silenced:1b}}}] at @s run function gun:classes/smg_silenced/aim
#shotgun slug
execute as @a[scores={shift=1..},nbt={SelectedItem:{tag:{shotgun:1b,slug:1b}}}] at @s run function gun:classes/shotgun_slug/aim
#shotgun buck
execute as @a[scores={shift=1..},nbt={SelectedItem:{tag:{shotgun:1b,buck:1b}}}] at @s run function gun:classes/shotgun_buck/aim
#sniper
execute as @a[scores={shift=1..},nbt={SelectedItem:{tag:{sniper:1b}}}] at @s run function gun:classes/sniper/aim
#laser
execute as @a[scores={shift=1..},nbt={SelectedItem:{tag:{laser:1b}}}] at @s run function gun:classes/laser/aim
#minigun
execute as @a[scores={shift=1..},nbt={SelectedItem:{tag:{minigun:1b,silenced:0}}}] at @s run function gun:classes/minigun/aim

#>>>>>>>>>>>>>>>>>>detect aim

#remove aim
execute as @a[scores={shift=0,aim=1..},nbt={SelectedItem:{tag:{gun:1b}}}] run scoreboard players remove @s aim 1

#limit aim
execute as @a[scores={aim=3..}] run scoreboard players set @s aim 3

#climb clear aim shift
execute as @a[scores={shift=1..,climb=1..}] run scoreboard players set @s shift 0

#<<<<<<<<<<<<<<<<<<clear aim
#rifle
execute as @a[scores={shift=0,aim=1..},nbt={SelectedItem:{tag:{rifle:1b,silenced:0}}}] at @s run function gun:classes/rifle/clear_aim
#rifle silenced
execute as @a[scores={shift=0,aim=1..},nbt={SelectedItem:{tag:{rifle:1b,silenced:1b}}}] at @s run function gun:classes/rifle_silenced/clear_aim

#smg
execute as @a[scores={shift=0,aim=1..},nbt={SelectedItem:{tag:{smg:1b,silenced:0}}}] at @s run function gun:classes/smg/clear_aim
#smg silenced
execute as @a[scores={shift=0,aim=1..},nbt={SelectedItem:{tag:{smg:1b,silenced:1b}}}] at @s run function gun:classes/smg_silenced/clear_aim

#shotgun slug
execute as @a[scores={shift=0,aim=1..},nbt={SelectedItem:{tag:{shotgun:1b,slug:1b}}}] at @s run function gun:classes/shotgun_slug/clear_aim
#shotgun buck
execute as @a[scores={shift=0,aim=1..},nbt={SelectedItem:{tag:{shotgun:1b,buck:1b}}}] at @s run function gun:classes/shotgun_buck/clear_aim

#sniper
execute as @a[scores={shift=0,aim=1..},nbt={SelectedItem:{tag:{sniper:1b}}}] at @s run function gun:classes/sniper/clear_aim

#laser
execute as @a[scores={shift=0,aim=1..},nbt={SelectedItem:{tag:{laser:1b}}}] at @s run function gun:classes/laser/clear_aim

#minigun
execute as @a[scores={shift=0,aim=1..},nbt={SelectedItem:{tag:{minigun:1b,silenced:0}}}] at @s run function gun:classes/minigun/clear_aim

#clear scope
execute as @a[scores={shift=0,aim=2}] at @s run clear @s minecraft:carrot_on_a_stick{scope:1b}
#>>>>>>>>>>>>>>>>>>clear aim


#remove recoil
execute as @a[scores={recoil=2..,r_cooldown=0}] run scoreboard players remove @s recoil 2
execute as @a[scores={r_cooldown=1..}] run scoreboard players remove @s r_cooldown 1

#save last pos
execute as @a[tag=!dead] at @s run function gun:classes/gun/last_pos

#reset
execute as @a[scores={right_click=1..}] run scoreboard players set @s right_click 0
execute as @a[scores={shift=1..}] run scoreboard players set @s shift 0
execute as @a[scores={walk=1..}] run scoreboard players set @s walk 0
execute as @a[scores={sprint=1..}] run scoreboard players set @s sprint 0
execute as @a[scores={jump=1..}] run scoreboard players set @s jump 0


#debug bullet
#execute as @e[tag=fired_b] at @s run particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 1 0
#execute as @e[tag=fired_b] at @s run tp @s ^ ^ ^0.1
#execute as @e[tag=spread] at @s run tp @s ~ ~ ~ ~ ~2
#execute as @e[tag=spread] at @s run function gun:classes/gun/spread/spread
#execute as @e[tag=spread] run tag @s remove spread

#bullet /from MGS_2.0.1 gun mod/
execute as @e[tag=fired_b] at @s run function gun:classes/gun/bullet_physics

#<<<<<<<<<<<<<<<<<<ammo display
#rifle
execute as @a[nbt={SelectedItem:{tag:{rifle:1b}}}] run title @s actionbar ["",{"score":{"name":"@s","objective":"b_rifle"},"color":"white"},{"text":"/"},{"score":{"name":"@s","objective":"ammo"},"color":"white"}]
#smg
execute as @a[nbt={SelectedItem:{tag:{smg:1b}}}] run title @s actionbar ["",{"score":{"name":"@s","objective":"b_smg"},"color":"white"},{"text":"/"},{"score":{"name":"@s","objective":"ammo"},"color":"white"}]
#shotgun
execute as @a[nbt={SelectedItem:{tag:{shotgun:1b}}}] run title @s actionbar ["",{"score":{"name":"@s","objective":"b_shot"},"color":"white"},{"text":"/"},{"score":{"name":"@s","objective":"ammo"},"color":"white"}]
#sniper
execute as @a[nbt={SelectedItem:{tag:{sniper:1b}}}] run title @s actionbar ["",{"score":{"name":"@s","objective":"b_sniper"},"color":"white"},{"text":"/"},{"score":{"name":"@s","objective":"ammo"},"color":"white"}]
#laser
execute as @a[nbt={SelectedItem:{tag:{laser:1b}}}] run title @s actionbar ["",{"score":{"name":"@s","objective":"b_energy"},"color":"white"},{"text":"/"},{"score":{"name":"@s","objective":"ammo"},"color":"white"}]
#minigun
execute as @a[nbt={SelectedItem:{tag:{minigun:1b}}}] run title @s actionbar ["",{"score":{"name":"@s","objective":"b_mini"},"color":"white"},{"text":"/"},{"score":{"name":"@s","objective":"ammo"},"color":"white"}]
#>>>>>>>>>>>>>>>>>>ammo display

#rand accu
scoreboard players add rand accu 1
execute if score rand accu >= 10000 C run scoreboard players set rand accu 0

#other weapons
#jetpack
execute as @a[scores={shift_bool=1},nbt={SelectedItem:{tag:{jetpack:1b}}}] at @s run function gun:classes/jetpack/tick
execute as @a[scores={shift_bool=1,lever=160},nbt={SelectedItem:{tag:{jetpack:1b}}}] at @s run playsound minecraft:block.beacon.deactivate ambient @s ~ ~ ~ 1 2
execute as @a[scores={shift_bool=0,lever=1..}] at @s run scoreboard players remove @s lever 1

#shield
function gun:classes/shield/tick
execute as @s[tag=shield] at @s unless entity @a[scores={shield_bool=1},distance=..1] run kill @s

#light arrow
execute as @e[type=minecraft:arrow,nbt={Color:16449336},tag=!arrow] at @s run function gun:classes/arrow_light/init
#execute as @e[tag=light,tag=arrow] at @s run function gun:classes/arrow_light/tick

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


#light bow
execute as @a[scores={bow_bool=1},nbt={SelectedItem:{tag:{light:1b}}}] at @s as @e[type=minecraft:arrow,tag=!light,limit=1,sort=nearest] at @s run function gun:classes/arrow_light/init
#light crossbow
execute as @a[scores={crossbow_bool=1},nbt={SelectedItem:{tag:{light:1b}}}] at @s as @e[type=minecraft:arrow,tag=!light,limit=1,sort=nearest] at @s run function gun:classes/arrow_light/init
execute as @a[scores={crossbow_bool=1},nbt={SelectedItem:{tag:{light:1b}}}] at @s as @e[type=minecraft:firework_rocket,tag=!light,limit=1,sort=nearest] at @s run function gun:classes/arrow_light/init

#time 
scoreboard players add time V 1
execute if score time V matches 1000000.. run scoreboard players set time V 0 

# hit mark
execute if score hit_mark gun_settings matches 1 as @e[tag=hit_mark] at @s run particle composter ~ ~ ~ 0 0 0 1 1 force 



