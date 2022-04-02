#Para buscar un ejemplo busca DeathExample
# Death message
execute as @s if score @s death matches 1.. run function moose:auxiliar/death
# Death message
execute as @s if score @s death matches 0 run scoreboard players set @s death_messages 0