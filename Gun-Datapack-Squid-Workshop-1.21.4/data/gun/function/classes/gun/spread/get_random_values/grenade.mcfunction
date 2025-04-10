#compile argument: get random values: yaw, cos, and hemisphere
execute store result storage firearm:storage arg.yaw float 1 run random value -179..180
execute store result storage firearm:storage arg.cos double 0.001 run random value -1000..1000
data modify storage firearm:storage arg.hem set value 0.001
execute if predicate {"condition":"random_chance","chance":0.5} run data modify storage firearm:storage arg.hem set value -0.001