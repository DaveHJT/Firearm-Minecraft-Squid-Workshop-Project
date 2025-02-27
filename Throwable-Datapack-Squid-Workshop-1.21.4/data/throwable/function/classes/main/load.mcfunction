
# scoreboards
scoreboard objectives add throw minecraft.used:minecraft.snowball

scoreboard objectives add throwable dummy

scoreboard objectives add throwable_life dummy


# init settingss
scoreboard objectives add thr_settings dummy

# turret_target: 0.only player   1.player and mobs

# default options
scoreboard players set turret_target thr_settings 1

# constants
scoreboard players set 10 throwable_life 10

#message
tellraw @a {"text":"[Server]: Throwable-Datapack from Squid-Workshop Loaded","italic":true,"color":"gray"}