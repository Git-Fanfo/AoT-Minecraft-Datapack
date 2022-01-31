### EJECUTAR CUANDO SE SPAWNEA UN ALDEANO

## Si es = 0
# SPAWN ELDIAN
execute if score eldian_c counter matches 0 run function moose:eldian/summon/eldian_1
execute if score eldian_c counter matches 1 run function moose:eldian/summon/eldian_2
execute if score eldian_c counter matches 2 run function moose:eldian/summon/eldian_3
execute if score eldian_c counter matches 3 run function moose:eldian/summon/eldian_4
execute if score eldian_c counter matches 4 run function moose:eldian/summon/eldian_5

# Matar cerdo
tp @s ~ ~-256 ~

# añadir la tag
tag @s add not_eldian
# Incrementar scoreboard
scoreboard players add eldian_c counter 1
#Reset matches <numero de eldianos - 1>
execute if score eldian_c counter matches 5 run scoreboard players set eldian_c counter 0