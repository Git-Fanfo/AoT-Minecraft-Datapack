# IDLE
scoreboard players set @s[scores={idle=0}] idle 40
scoreboard players set @s[scores={atk=0}] atk 70
scoreboard players set @s[scores={walk=0}] walk 58

# mob1
execute if entity @s[tag=mob1,tag=attack] run function moose:titans/mobs/1/animate/attack
execute if entity @s[tag=mob1,tag=attack_2] run function moose:titans/mobs/1/animate/attack_2
execute if entity @s[tag=mob1,tag=!attack,tag=!attack_2,tag=walk] run function moose:titans/mobs/1/animate/walk
execute if entity @s[tag=mob1,tag=!attack,tag=!attack_2,tag=!walk] run function moose:titans/mobs/1/animate/idle

# mob2
execute if entity @s[tag=mob2,tag=attack] run function moose:titans/mobs/2/animate/attack
execute if entity @s[tag=mob2,tag=attack_2] run function moose:titans/mobs/2/animate/attack_2
execute if entity @s[tag=mob2,tag=!attack,tag=!attack_2,tag=walk] run function moose:titans/mobs/2/animate/walk
execute if entity @s[tag=mob2,tag=!attack,tag=!attack_2,tag=!walk] run function moose:titans/mobs/2/animate/idle

# mob3
execute if entity @s[tag=mob3,tag=attack] run function moose:titans/mobs/3/animate/attack
execute if entity @s[tag=mob3,tag=attack_2] run function moose:titans/mobs/3/animate/attack_2
execute if entity @s[tag=mob3,tag=!attack,tag=!attack_2,tag=walk] run function moose:titans/mobs/3/animate/walk
execute if entity @s[tag=mob3,tag=!attack,tag=!attack_2,tag=!walk] run function moose:titans/mobs/3/animate/idle

# mob4
execute if entity @s[tag=mob4,tag=attack] run function moose:titans/mobs/4/animate/attack
#execute if entity @s[tag=mob3,tag=attack_2] run function moose:titans/mobs/3/animate/attack_2
execute if entity @s[tag=mob4,tag=!attack,tag=!attack_2,tag=walk] run function moose:titans/mobs/4/animate/walk
execute if entity @s[tag=mob4,tag=!attack,tag=!attack_2,tag=!walk] run function moose:titans/mobs/4/animate/idle



scoreboard players remove @s[scores={idle=1..40}] idle 1
scoreboard players remove @s[scores={atk=1..70}] atk 1
scoreboard players remove @s[scores={walk=1..58}] walk 1
