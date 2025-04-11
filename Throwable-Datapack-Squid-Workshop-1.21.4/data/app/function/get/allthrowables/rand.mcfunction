# draw a throwable
execute store result score v0 V run random value 0..6
execute if score v0 V matches 0 run function app:get/grenade
execute if score v0 V matches 1 run function app:get/molotov
execute if score v0 V matches 2 run function app:get/signal
execute if score v0 V matches 3 run function app:get/smoke
execute if score v0 V matches 4 run function app:get/flash
execute if score v0 V matches 5 run function app:get/turret
execute if score v0 V matches 6 run function app:get/xirang