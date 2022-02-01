# IDLE
scoreboard players set @e[tag=body,scores={idle=0}] idle 40
scoreboard players set @e[tag=body,scores={atk=0}] atk 70
scoreboard players set @e[tag=body,scores={walk=0}] walk 58

execute if entity @s[tag=attack] run function moose:mob1/animate/attack
execute if entity @s[tag=!attack,tag=walk] run function moose:mob1/animate/walk
execute if entity @s[tag=!attack,tag=!walk] run function moose:mob1/animate/idle

scoreboard players remove @e[tag=body,scores={idle=1..40}] idle 1
scoreboard players remove @e[tag=body,scores={atk=1..70}] atk 1
scoreboard players remove @e[tag=body,scores={walk=1..58}] walk 1
