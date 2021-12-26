# store the range [0, n] in range V first
function gun:classes/gun/quick_random
scoreboard players operation rand V = randraw V
scoreboard players operation rand V %= range V
# after this function a random number between [0, n] is drawn in rand V