
tag @a[scores={shield_bool=1},tag=!shielding] add shieldon
#tellraw @a[tag=shieldon] {"text":"shieldon","color":"green"}
execute as @a[tag=shieldon] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["shield","special"],Duration:20000}
execute as @a[tag=shieldon] at @s run scoreboard players operation @e[tag=shield,limit=1,sort=nearest] UID = @s UID 
tag @a[tag=shieldon] remove shieldon
tag @a[scores={shield_bool=1}] add shielding
#tellraw @a[tag=shielding] {"text":"shielding","color":"green"}
execute as @a[tag=shielding,scores={shift_bool=0}] at @s positioned ~ ~1.6 ~ run tp @e[tag=shield,limit=1,sort=nearest] ^ ^-1.1 ^1
execute as @a[tag=shielding,scores={shift_bool=1}] at @s positioned ~ ~1.3 ~ run tp @e[tag=shield,limit=1,sort=nearest] ^ ^-1.1 ^1


execute as @e[tag=shield] at @s run particle minecraft:composter ~ ~ ~ 0 0 0 1 1
tag @a[tag=shielding,scores={shield_bool=0}] add shieldoff
#tellraw @a[tag=shieldoff] {"text":"shieldoff","color":"green"}
execute as @a[tag=shieldoff] at @s run kill @e[tag=shield,limit=1,sort=nearest]
tag @a[tag=shieldoff] remove shieldoff
tag @a[tag=shielding,scores={shield_bool=0}] remove shielding