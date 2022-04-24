### EJECUTAR CUANDO SE SPAWNEA UN CERDO

## Si es = 0
# SPAWN TITAN
execute if score spawn_c counter matches 0 run function moose:titans/summon/titan_1
execute if score spawn_c counter matches 1 run function moose:titans/summon/titan_2
execute if score spawn_c counter matches 2 run function moose:titans/summon/titan_4
execute if score spawn_c counter matches 3 run function moose:titans/summon/titan_5
execute if score spawn_c counter matches 4 run function moose:titans/summon/titan_3

#
function moose:titans/kill_spawn

# Incrementar scoreboard
scoreboard players add spawn_c counter 1
#Reset
execute if score spawn_c counter matches 5 run scoreboard players set spawn_c counter 0