scoreboard players set @s gunJump_bool 0 
execute as @s[nbt={OnGround:0b}] at @s if block ~ ~-0.01 ~ #gun:jump run scoreboard players add @s gunJump_bool 1