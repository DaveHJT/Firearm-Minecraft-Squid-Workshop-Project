
# scoreboards
scoreboard objectives add throw minecraft.used:minecraft.snowball

scoreboard objectives add throwable dummy

scoreboard objectives add throwable_life dummy


# init settings
scoreboard objectives add thr_setting dummy

# turret_target: 0.only player   1.player and mobs

# default options
scoreboard players set turret_target thr_setting 1

# constants
scoreboard players set 10 throwable_life 10

#message
tellraw @a {"text":"[Server]: Throwable-Datapack from Squid-Workshop Loaded","italic":true,"color":"gray"}