$execute if items entity @s weapon.mainhand * run function gun:classes/$(key)/get/$(mode)
execute unless items entity @s weapon.mainhand * run item replace entity @s weapon.mainhand from entity @s weapon.offhand

item replace entity @s weapon.offhand with minecraft:air