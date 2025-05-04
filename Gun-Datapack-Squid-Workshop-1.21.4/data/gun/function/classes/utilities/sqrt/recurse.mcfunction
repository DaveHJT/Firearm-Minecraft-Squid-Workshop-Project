#v0: in_original
#v1: value_begin_of_loop
#v2: value_end_of_loop
#v3: end_condition_checker

#calculate v2=(v0/v1+v1)/2
scoreboard players operation v2 V = v0 V
scoreboard players operation v2 V /= v1 V
scoreboard players operation v2 V += v1 V
scoreboard players operation v2 V /= 2 C
#calculate v3=v2-v1
scoreboard players operation v3 V = v2 V
scoreboard players operation v3 V -= v1 V
#update v1=v2
scoreboard players operation v1 V = v2 V

#check end condition |v3|<=1
execute unless score v3 V matches -1..1 run function gun:classes/utilities/sqrt/recurse