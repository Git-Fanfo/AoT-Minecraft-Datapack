# Carguero
execute as @s[tag=cart] run function moose:shifters/mobs/cart/player
execute as @s[tag=gun,scores={using_carrot=1..}] anchored eyes positioned ^ ^ ^ run function moose:shifters/mobs/cart/attack/shoot
#anchored eyes positioned ^ ^ ^ 