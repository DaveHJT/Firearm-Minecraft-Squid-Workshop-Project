#compile argument
$execute store result storage firearm:storage arg.spread_x float 0.1 run random value -$(rand)..$(rand)
$execute store result storage firearm:storage arg.spread_y float 0.1 run random value -$(rand)..$(rand)

#spread
function gun:classes/gun/spread/with_arg with storage firearm:storage arg