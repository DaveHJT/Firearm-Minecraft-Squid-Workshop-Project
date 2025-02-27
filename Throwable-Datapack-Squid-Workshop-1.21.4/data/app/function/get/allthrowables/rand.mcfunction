# draw a throwable
scoreboard players set range V 7
function gun:classes/gun/get_rand
execute if score rand V matches 0 run function app:get/grenade
execute if score rand V matches 1 run function app:get/molotov
execute if score rand V matches 2 run function app:get/signal
execute if score rand V matches 3 run function app:get/smoke
execute if score rand V matches 4 run function app:get/flash
execute if score rand V matches 5 run function app:get/turret
execute if score rand V matches 6 run function app:get/xirang
