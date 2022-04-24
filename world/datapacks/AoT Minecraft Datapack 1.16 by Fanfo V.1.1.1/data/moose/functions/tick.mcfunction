scoreboard players add segundo time 1

#tellraw @p ["",{"text":"Test ticks: "},{"score":{"name":"segundo","objective":"time"}}]

# Periodista
# -1 es cuando es stop
execute if score gameState counter matches 0 run function moose:auxiliar/periodista/start
execute if score gameState counter matches 1 run function moose:auxiliar/periodista/set
execute if score gameState counter matches 4 run execute if score segundo time matches 20 run function moose:auxiliar/periodista/update

execute if score segundo time matches 20 run function moose:seconds

# Detectar entidades
execute as @e run function moose:selectors/entity