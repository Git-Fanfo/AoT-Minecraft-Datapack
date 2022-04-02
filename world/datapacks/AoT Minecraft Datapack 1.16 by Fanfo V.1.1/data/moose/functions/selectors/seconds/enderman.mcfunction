scoreboard players add ender_c counter 1

# añadir la tag
tag @s add not_titan

# Cuando es mayor a 7 spawnea un enderman
execute if score ender_c counter matches 40.. run scoreboard players set ender_c counter 0

# Cuando está del 5 al 8 spawnea un titan
execute if score ender_c counter matches 5..8 run execute if block ~ ~-1 ~ grass_block run function moose:titans/spawn
execute if score ender_c counter matches 5..8 run execute if block ~ ~-1 ~ sand run function moose:titans/spawn

# Matar enderman
# 0
execute if score ender_c counter matches 1..14 run tp @s ~ ~-256 ~
# 15
execute if score ender_c counter matches 16..24 run tp @s ~ ~-256 ~
# 25
execute if score ender_c counter matches 26..34 run tp @s ~ ~-256 ~
# 35
execute if score ender_c counter matches 36..39 run tp @s ~ ~-256 ~
#execute unless score ender_c counter matches 15 run tp @s ~ ~-256 ~
#execute unless score ender_c counter matches 25 run tp @s ~ ~-256 ~
#execute unless score ender_c counter matches 35 run tp @s ~ ~-256 ~

