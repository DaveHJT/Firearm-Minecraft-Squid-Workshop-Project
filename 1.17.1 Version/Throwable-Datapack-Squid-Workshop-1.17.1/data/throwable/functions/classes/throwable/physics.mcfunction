tag @s add self

execute as @e[tag=tracer,tag=!traced] if score @s UID = @e[tag=self,limit=1] UID run tag @s add tracing
execute as @e[tag=tracing,limit=1,sort=nearest] run tp @s ~ ~ ~

execute as @e[tag=tracing,limit=1,sort=nearest] run scoreboard players operation @s throwable_life = @e[tag=self,limit=1] throwable_life

tag @s remove self
tag @e[tag=tracing,limit=1,sort=nearest] add traced
tag @e[tag=tracing,limit=1,sort=nearest] remove tracing