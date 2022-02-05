# IDLE
scoreboard players set @s[scores={idle=0}] idle 40
scoreboard players set @s[scores={atk=0}] atk 70
scoreboard players set @s[scores={walk=0}] walk 58

execute if entity @s[tag=attack] run function moose:titans/mobs/1/animate/attack
execute if entity @s[tag=!attack,tag=walk] run function moose:titans/mobs/1/animate/walk
execute if entity @s[tag=!attack,tag=!walk] run function moose:titans/mobs/1/animate/idle

scoreboard players remove @s[scores={idle=1..40}] idle 1
scoreboard players remove @s[scores={atk=1..70}] atk 1
scoreboard players remove @s[scores={walk=1..58}] walk 1
