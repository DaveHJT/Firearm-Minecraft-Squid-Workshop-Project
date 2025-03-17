#summon bullet, sign name, set damage
#recoil bullet, spread bullet, fire, update bullet status
function gun:classes/shotgun/fire/summon_bullet/buck_helper
function gun:classes/shotgun/fire/summon_bullet/buck_helper
function gun:classes/shotgun/fire/summon_bullet/buck_helper
function gun:classes/shotgun/fire/summon_bullet/buck_helper
function gun:classes/shotgun/fire/summon_bullet/buck_helper
function gun:classes/shotgun/fire/summon_bullet/buck_helper
function gun:classes/shotgun/fire/summon_bullet/buck_helper
function gun:classes/shotgun/fire/summon_bullet/buck_helper
function gun:classes/shotgun/fire/summon_bullet/buck_helper
function gun:classes/shotgun/fire/summon_bullet/buck_helper

#spread bullets (again)
scoreboard players set @s spread 2
execute if entity @s[scores={walk_bool=1..}] run scoreboard players add @s spread 1
execute if entity @s[scores={sprint_bool=1..}] run scoreboard players add @s spread 1
execute if entity @s[scores={gunJump_bool=1..}] run scoreboard players add @s spread 3
execute if entity @s[scores={shift_bool=1..}] run scoreboard players remove @s spread 1
scoreboard players operation @e[tag=buck,limit=10,sort=nearest] spread = @s spread
execute as @e[tag=buck,limit=10,sort=nearest] at @s run function gun:classes/gun/spread/spread

#update bullet status (again)
tag @e[tag=buck,limit=10,sort=nearest] remove buck