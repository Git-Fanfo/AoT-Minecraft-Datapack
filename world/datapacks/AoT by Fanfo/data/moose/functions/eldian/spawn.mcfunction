### EJECUTAR CUANDO SE SPAWNEA UN ALDEANO

## Si es = 0
# SPAWN ELDIAN
execute if score eldian_c counter matches 0 run function moose:eldian/summon/eldian_1
execute if score eldian_c counter matches 1 run function moose:eldian/summon/eldian_2
execute if score eldian_c counter matches 2 run function moose:eldian/summon/eldian_3
execute if score eldian_c counter matches 3 run function moose:eldian/summon/eldian_4
execute if score eldian_c counter matches 4 run function moose:eldian/summon/eldian_5
execute if score eldian_c counter matches 5 run function moose:eldian/summon/eldian_6
execute if score eldian_c counter matches 6 run function moose:eldian/summon/eldian_7
execute if score eldian_c counter matches 7 run function moose:eldian/summon/eldian_8
execute if score eldian_c counter matches 8 run function moose:eldian/summon/eldian_9
execute if score eldian_c counter matches 9 run function moose:eldian/summon/eldian_10

# Matar cerdo
tp @s ~ ~-256 ~

# añadir la tag
tag @s add not_eldian
# Incrementar scoreboard
scoreboard players add eldian_c counter 1
#Reset matches <numero de eldianos - 1>
execute if score eldian_c counter matches 10 run scoreboard players set eldian_c counter 0