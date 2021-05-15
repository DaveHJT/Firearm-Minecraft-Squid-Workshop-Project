

execute if entity @s[scores={throwable_life=45..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:18,Tags:["flashing_effect","effect"]}

kill @s[type=!player,scores={throwable_life=45..}]